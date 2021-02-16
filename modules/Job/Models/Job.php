<?php
namespace Modules\Job\Models;
use App\Currency;
use Illuminate\Http\Response;
use Illuminate\Support\Arr;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Modules\Booking\Models\Bookable;
use Modules\Booking\Models\Booking;
use Modules\Core\Models\Categories;
use Modules\Core\Models\SEO;
use Modules\Core\Models\Terms;
use Modules\Location\Models\Location;
use Modules\Media\Helpers\FileHelper;
use Modules\Review\Models\Review;
use Illuminate\Database\Eloquent\SoftDeletes;
use Modules\Job\Models\JobTranslation;
use Modules\User\Models\UserWishList;
class Job extends Bookable
{
    use SoftDeletes;
    protected $table                              = 'bravo_jobs';
    public    $type                               = 'Job';
    public    $checkout_booking_detail_file       = 'Job::frontend.booking.detail';
    public    $checkout_booking_detail_modal_file = 'Job::frontend.booking.detail-modal';
    public    $email_new_booking_file             = 'Job::emails.new_booking_detail';
    protected $fillable      = [
        'title',
        'content',
        'status',
        'job_type',
    ];
    protected $slugField     = 'slug';
    protected $slugFromField = 'title';
    protected $seo_type      = 'Job';
    protected $casts = [
    ];
    protected $bookingClass;
    protected $reviewClass;
    protected $JobDateClass;
    protected $JobTermClass;
    protected $JobTranslationClass;
    protected $userWishListClass;
    protected $termClass;
    protected $categoryClass;
    protected $roomClass;
    protected $tmp_rooms = [];
    public function __construct(array $categories = [])
    {
        parent::__construct($categories);
        $this->bookingClass = Booking::class;
        $this->reviewClass = Review::class;
        $this->JobTermClass = JobTerm::class;
        $this->JobTranslationClass = JobTranslation::class;
        $this->userWishListClass = UserWishList::class;
        $this->termClass = Terms::class;
        $this->categoryClass = Categories::class;
        $this->roomClass = JobRoom::class;
    }
    public static function getModelName()
    {
        return __("Job");
    }
     /**
     *get All published Job count
     *  
     */ 
    public static function getJobCount()
    {
        return Job::where('status','=','publish')->count();
    }
   
    public static function getTableName()
    {
        return with(new static)->table;
    }
    /**
     * Get SEO fop page list
     *
     * @return mixed
     */
    public function jobtype()
    {
        return $this->type;
    }

    static public function getSeoMetaForPageList()
    {
        $meta['seo_title'] = __("Search for Spaces");
        if (!empty($title = setting_item_with_lang("job_page_list_seo_title", false))) {
            $meta['seo_title'] = $title;
        } else if (!empty($title = setting_item_with_lang("job_page_search_title"))) {
            $meta['seo_title'] = $title;
        }
        $meta['seo_image'] = null;
        if (!empty($title = setting_item("job_page_list_seo_image"))) {
            $meta['seo_image'] = $title;
        } else if (!empty($title = setting_item("job_page_search_banner"))) {
            $meta['seo_image'] = $title;
        }
        $meta['seo_desc'] = setting_item_with_lang("job_page_list_seo_desc");
        $meta['seo_share'] = setting_item_with_lang("job_page_list_seo_share");
        $meta['full_url'] = url(config('job.job_route_prefix'));
        return $meta;
    }
    public function terms()
    {
        return $this->hasMany($this->JobTermClass, "target_id");
    }
    public function termsByCategoryInListingPage()
    {
        $category = setting_item("job_category_show_in_listing_page", 0);
        return $this->hasManyThrough($this->termClass, $this->JobTermClass, 'target_id', 'id', 'id', 'term_id')->where('bravo_terms.attr_id', $category)->with(['translations']);
    }
    public function getCategoryInListingPage()
    {
        $category_id = setting_item("job_category_show_in_listing_page", 0);
        $category = $this->categoryClass::find($category_id);
        return $category ?? false;
    }
    public function getDetailUrl($include_param = true)
    {
        $param = [];
        if ($include_param) {
            if (!empty($date = request()->input('date'))) {
                $dates = explode(" - ", $date);
                if (!empty($dates)) {
                    $param['start'] = $dates[0] ?? "";
                    $param['end'] = $dates[1] ?? "";
                }
            }
            if (!empty($adults = request()->input('adults'))) {
                $param['adults'] = $adults;
            }
            if (!empty($children = request()->input('children'))) {
                $param['children'] = $children;
            }
            if (!empty($room = request()->input('room'))) {
                $param['room'] = $room;
            }
        }
        $urlDetail = app_get_locale(false, false, '/') . config('job.job_route_prefix') . "/" . $this->slug;
        if (!empty($param)) {
            $urlDetail .= "?" . http_build_query($param);
        }
        return url($urlDetail);
    }
    public static function getLinkForPageSearch($locale = false, $param = [])
    {
        return url(app_get_locale(false, false, '/') . config('job.job_route_prefix') . "?" . http_build_query($param));
    }
    public function getGallery($featuredIncluded = false)
    {
        $list_item = [];
        if ($featuredIncluded and $this->image_id) {
            $list_item[] = [
                'large' => FileHelper::url($this->image_id, 'full'),
                'thumb' => FileHelper::url($this->image_id, 'thumb')
            ];
        }
        return $list_item;
    }
    public function getEditUrl()
    {
        return url(route('job.admin.edit', ['id' => $this->id]));
    }
    public function fill(array $categories)
    {
        if (!empty($categories)) {
            foreach ($this->fillable as $item) {
                $categories[$item] = $categories[$item] ?? null;
            }
        }
        return parent::fill($categories); // TODO: Change the autogenerated stub
    }
    public function isBookable()
    {
        if ($this->status != 'publish')
            return false;
        return parent::isBookable();
    }
    public function addToCart(Request $request)
    {
        $res = $this->addToCartValidate($request);
        if($res !== true) return $res;
        // Add Booking
        $total_guests = $request->input('adults') + $request->input('children');
        $discount = 0;
        $start_date = new \DateTime($request->input('start_date'));
        $end_date = new \DateTime($request->input('end_date'));
	    $total = 0;
        $total_room_selected = 0;
        if (!empty($this->tmp_selected_rooms)) {
            foreach ($this->tmp_selected_rooms as $room) {
                if (isset($this->tmp_rooms_by_id[$room['id']])) {
                    $total += $this->tmp_rooms_by_id[$room['id']]->tmp_price * $room['number_selected'];
                    $total_room_selected += $room['number_selected'];
                }
            }
        }
        $duration_in_hour = max(1,ceil(($end_date->getTimestamp() - $start_date->getTimestamp()) / HOUR_IN_SECONDS ) );
        //Buyer Fees
        $total_before_fees = $total;
        $list_fees = setting_item('job_booking_buyer_fees');
        if (!empty($list_fees)) {
            $total_fee = 0;
            $lists = json_decode($list_fees, true);
            foreach ($lists as $item) {
                //for Fixed
                $fee_price = $item['price'];
                // for Percent
                if(!empty($item['unit']) and $item['unit'] == "percent"){
                    $fee_price = ( $total_before_fees / 100 ) * $item['price'];
                }
                if (!empty($item['per_person']) and $item['per_person'] == "on") {
                    $total_fee += $fee_price * $total_guests;
                } else {
                    $total_fee += $fee_price;
                }
            }
            $total += $total_fee;
        }
        $booking = new $this->bookingClass();
        $booking->status = 'draft';
        $booking->object_id = $request->input('service_id');
        $booking->object_model = $request->input('service_type');
        $booking->vendor_id = $this->create_user;
        $booking->customer_id = Auth::id();
        $booking->total = $total;
        $booking->total_guests = $total_guests;
        $booking->start_date = $start_date->format('Y-m-d H:i:s');
        $booking->end_date = $end_date->format('Y-m-d H:i:s');
        $booking->buyer_fees = $list_fees ?? '';
        $booking->total_before_fees = $total_before_fees;
        $booking->calculateCommission();
        if($this->isDepositEnable())
        {
            $booking_deposit_fomular = $this->getDepositFomular();
            $tmp_price_total = $booking->total;
            if($booking_deposit_fomular == "deposit_and_fee"){
                $tmp_price_total = $booking->total_before_fees;
            }
            switch ($this->getDepositType()){
                case "percent":
                    $booking->deposit = $tmp_price_total * $this->getDepositAmount() / 100;
                    break;
                default:
                    $booking->deposit = $this->getDepositAmount();
                    break;
            }
            if($booking_deposit_fomular == "deposit_and_fee"){
                $booking->deposit = $booking->deposit + $total_fee;
            }
        }
        $check = $booking->save();
        if ($check) {
            $this->bookingClass::clearDraftBookings();
            $booking->addMeta('duration', $this->duration);
            $booking->addMeta('base_price', $this->price);
            $booking->addMeta('guests', $total_guests);
            $booking->addMeta('adults', $request->input('adults'));
            $booking->addMeta('children', $request->input('children'));
            if($this->isDepositEnable())
            {
                $booking->addMeta('deposit_info',[
                    'type'=>$this->getDepositType(),
                    'amount'=>$this->getDepositAmount(),
                    'fomular'=>$this->getDepositFomular(),
                ]);
            }
            // Add Room Booking
            if (!empty($this->tmp_selected_rooms)) {
                foreach ($this->tmp_selected_rooms as $room) {
                    if (isset($this->tmp_rooms_by_id[$room['id']])) {
                        $JobRoomBooking = new JobRoomBooking();
                        $JobRoomBooking->fillByAttr([
                            'room_id',
                            'parent_id',
                            'start_date',
                            'end_date',
                            'number',
                            'booking_id',
                            'price'
                        ], [
                            'room_id'    => $room['id'],
                            'parent_id'  => $this->id,
                            'start_date' => $start_date->format('Y-m-d H:i:s'),
                            'end_date'   => $end_date->format('Y-m-d H:i:s'),
                            'number'     => $room['number_selected'],
                            'booking_id' => $booking->id,
                            'price'      => $this->tmp_rooms_by_id[$room['id']]->tmp_price
                        ]);
                        $JobRoomBooking->save();
                    }
                }
            }
            return $this->sendSuccess([
                'url' => $booking->getCheckoutUrl(),
                'booking_code' => $booking->code,
            ]);
        }
        return $this->sendError(__("Can not check availability"));
    }
    public function addToCartValidate(Request $request)
    {
        $rules = [
            'rooms'      => 'required',
            'adults'     => 'required|integer|min:1',
            'children'   => 'required|integer|min:0',
            'start_date' => 'required|date_format:Y-m-d',
            'end_date'   => 'required|date_format:Y-m-d'
        ];
        // Validation
        if (!empty($rules)) {
            $validator = Validator::make($request->all(), $rules);
            if ($validator->fails()) {
                return $this->sendError('', ['errors' => $validator->errors()]);
            }
        }
        $total_rooms = array_sum(array_column($request->input('rooms', 'number_selected'), "number_selected"));
        $selected_rooms = Arr::where($request->input('rooms'), function ($value, $key) {
            return !empty($value['number_selected']) and $value['number_selected'] > 0;
        });
        if ($total_rooms <= 0 or empty($selected_rooms)) {
            return $this->sendError(__("Please select at lease one room"));
        }
        $start_date = $request->input('start_date');
        $end_date = $request->input('end_date');
        if (strtotime($start_date) < strtotime(date('Y-m-d 00:00:00')) or strtotime($end_date) - strtotime($start_date) < DAY_IN_SECONDS) {
            return $this->sendError(__("Your selected dates are not valid"));
        }
        if (!$this->checkBusyDate($start_date, $end_date)) {
            return $this->sendError(__("Your selected dates are not valid"));
        }
        // Validate Date and Booking
        $rooms = $this->getRoomsAvailability(request()->input());
        $rooms_by_id = [];
        if (empty($rooms))
            return $this->sendError(__("There is no room available at your selected dates"));
        foreach ($this->tmp_rooms as $room) {
            $rooms_by_id[$room['id']] = $room;
        }
        $rooms_ids = array_column($rooms, 'id');
        foreach ($selected_rooms as $room) {
            if (!in_array($room['id'], $rooms_ids) or $room['number_selected'] > $rooms_by_id[$room['id']]->tmp_number) {
                return $this->sendError(__("Your selected room is not available. Please search again"));
            }
        }
        $this->tmp_rooms_by_id = $rooms_by_id;
        $this->tmp_selected_rooms = $selected_rooms;
        return true;
    }
    public function isAvailableInRanges($start_date, $end_date)
    {
        $days = max(1, floor((strtotime($end_date) - strtotime($start_date)) / DAY_IN_SECONDS));
        if ($this->default_state) {
            $notAvailableDates = $this->JobDateClass::query()->where([
                [
                    'start_date',
                    '>=',
                    $start_date
                ],
                [
                    'end_date',
                    '<=',
                    $end_date
                ],
                [
                    'active',
                    '0'
                ]
            ])->count('id');
            if ($notAvailableDates)
                return false;
        } else {
            $availableDates = $this->JobDateClass::query()->where([
                [
                    'start_date',
                    '>=',
                    $start_date
                ],
                [
                    'end_date',
                    '<=',
                    $end_date
                ],
                [
                    'active',
                    '=',
                    1
                ]
            ])->count('id');
            if ($availableDates <= $days)
                return false;
        }
        // Check Order
        $bookingInRanges = $this->bookingClass::getAcceptedBookingQuery($this->id, $this->type)->where([
            [
                'end_date',
                '>=',
                $start_date
            ],
            [
                'start_date',
                '<=',
                $end_date
            ],
        ])->count('id');
        if ($bookingInRanges) {
            return false;
        }
        return true;
    }
    public function getBookingData()
    {
        if (!empty($start = request()->input('start'))) {
            $start_html = display_date($start);
            $end_html = request()->input('end') ? display_date(request()->input('end')) : "";
            $date_html = $start_html . '<i class="fa fa-long-arrow-right" style="font-size: inherit"></i>' . $end_html;
        }
        $booking_data = [
            'id'              => $this->id,
            'person_types'    => [],
            'max'             => 0,
            'open_hours'      => [],
            'minDate'         => date('m/d/Y'),
            'max_guests'      => $this->max_guests ?? 1,
            'buyer_fees'      => [],
            'i18n'            => [
                'date_required' => __("Please select check-in and check-out date"),
                "rooms"         => __('rooms'),
                "room"          => __('room'),
            ],
            'start_date'      => request()->input('start') ?? "",
            'start_date_html' => $date_html ?? __('Please select'),
            'end_date'        => request()->input('end') ?? "",
            'deposit'=>$this->isDepositEnable(),
            'deposit_type'=>$this->getDepositType(),
            'deposit_amount'=>$this->getDepositAmount(),
            'deposit_fomular'=>$this->getDepositFomular(),
            'is_form_enquiry_and_book'=> $this->isFormEnquiryAndBook(),
            'enquiry_type'=> $this->getBookingEnquiryType(),
        ];
        if (!empty($adults = request()->input('adults'))) {
            $booking_data['adults'] = $adults;
        }
        if (!empty($children = request()->input('children'))) {
            $booking_data['children'] = $children;
        }
        if (!empty($children = request()->input('room'))) {
            $booking_data['room'] = $children;
        }
        $list_fees = setting_item_array('job_booking_buyer_fees');
        if (!empty($list_fees)) {
            foreach ($list_fees as $item) {
                $item['type_name'] = $item['name_' . app()->getLocale()] ?? $item['name'] ?? '';
                $item['type_desc'] = $item['desc_' . app()->getLocale()] ?? $item['desc'] ?? '';
                $item['price_type'] = '';
                if (!empty($item['per_person']) and $item['per_person'] == 'on') {
                    $item['price_type'] .= '/' . __('guest');
                }
                $booking_data['buyer_fees'][] = $item;
            }
        }
        return $booking_data;
    }
    public static function searchForMenu($q = false)
    {
        $query = static::select('id', 'title as name');
        if (strlen($q)) {
            $query->where('title', 'like', "%" . $q . "%");
        }
        $a = $query->limit(10)->get();
        return $a;
    }
    public static function getMinMaxPrice()
    {
        $model = parent::selectRaw('MIN( price ) AS min_price ,
                                    MAX( price ) AS max_price ')->where("status", "publish")->first();
        if (empty($model->min_price) and empty($model->max_price)) {
            return [
                0,
                100
            ];
        }
        return [
            $model->min_price,
            $model->max_price
        ];
    }
    public function getReviewEnable()
    {
        return setting_item("job_enable_review", 0);
    }
    public function getReviewApproved()
    {
        return setting_item("job_review_approved", 0);
    }
    public function check_enable_review_after_booking()
    {
        $option = setting_item("job_enable_review_after_booking", 0);
        if ($option) {
            $number_review = $this->reviewClass::countReviewByServiceID($this->id, Auth::id()) ?? 0;
            $number_booking = $this->bookingClass::countBookingByServiceID($this->id, Auth::id()) ?? 0;
            if ($number_review >= $number_booking) {
                return false;
            }
        }
        return true;
    }
    public function check_allow_review_after_making_completed_booking()
    {
        $options = setting_item("job_allow_review_after_making_completed_booking", false);
        if (!empty($options)) {
            $status = json_decode($options);
            $booking = $this->bookingClass::select("status")->where("object_id", $this->id)->where("object_model", $this->type)->where("customer_id", Auth::id())->orderBy("id", "desc")->first();
            $booking_status = $booking->status ?? false;
            if (!in_array($booking_status, $status)) {
                return false;
            }
        }
        return true;
    }
    public static function getReviewStats()
    {
        $reviewStats = [];
        if (!empty($list = setting_item("job_review_stats", []))) {
            $list = json_decode($list, true);
            foreach ($list as $item) {
                $reviewStats[] = $item['title'];
            }
        }
        return $reviewStats;
    }
    public function getReviewDataCategory()
    {
        $list_score = [
            'score_total'  => 0,
            'score_text'   => __("Not rated"),
            'total_review' => 0,
            'rate_score'   => [],
        ];
        $dataTotalReview = $this->reviewClass::selectRaw(" AVG(rate_number) as score_total , COUNT(id) as total_review ")->where('object_id', $this->id)->where('object_model', $this->type)->where("status", "approved")->first();
        if (!empty($dataTotalReview->score_total)) {
            $list_score['score_total'] = number_format($dataTotalReview->score_total, 1);
            $list_score['score_text'] = Review::getDisplayTextScoreByLever(round($list_score['score_total']));
        }
        if (!empty($dataTotalReview->total_review)) {
            $list_score['total_review'] = $dataTotalReview->total_review;
        }
        $list_data_rate = $this->reviewClass::selectRaw('COUNT( CASE WHEN rate_number = 5 THEN rate_number ELSE NULL END ) AS rate_5,
                                                            COUNT( CASE WHEN rate_number = 4 THEN rate_number ELSE NULL END ) AS rate_4,
                                                            COUNT( CASE WHEN rate_number = 3 THEN rate_number ELSE NULL END ) AS rate_3,
                                                            COUNT( CASE WHEN rate_number = 2 THEN rate_number ELSE NULL END ) AS rate_2,
                                                            COUNT( CASE WHEN rate_number = 1 THEN rate_number ELSE NULL END ) AS rate_1 ')->where('object_id', $this->id)->where('object_model', $this->type)->where("status", "approved")->first()->toArray();
        for ($rate = 5; $rate >= 1; $rate--) {
            if (!empty($number = $list_data_rate['rate_' . $rate])) {
                $percent = ($number / $list_score['total_review']) * 100;
            } else {
                $percent = 0;
            }
            $list_score['rate_score'][$rate] = [
                'title'   => $this->reviewClass::getDisplayTextScoreByLever($rate),
                'total'   => $number,
                'percent' => round($percent),
            ];
        }
        return $list_score;
    }
    /**
     * Get Score Review
     *
     * Using for loop Job
     */
    public function getScoreReview()
    {
        $job_id = $this->id;
        $list_score = Cache::rememberForever('review_' . $this->type . '_' . $job_id, function () use ($job_id) {
            $dataReview = $this->reviewClass::selectRaw(" AVG(rate_number) as score_total , COUNT(id) as total_review ")->where('object_id', $job_id)->where('object_model', "Job")->where("status", "approved")->first();
            $score_total = !empty($dataReview->score_total) ? number_format($dataReview->score_total, 1) : 0;
            return [
                'score_total'  => $score_total,
                'total_review' => !empty($dataReview->total_review) ? $dataReview->total_review : 0,
            ];
        });
        $list_score['review_text'] = $list_score['score_total'] ? Review::getDisplayTextScoreByLever(round($list_score['score_total'])) : __("Not rated");
        return $list_score;
    }
    public function getNumberReviewsInService($status = false)
    {
        return $this->reviewClass::countReviewByServiceID($this->id, false, $status, $this->type) ?? 0;
    }
    public function getReviewList(){
        return $this->reviewClass::select(['id','title','content','rate_number','author_ip','status','created_at','vendor_id','create_user'])->where('object_id', $this->id)->where('object_model', 'Job')->where("status", "approved")->orderBy("id", "desc")->with('author')->paginate(setting_item('job_review_number_per_page', 5));
    }
    public function getNumberServiceInLocation($location)
    {
        $number = 0;
        if (!empty($location)) {
            $number = parent::join('bravo_locations', function ($join) use ($location) {
                $join->on('bravo_locations.id', '=', $this->table . '.location_id')->where('bravo_locations._lft', '>=', $location->_lft)->where('bravo_locations._rgt', '<=', $location->_rgt);
            })->where($this->table . ".status", "publish")->with(['translations'])->count($this->table . ".id");
        }
        if (empty($number))
            return false;
        if ($number > 1) {
            return __(":number Jobs", ['number' => $number]);
        }
        return __(":number Job", ['number' => $number]);
    }
    /**
     * @param $from
     * @param $to
     * @return \Illuminate\Database\Eloquent\Builder[]|\Illuminate\Database\Eloquent\Collection
     */
    public function getBookingsInRange($from, $to)
    {
        $query = $this->bookingClass::query();
        $query->whereNotIn('status', ['draft']);
        $query->where('start_date', '<=', $to)->where('end_date', '>=', $from)->take(50);
        $query->where('object_id', $this->id);
        $query->where('object_model', $this->type);
        return $query->orderBy('id', 'asc')->get();
    }
    public function saveCloneByID($clone_id)
    {
        $old = parent::find($clone_id);
        if (empty($old))
            return false;
        $selected_terms = $old->terms->pluck('term_id');
        $old->title = $old->title . " - Copy";
        $new = $old->replicate();
        $new->save();
        //Terms
        foreach ($selected_terms as $term_id) {
            $this->JobTermClass::firstOrCreate([
                'term_id'   => $term_id,
                'target_id' => $new->id
            ]);
        }
        //Language
        $langs = $this->JobTranslationClass::where("origin_id", $old->id)->get();
        if (!empty($langs)) {
            foreach ($langs as $lang) {
                $langNew = $lang->replicate();
                $langNew->origin_id = $new->id;
                $langNew->save();
                $langSeo = SEO::where('object_id', $lang->id)->where('object_model', $lang->getSeoType() . "_" . $lang->locale)->first();
                if (!empty($langSeo)) {
                    $langSeoNew = $langSeo->replicate();
                    $langSeoNew->object_id = $langNew->id;
                    $langSeoNew->save();
                }
            }
        }
        //SEO
        $metaSeo = SEO::where('object_id', $old->id)->where('object_model', $this->seo_type)->first();
        if (!empty($metaSeo)) {
            $metaSeoNew = $metaSeo->replicate();
            $metaSeoNew->object_id = $new->id;
            $metaSeoNew->save();
        }
    }
    public function hasWishList()
    {
        return $this->hasOne($this->userWishListClass, 'object_id', 'id')->where('object_model', $this->type)->where('user_id', Auth::id() ?? 0);
    }
    public function isWishList()
    {
        if (Auth::id()) {
            if (!empty($this->hasWishList) and !empty($this->hasWishList->id)) {
                return 'active';
            }
        }
        return '';
    }
    public static function getServiceIconFeatured()
    {
        return "fa fa-building-o";
    }
    public function rooms()
    {
        return $this->hasMany($this->roomClass, 'parent_id')->where('status', "publish")->with("translations");
    }
    public function getRoomsAvailability($filters = [])
    {
        $rooms = $this->rooms;
        $res = [];
        $this->tmp_rooms = [];
        foreach ($rooms as $room) {
            if ($room->isAvailableAt($filters)) {
                $translation = $room->translateOrOrigin(app()->getLocale());
                $res[] = [
                    'id'              => $room->id,
                    'title'           => $translation->title,
                    'price'           => $room->tmp_price ?? 0,
                    'size_html'       => $room->size ? size_unit_format($room->size) : '',
                    'beds_html'       => $room->beds ? 'x' . $room->beds : '',
                    'adults_html'     => $room->adults ? 'x' . $room->adults : '',
                    'children_html'   => $room->children ? 'x' . $room->children : '',
                    'number_selected' => 0,
                    'number'          => (int)$room->tmp_number ?? 0,
                    'image'           => $room->image_id ? get_file_url($room->image_id, 'medium') : '',
                    'tmp_number'      => $room->tmp_number,
                    'price_html'      => format_money($room->tmp_price) . '<span class="unit">/' . ($room->tmp_nights ? __(':count nights', ['count' => $room->tmp_nights]) : __(":count night", ['count' => $room->tmp_nights])) . '</span>',
                    'price_text'      => format_money($room->tmp_price) . '/' . ($room->tmp_nights ? __(':count nights', ['count' => $room->tmp_nights]) : __(":count night", ['count' => $room->tmp_nights]))
                ];
                $this->tmp_rooms[] = $room;
            }
        }
        return $res;
    }
    public static function isEnable()
    {
        return setting_item('job_disable') == false;
    }
    public function isDepositEnable(){
        return (setting_item('job_deposit_enable') and setting_item('job_deposit_amount'));
    }
    public function getDepositAmount(){
        return setting_item('job_deposit_amount');
    }
    public function getDepositType(){
        return setting_item('job_deposit_type');
    }
    public function getDepositFomular(){
        return setting_item('job_deposit_fomular','default');
    }
    public function detailBookingEachDate($booking){
	    $rooms = \Modules\Job\Models\JobRoomBooking::getByBookingId($booking->id);
	    $roomsIds = $rooms->pluck('room_id')->toArray();
	    $roomsNumber = $rooms->pluck('number','room_id')->toArray();
	    $startDate = $booking->start_date;
	    $endDate = $booking->end_date;
	    $query = JobRoomDate::query();
	    $query->whereIn('target_id',$roomsIds);
	    $query->where('start_date','>=',date('Y-m-d H:i:s',strtotime($startDate)));
	    $query->where('end_date','<',date('Y-m-d H:i:s',strtotime($endDate)));
	    $roomsDates = $query->get();
	    $allDates=[];
	    foreach ($rooms as $r=> $room){
            $period = periodDate($startDate,$endDate);
            foreach ($period as $dt){
		    	$price = $room->room->price * $room->number;
			    $date['price'] =$price;
			    $date['price_html'] = format_money($price);
			    $date['from'] = $dt->getTimestamp();
			    $date['from_html'] = $dt->format('d/m/Y');
			    $date['to'] = $dt->getTimestamp();
			    $date['to_html'] = $dt->format('d/m/Y');
			    $allDates[$room->room_id][$dt->format('d/m/Y')] = $date;
		    }
	    }
	    if(!empty($roomsDates))
	    {
		    foreach ($roomsDates as $roomsDate)
		    {
			    $startDate = strtotime($roomsDate->start_date);
			    $price = $roomsDate->price * $roomsNumber[$roomsDate->target_id]??1;
			    $date['price'] = $price;
			    $date['price_html'] = format_money($price);
			    $date['from'] = $startDate;
			    $date['from_html'] = date('d/m/Y',$startDate);
			    $date['to'] = $startDate;
			    $date['to_html'] = date('d/m/Y',($startDate));
			    $allDates[$roomsDate->target_id][date('Y-m-d',$startDate)] = $date;
		    }
	    }
	    return $allDates;
    }
    public static function isEnableEnquiry(){
        if(!empty(setting_item('booking_enquiry_for_Job'))){
            return true;
        }
        return false;
    }
    public static function isFormEnquiryAndBook(){
        $check = setting_item('booking_enquiry_for_Job');
        if(!empty($check) and setting_item('booking_enquiry_type') == "booking_and_enquiry" ){
            return true;
        }
        return false;
    }
    public static function getBookingEnquiryType(){
        $check = setting_item('booking_enquiry_for_Job');
        if(!empty($check)){
            if( setting_item('booking_enquiry_type') == "only_enquiry" ) {
                return "enquiry";
            }
        }
        return "book";
    }
    public static function getCount($job_type = '')
    {   
        return Job::where('status','publish')->where('job_type',$job_type)->count();
    }
    public static function search(Request $request)
    {
        $model_Job = parent::query()->select("bravo_jobs.*");
        $model_Job->where("bravo_jobs.status", "publish");

        if (!empty($price_range = $request->query('price_range'))) {
            $pri_from = explode(";", $price_range)[0];
            $pri_to = explode(";", $price_range)[1];
            $raw_sql_min_max = "(  bravo_jobs.price >= ? ) 
                            AND (  bravo_jobs.price <= ? )";
            $model_Job->WhereRaw($raw_sql_min_max,[$pri_from,$pri_to]);
        }
        $location_id = $request->query('location_id');

        // if($location_id = $request->query('location_id'))
        // {
        //     $location_id[] = $location_id;
        // }

        if (is_array($location_id) && !empty($location_id)) {
            $model_Job->whereIn('location_id', $location_id);
        }
        $category_id = $request->query('category_id');
        // if($category_id = $request->query('category_id'))
        // {
        //     $category_id[] = $category_id;
        // }
        if (is_array($category_id) && !empty($category_id)) {
            $model_Job->whereIn('category_id', $category_id);
        }
        $job_type = $request->query('job_type');
        // if($job_type = $request->query('job_type'))
        // {
        //     $job_type[] = $job_type;
        // }
        if (is_array($job_type) && !empty($job_type)) {
            $model_Job->whereIn('job_type', $job_type);
        }
        $review_scores = $request->query('review_score');
        if (is_array($review_scores) && !empty($review_scores)) {
            $where_review_score = [];
            foreach ($review_scores as $number){
                $where_review_score[] = " ( bravo_jobs.review_score >= {$number} AND bravo_jobs.review_score <= {$number}.9 ) ";
            }
            $sql_where_review_score = " ( " . implode("OR", $where_review_score) . " )  ";
            $model_Job->WhereRaw($sql_where_review_score);
        }
        if (!empty($job_name = $request->query('s'))) {
            $model_Job->where('title', 'LIKE', '%' . $job_name . '%');
        }
        if(!empty( $service_name = $request->query("service_name") )){
            if( setting_item('site_enable_multi_lang') && setting_item('site_locale') != app()->getLocale() ){
                $model_Job->leftJoin('bravo_job_translations', function ($join) {
                    $join->on('bravo_jobs.id', '=', 'bravo_job_translations.origin_id');
                });
                $model_Job->where('bravo_job_translations.title', 'LIKE', '%' . $service_name . '%');
            }else{
                $model_Job->where('bravo_jobs.title', 'LIKE', '%' . $service_name . '%');
            }
        }
        if(!empty($lat = $request->query('map_lat')) and !empty($lgn = $request->query('map_lgn'))){
//            ORDER BY (POW((lon-$lon),2) + POW((lat-$lat),2))";
            $model_Job->orderByRaw("POW((bravo_jobs.map_lng-".$lgn."),2) + POW((bravo_jobs.map_lat-".$lat."),2)");
        }
        $orderby = $request->input("orderby");
        switch ($orderby){
            case "price_low_high":
                $model_Job->orderBy("tmp_min_price", "asc");
                break;
            case "price_high_low":
                $model_Job->orderBy("tmp_min_price", "desc");
                break;
            case "rate_high_low":
                $model_Job->orderBy("review_score", "desc");
                break;
            default:
                $model_Job->orderBy("id", "desc");
        }
        $model_Job->groupBy("bravo_jobs.id");
        if(!empty($request->query('limit'))){
            $limit = $request->query('limit');
        }else{
            $limit = !empty(setting_item("job_page_limit_item"))? setting_item("job_page_limit_item") : 9;
        }
        $list = $model_Job->with(['location','hasWishList','translations','termsByCategoryInListingPage'])->paginate($limit);
        return $list;
    }
    public function dataForApi($forSingle = false){
        $data = parent::dataForApi($forSingle);
        if($forSingle){
            $data['review_score'] = $this->getReviewDataCategory();
            $data['review_stats'] = $this->getReviewStats();
            $data['review_lists'] = $this->getReviewList();
            $data['start_at'] = $this->start_at;
            $data['duration'] = $this->duration;
            $data['booking_fee'] = setting_item_array('job_booking_buyer_fees');
            if (!empty($location_id = $this->location_id)) {
                $related =  parent::query()->where('location_id', $location_id)->where("status", "publish")->take(4)->whereNotIn('id', [$this->id])->with(['location','translations','hasWishList'])->get();
                $data['related'] = $related->map(function ($related) {
                        return $related->dataForApi();
                    }) ?? null;
            }
            $data['terms'] = Terms::getTermsByIdForAPI($this->terms->pluck('term_id'));
        }else{
            $data['review_score'] = $this->getScoreReview();
        }
        return $data;
    }
    static public function getClassAvailability()
    {
        return "\Modules\Job\Controllers\JobController";
    }
    static public function getFiltersSearch()
    {
        $min_max_price = self::getMinMaxPrice();
        return [
            [
                "title"    => __("Filter Price"),
                "field"    => "price_range",
                "position" => "1",
                "min_price" => floor ( Currency::convertPrice($min_max_price[0]) ),
                "max_price" => ceil (Currency::convertPrice($min_max_price[1]) ),
            ],
            [
                "title"    => __("Review Score"),
                "field"    => "review_score",
                "position" => "3",
                "min" => "1",
                "max" => "5",
            ],
            [
                "title"    => __("Categories"),
                "field"    => "terms",
                "position" => "4",
                "data" => Categories::getAllCategoriesForApi("Job")
            ]
        ];
    }
}
