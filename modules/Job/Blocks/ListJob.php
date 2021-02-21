<?php
namespace Modules\Job\Blocks;
use Modules\Template\Blocks\BaseBlock;
use Modules\Job\Models\Job;
use Modules\Location\Models\Location;
use Modules\Media\Helpers\FileHelper;

class ListJob extends BaseBlock
{
    function __construct()
    {
        $this->setOptions([
            'settings' => [
                [
                    'id'        => 'title',
                    'type'      => 'input',
                    'inputType' => 'text',
                    'label'     => __('Title')
                ],
                [
                    'id'        => 'number',
                    'type'      => 'input',
                    'inputType' => 'number',
                    'label'     => __('Number Item'),
                    "default" => "5",
                ],
                [
                    'id'        => 'ads_link',
                    'type'      => 'input',
                    'inputType' => 'text',
                    'label'     => 'Ads link',
                    'default'   => '#',
                ],
                [
                    'id'        => 'ads_txt',
                    'type'      => 'textArea',
                    'rows'      => '4',
                    'label'     => __('Ads text')
                ],
                [
                    'id'    => 'bg_image',
                    'type'  => 'uploader',
                    'label' => __('Ads Image Uploader')
                ],
            ]
        ]);
    }
    public function getName()
    {
        return __('Job: List Items');
    }
    public function content($model = [])
    {
        $list = $this->query($model);
        $data = [
            'rows'       => $list,
            'title'      => $model['title'],
            'ads_txt'    =>$model['ads_txt'],
            'ads_link'   =>$model['ads_link'],
            'ads_iamge'  => '',
        ];
        if (!empty($model['bg_image'])) {
            $data['ads_iamge'] = FileHelper::url($model['bg_image'], 'full');
        }
        return view('Job::frontend.blocks.list-job.index', $data);
    }
    public function contentAPI($model = []){
        $rows = $this->query($model);
        $model['data']= $rows->map(function($row){
            return $row->dataForApi();
        });
        return $model;
    }
    public function query($model){
        $model_Job = Job::select("bravo_jobs.*")->with(['location','translations','hasWishList']);
        if(empty($model['order'])) $model['order'] = "id";
        if(empty($model['order_by'])) $model['order_by'] = "desc";
        if(empty($model['number'])) $model['number'] = 5;
        if (!empty($model['location_id'])) {
            $location = Location::where('id', $model['location_id'])->where("status","publish")->first();
            if(!empty($location)){
                $model_Job->join('bravo_locations', function ($join) use ($location) {
                    $join->on('bravo_locations.id', '=', 'bravo_jobs.location_id')
                        ->where('bravo_locations._lft', '>=', $location->_lft)
                        ->where('bravo_locations._rgt', '<=', $location->_rgt);
                });
            }
        }
        $model_Job->orderBy("bravo_jobs.".$model['order'], $model['order_by']);
        $model_Job->where("bravo_jobs.status", "publish");
        $model_Job->with('location');
        $model_Job->groupBy("bravo_jobs.id");
        return $model_Job->limit($model['number'])->get();
    }
}
