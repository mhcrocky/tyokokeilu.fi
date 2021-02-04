<div class="form-group">
    <label><?php echo e(__("Name")); ?></label>
    <input type="text" value="<?php echo e($translation->name); ?>" placeholder="<?php echo e(__("Category name")); ?>" name="name" class="form-control">
</div>
<?php if(is_default_lang()): ?>
    <div class="form-group">
        <label><?php echo e(__('Hide in detail service')); ?></label>
        <br>
        <label>
            <input type="checkbox" name="hide_in_single" <?php if($row->hide_in_single): ?> checked <?php endif; ?> value="1"> <?php echo e(__("Enable hide")); ?>

        </label>
    </div>
<?php endif; ?><?php /**PATH C:\xampp\htdocs\modules/Job/Views/admin/category/form.blade.php ENDPATH**/ ?>