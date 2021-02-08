<div class="form-group">
    <label><?php echo e(__("Name")); ?></label>
    <input type="text" value="<?php echo e($translation->name); ?>" placeholder="<?php echo e(__("Location name")); ?>" name="name" class="form-control">
</div>

<div class="form-group">
    <label class="control-label"><?php echo e(__("Description")); ?></label>
    <div class="">
        <textarea name="content" class="d-none has-ckeditor" cols="30" rows="10"><?php echo e($translation->content); ?></textarea>
    </div>
</div><?php /**PATH C:\xampp\htdocs\modules/Location/Views/admin/form.blade.php ENDPATH**/ ?>