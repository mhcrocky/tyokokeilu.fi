<div class="col-md-12 pt-1 pb-2">
    <div class="form-group">
        <label><?php echo e(__("Job title")); ?></label>
        <input type="text" value="<?php echo e($translation->title); ?>" placeholder="<?php echo e(__("Job Title")); ?>" name="title" class="form-control">
    </div>
</div>
<div class="col-md-12 pt-1 pb-2">
    <div class="form-group">
        <label class="control-label"><?php echo e(__("Job description")); ?></label>
        <div class="" style="border-radius: 30px">
            <textarea name="content" class="d-none has-ckeditor" cols="30" rows="10"><?php echo e($translation->content); ?></textarea>
        </div>
    </div>
</div>
<style>
.tox.tox-tinymce{
    border-radius: 20px;
}    
.width-half{
    width: 50%;
}
</style><?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/Job/Views/frontend/layouts/user/edit/content.blade.php ENDPATH**/ ?>