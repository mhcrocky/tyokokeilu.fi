<?php
namespace Modules\Job\Models;
use App\BaseModel;
class JobTranslation extends Job
{
    protected $table = 'bravo_job_translations';
    protected $fillable = [
        'title',
        'content',
        'address',
    ];
    protected $slugField     = false;
    protected $seo_type = 'job_translation';
    protected $cleanFields = [
        'content'
    ];
    protected $casts = [
    ];
    public function getSeoType(){
        return $this->seo_type;
    }
}