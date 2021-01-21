<?php
namespace Modules\Job\Blocks;
use Modules\Template\Blocks\BaseBlock;
use Modules\Job\Models\Job;
use Modules\Location\Models\Location;
class ListJobCategory extends BaseBlock
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
                ]
            ]
        ]);
    }
    public function getName()
    {
        return __('Job: Category list');
    }
    public function content($model = [])
    {
        $list = $this->query($model);
        $data = [
            'rows'       => $list,
            'title'      => $model['title'],
        ];
        return view('Job::frontend.blocks.list-job-category.index', $data);
    }
    public function contentAPI($model = []){
        $rows = $this->query($model);
        $model['data']= $rows->map(function($row){
            return $row->dataForApi();
        });
        return $model;
    }
    public function query($model){
        $location = Location::limit(6)->where("status","publish");
        return $location->get();
    }
}