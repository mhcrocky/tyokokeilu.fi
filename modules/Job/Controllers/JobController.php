<?php
namespace Modules\Job\Controllers;
use App\Http\Controllers\Controller;
use Modules\Job\Models\Job;
use Illuminate\Http\Request;
use Modules\Location\Models\Location;
use Modules\Review\Models\Review;
use Modules\Core\Models\Categories;
use DB;
class JobController extends Controller
{
    protected $JobClass;
    protected $locationClass;
    protected $categoryClass;
    public function __construct()
    {
        $this->JobClass = Job::class;
        $this->locationClass = Location::class;
        $this->categoryClass = Categories::class;
    }
    public function callAction($method, $parameters)
    {
        if(!Job::isEnable())
        {
            return redirect('/');
        }
        return parent::callAction($method, $parameters); // TODO: Change the autogenerated stub
    }
    public function index(Request $request)
    {
        $is_ajax = $request->query('_ajax');
        $list = call_user_func([$this->JobClass,'search'],$request);
        $data = [
            'rows'               => $list,
            'list_location'  => $this->locationClass::get(),
            'list_category'  => $this->categoryClass::where('service','job')->get(),
            "blank"              => 1,
            "seo_meta"           => $this->JobClass::getSeoMetaForPageList()
        ];
        if ($is_ajax) {
            return $this->sendSuccess([
                'html'    => view('Job::frontend.layouts.search-map.list-item', $data)->render(),
                "markers" => $data['markers']
            ]);
        }
        $data['options'] = Categories::where('service', 'job_filter')->with(['terms','translations'])->get();
        return view('Job::frontend.search', $data);
    }
    public function detail(Request $request, $slug)
    {
        $row = $this->JobClass::where('slug', $slug)->with(['location','translations','hasWishList'])->first();;
        if ( empty($row) or !$row->hasPermissionDetailView()) {
            return redirect('/');
        }
        $translation = $row->translateOrOrigin(app()->getLocale());
        $job_related = [];
        $location_id = $row->location_id;
        if (!empty($location_id)) {
            $job_related = $this->JobClass::where('location_id', $location_id)->where("status", "publish")->take(4)->whereNotIn('id', [$row->id])->with(['location','translations','hasWishList'])->get();
        }
        $review_list = $row->getReviewList();
        $data = [
            'row'          => $row,
            'translation'       => $translation,
            'job_related' => $job_related,
            'booking_data' => $row->getBookingData(),
            'review_list'  => $review_list,
            'seo_meta'  => $row->getSeoMetaWithTranslation(app()->getLocale(),$translation),
            'body_class'=>'is_single'
        ];
        $this->setActiveMenu($row);
        return view('Job::frontend.detail', $data);
    }
    public function checkAvailability(){
        $job_id = \request('job_id');
        if(\request()->input('firstLoad') == "false") {
            $rules = [
                'job_id'   => 'required',
                'start_date' => 'required:date_format:Y-m-d',
                'end_date'   => 'required:date_format:Y-m-d',
                'adults'     => 'required',
            ];
            $validator = \Validator::make(request()->all(), $rules);
            if ($validator->fails()) {
                return $this->sendError($validator->errors()->all());
            }
            if(strtotime(\request('end_date')) - strtotime(\request('start_date')) < DAY_IN_SECONDS){
                return $this->sendError(__("Dates are not valid"));
            }
            if(strtotime(\request('end_date')) - strtotime(\request('start_date')) > 30*DAY_IN_SECONDS){
                return $this->sendError(__("Maximum day for booking is 30"));
            }
        }
        $Job = $this->JobClass::find($job_id);
        if(empty($job_id) or empty($Job)){
            return $this->sendError(__("Job not found"));
        }
        if(\request()->input('firstLoad') == "false") {
            $numberDays = abs(strtotime(\request('end_date')) - strtotime(\request('start_date'))) / 86400;
        }
        $rooms = $Job->getRoomsAvailability(request()->input());
        return $this->sendSuccess([
            'rooms'=>$rooms
        ]);
    }
}
