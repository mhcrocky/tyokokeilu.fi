<div class="row">                
    <div class="col-md-12">
        <div class="form-group">
            <label><?php echo e(__("Job title")); ?></label>
            <input type="text" value="<?php echo e($translation->title); ?>" placeholder="<?php echo e(__("Job Title")); ?>" name="title" class="form-control">
        </div>
    </div>
    <div class="col-md-12">
        <div class="form-group">
            <label class="control-label"><?php echo e(__("Job description")); ?></label>
            <div class="" style="border-radius: 10px">
                <textarea name="content" class="d-none has-ckeditor" cols="30" rows="10"><?php echo e($translation->content); ?></textarea>
            </div>
        </div>
    </div>
</div>
<style>
.tox.tox-tinymce{
    border-radius: 20px;
}    

</style><?php /**PATH C:\xampp\htdocs\modules/Job/Views/frontend/layouts/user/edit/content.blade.php ENDPATH**/ ?>