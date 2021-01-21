<?php
namespace Modules\Job\Admin;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Modules\AdminController;
class AvailabilityController extends \Modules\Job\Controllers\AvailabilityController
{
    protected $indexView = 'Job::admin.room.availability';
    public function __construct()
    {
        parent::__construct();
        $this->setActiveMenu('admin/module/Job');
        $this->middleware('dashboard');
    }
    protected function hasJobPermission($job_id = false){
        if(empty($job_id)) return false;
        $Job = $this->JobClass::find($job_id);
        if(empty($Job)) return false;
        if(!$this->hasPermission('job_manage_others') and $Job->create_user != Auth::id()){
            return false;
        }
        $this->currentJob = $Job;
        return true;
    }
}