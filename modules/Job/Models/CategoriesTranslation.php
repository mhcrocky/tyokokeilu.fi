<?php
namespace Modules\Job\Models;
use App\BaseModel;
class CategoriesTranslation extends BaseModel
{
    protected $table = 'bravo_attrs_translations';
    protected $fillable = [
        'name',
    ];
}