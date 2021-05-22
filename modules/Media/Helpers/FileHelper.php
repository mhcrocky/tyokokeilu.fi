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
                    <svg id="next-dropzone" width="100%" height="100%">
                        <?xml version="1.0" encoding="iso-8859-1"?>
                        <!-- Generator: Adobe Illustrator 19.0.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
                        <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                            viewBox="0 0 504 504" style="enable-background:new 0 0 504 504;" xml:space="preserve">
                        <g>
                            <g>
                                <path d="M311.3,108.74c-15.304,0-27.752,12.444-27.752,27.752c0.004,15.3,12.452,27.744,27.752,27.744s27.752-12.44,27.752-27.744
                                    C339.052,121.188,326.604,108.74,311.3,108.74z"/>
                            </g>
                        </g>
                        <g>
                            <g>
                                <path d="M252.164,286.1c-49.992,0-90.508,40.52-90.508,90.5c0,49.984,40.516,90.508,90.508,90.508s90.512-40.524,90.512-90.508
                                    C342.676,326.62,302.156,286.1,252.164,286.1z M303.148,387.328h-39.336v40.344c0,6.476-5.336,11.744-11.812,11.744
                                    s-11.812-5.264-11.812-11.744v-40.344h-39.172c-6.476,0-11.748-5.336-11.748-11.812s5.268-11.812,11.748-11.812h39.172v-38.168
                                    c0-6.472,5.336-11.744,11.812-11.744s11.812,5.268,11.812,11.744v38.168h39.336c6.476,0,11.748,5.336,11.748,11.812
                                    S309.624,387.328,303.148,387.328z"/>
                            </g>
                        </g>
                        <g>
                            <g>
                                <path d="M484.356,36.892H19.976C9.12,36.892,0,46.56,0,57.416v299.496c0,10.86,9.12,18.6,19.976,18.6h118.056
                                    c0-63,51.2-114.124,114.132-114.124c62.936,0,114.136,51.124,114.136,114.124h118.056c10.856,0,19.644-7.744,19.644-18.6V57.416
                                    C504,46.56,495.212,36.892,484.356,36.892z M391.5,172.552l-74.456,74.472L203.712,133.708c-1.54-1.54-4.024-1.54-5.564,0
                                    l-71.884,71.88l-32.816-32.812c-1.536-1.54-4.172-1.54-5.708,0l-52.304,52.16V72.328H468.56v171.748l-71.5-71.524
                                    C395.52,171.012,393.04,171.012,391.5,172.552z"/>
                            </g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        </svg>
                    </svg>
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
