<?php
namespace Modules\Job\Models;
use App\BaseModel;
class JobTerm extends BaseModel
{
    protected $table = 'bravo_job_term';
    protected $fillable = [
        'term_id',
        'target_id'
    ];
}