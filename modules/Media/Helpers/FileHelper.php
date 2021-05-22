<?php
namespace Modules\Media\Helpers;
use Illuminate\Support\Facades\Storage;
use Modules\Media\Models\MediaFile;
use Intervention\Image\ImageManagerStatic as Image;
use Spatie\LaravelImageOptimizer\Facades\ImageOptimizer;
class FileHelper
{
    public static $defaultSize = [
        'thumb' => [
            150,
            150
        ],
        'medium' => [
            600,
            600
        ],
        'large' => [
            1024,
            1024
        ],
    ];
    public static function url($fileId, $size = 'medium',$resize = true)
    {
        if ($fileId instanceof MediaFile) {
            $file = $fileId;
        } else {
            $file = (new MediaFile())->findById($fileId);
        }
        if (empty($file)) {
            return false;
        }
        if (static::isImage($file) and Storage::disk('uploads')->exists($file->file_path)) {
            $url = static::maybeResize($file, $size,$resize);
            return $url;
        }
        return asset('uploads/' . $file->file_path);
    }
    public static function image($fileId, $size = 'medium')
    {
        if ($fileId instanceof MediaFile) {
            $file = $fileId;
        } else {
            $file = (new MediaFile())->findById($fileId);
        }
        return sprintf("<img src='%' align='%s'>", static::url($file, $size), $file->file_name);
    }
    protected static function maybeResize($fileObj, $size = '',$resize = true)
    {
        if ($size == 'full' or in_array(strtolower($fileObj->file_extension),['svg','bmp']))
            return asset('uploads/' . $fileObj->file_path);
        if (!isset($size, static::$defaultSize))
            $size = 'medium';
        $sizeData = static::$defaultSize[$size];
        if ($sizeData[0] >= $fileObj->file_width) {
            return asset('uploads/' . $fileObj->file_path);
        }
        $resizeFile = substr($fileObj->file_path, 0, strrpos($fileObj->file_path, '.')) . '-' . $sizeData[0] . '.' . $fileObj->file_extension;
        if (Storage::disk('uploads')->exists($resizeFile)) {
            return asset('uploads/' . $resizeFile);
        }elseif(!$resize){
            return asset('uploads/' . $fileObj->file_path);
        } else {
            $image_path = public_path('uploads/' . $fileObj->file_path);
            $mime = finfo_file(finfo_open(FILEINFO_MIME_TYPE), $image_path);
            if(in_array($mime,['image/x-ms-bmp'])){
                return asset('uploads/' . $fileObj->file_path);
            }
            if(env('APP_RESIZE_SIMPLE'))
            {
                return static::resizeSimple($fileObj,$size);
            }
            // Start Resize
            $img = Image::make($image_path)->resize($sizeData[0], null, function ($constraint) {
                $constraint->aspectRatio();
            })->save(public_path('uploads/' . $resizeFile));
            return asset('uploads/' . $resizeFile);
        }
    }
    protected static function resizeSimple($fileObj,$size = ''){
        $resize = new ResizeImage(public_path('uploads/'.$fileObj->file_path));
        $sizeData = static::$defaultSize[$size];
        $resizeFile = substr($fileObj->file_path, 0, strrpos($fileObj->file_path, '.')) . '-' . $sizeData[0] . '.' . $fileObj->file_extension;
        $resize->resizeTo($sizeData[0], $sizeData[0], 'maxWidth');
        $resize->saveImage(public_path('uploads/'.$resizeFile), "100");
        return asset('uploads/' . $resizeFile);
    }
    public static function isImage($fileObj)
    {
        if (false !== mb_strpos($fileObj->file_type, "image") and in_array($fileObj->file_type,['image/jpg','image/jpeg','image/png','image/gif'])) {
            return true;
        } else {
            return false;
        }
    }
    public static function checkMimeIsImage($mime)
    {
        if (false !== mb_strpos($mime, "image") and $mime != "image/webp") {
            return true;
        } else {
            return false;
        }
    }
    public static function fieldUpload($inputId = '', $oldValue = '',$nameAttr='name')
    {
        if(!empty($oldValue))
        $file = (new MediaFile())->findById($oldValue);
        ob_start();
        ?>
        <div class="dungdt-upload-box dungdt-upload-box-normal <?php if (!empty($file)) echo 'active' ?>" data-val="<?php echo $oldValue ?>">
            <div class="upload-box btn-field-upload" v-show="!value"  @click="openUploader">
                <input type="hidden" <?php echo $nameAttr;?>="<?php echo $inputId ?>" v-model="value" value="<?php echo $oldValue ?>">
                <div class="text-center">
                    <img width="110px" src="../../images/add_picture.svg" alt="">
                </div>
                <div class="text-center">
                    <span class="img-choose-text"><?php echo __("Click to choose a cover Image") ?></span>
                </div>
            </div>
            <div class="attach-demo" title="Change file">
                <?php if (!empty($file)) {
                    printf('<img src="%s" class="image-responsive">', FileHelper::url($oldValue, 'thumb'));
                } ?>
            </div>
            <div class="upload-actions justify-content-between" v-show="value">
                <span></span>
                <a class="delete btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>
            </div>
        </div>
        <?php
        return ob_get_clean();
    }
    public static function fieldGalleryUpload($inputId = '', $oldValue = '')
    {
        $oldIds = $oldValue ? explode(',', $oldValue) : [];
        ob_start();
        ?>
        <div class="dungdt-upload-multiple <?php if (!empty($file))
            echo 'active' ?>" data-val="<?php echo $oldValue ?>">
            <div class="attach-demo d-flex">
                <?php
                foreach ($oldIds as $id) {
                    $file = (new MediaFile())->findById($id);
                    if (!empty($file)) {
                        printf('<div class="image-item"><div class="inner"><span class="delete btn btn-sm btn-danger"><i class="fa fa-trash"></i></span><img src="%s" class="image-responsive"></div></div>', FileHelper::url($file, 'thumb'));
                    }
                }
                ?>
            </div>
            <div class="upload-box" v-show="!value">
                <input type="hidden" name="<?php echo $inputId ?>" v-model="value" value="<?php echo htmlspecialchars($oldValue) ?>">
                <div class="text-left">
                    <span class="btn btn-danger btn-sm btn-field-upload" @click="openUploader"><i class="fa fa-plus-circle"></i> <?php echo __("Select images") ?></span>
                </div>
            </div>
        </div>
        <?php
        return ob_get_clean();
    }
}
