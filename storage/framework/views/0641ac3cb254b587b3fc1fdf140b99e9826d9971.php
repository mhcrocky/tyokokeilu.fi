<div class="form-group">
    <label><?php echo e(__("Name")); ?></label>
    <input type="text" value="<?php echo e($translation->name); ?>" placeholder="<?php echo e(__("Category name")); ?>" name="name" class="form-control">
</div>
<?php if(is_default_lang()): ?>
    <div class="form-group">
        <label><?php echo e(__('Hide in detail service')); ?></label>
        <br>
        <label>
            <input type="checkbox" name="hidden" <?php if($row->hidden): ?> checked <?php endif; ?> value="1"> <?php echo e(__("Enable hide")); ?>

        </label>
    </div>
<?php endif; ?>
<div class="panel">
    <div class="panel-title"><strong><?php echo e(__('Feature Image')); ?></strong></div>
    <div class="panel-body">
        <div class="form-group">
            <?php echo \Modules\Media\Helpers\FileHelper::fieldUpload('image_id',$row->image_id); ?>

        </div>
    </div>
</div><?php /**PATH D:\Task\2021-05-08(Vargar)\modules/Job/mobile/admin/category/form.blade.php ENDPATH**/ ?>