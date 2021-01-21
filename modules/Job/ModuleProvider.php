<?php
namespace Modules\Job;
use Modules\ModuleServiceProvider;
use Modules\Job\Models\Job;
class ModuleProvider extends ModuleServiceProvider
{
    public function boot(){
        $this->loadMigrationsFrom(__DIR__ . '/Migrations');
    }
    /**
     * Register bindings in the container.
     *
     * @return void
     */
    public function register()
    {
        $this->app->register(RouterServiceProvider::class);
    }
    public static function getAdminMenu()
    {
        if(!Job::isEnable()) return [];
        return [
            'job'=>[
                "position"=>20,
                'url'        => 'admin/module/job',
                'title'      => __('Job'),
                'icon'       => 'fa fa-building-o',
                'permission' => 'job_view',
                'children'   => [
                    'add'=>[
                        'url'        => 'admin/module/job',
                        'title'      => __('All Jobs'),
                        'permission' => 'job_view',
                    ],
                    'create'=>[
                        'url'        => 'admin/module/job/create',
                        'title'      => __('Add new Job'),
                        'permission' => 'job_create',
                    ],
                    'category'=>[
                        'url'        => 'admin/module/job/category',
                        'title'      => __('Categorires'),
                        'permission' => 'job_manage_categories',
                    ],
                    'recovery'=>[
                        'url'        => 'admin/module/job/recovery',
                        'title'      => __('Recovery'),
                        'permission' => 'job_view',
                    ],
                ]
            ]
        ];
    }
    public static function getBookableServices()
    {
        if(!Job::isEnable()) return [];
        return [
            'job'=>Job::class
        ];
    }
    public static function getMenuBuilderTypes()
    {
        if(!Job::isEnable()) return [];
        return [
            'job'=>[
                'class' => Job::class,
                'name'  => __("Job"),
                'items' => Job::searchForMenu(),
                'position'=>41
            ]
        ];
    }
    public static function getUserMenu()
    {
        $res = [];
        if(Job::isEnable()){
            $res['job'] = [
                'url'   => route('job.vendor.index'),
                'title'      => __("Job"),
                'icon'       => Job::getServiceIconFeatured(),
                'position'   => 33,
                'permission' => 'job_view',
                'children' => [
                    [
                        'url'   => route('job.vendor.index'),
                        'title'  => __("All Jobs"),
                    ],
                    [
                        'url'   => route('job.vendor.create'),
                        'title'      => __("Add Job"),
                        'permission' => 'job_create',
                    ],
                    [
                        'url'   => route('job.vendor.booking_report'),
                        'title'      => __("Booking Report"),
                        'permission' => 'job_view',
                    ],
                    [
                        'url'   => route('job.vendor.recovery'),
                        'title'      => __("Recovery"),
                        'permission' => 'job_create',
                    ],
                ]
            ];
        }
        return $res;
    }
    public static function getTemplateBlocks(){
        if(!Job::isEnable()) return [];
        return [
            'form_search_job'=>"\\Modules\\Job\\Blocks\\FormSearchJob",
            'list_job'=>"\\Modules\\Job\\Blocks\\ListJob",
            'list_job_category'=>"\\Modules\\Job\\Blocks\\ListJobCategory",
        ];
    }
}
