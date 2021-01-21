<div class="form-group">
    <div class="row align-items-center">
        <label class="col-md-3 text-right col-form-label" ><?php echo e($field['name_'.app()->getLocale()] ?? $field['name'] ?? $field['id']); ?>

            <?php if(!empty($field['required'])): ?>
                <span class="text-danger">*</span>
            <?php endif; ?>
            :
        </label>
        <div class="col-md-<?php echo e($value_col_size ?? 4); ?>">
            <?php if(empty($only_show_data)): ?>
                <input type="text" class="form-control" name="verify_data_<?php echo e($field['id']); ?>" value="<?php echo e($field['data']); ?>">
            <?php else: ?>
                <div class=""><strong><?php echo e($field['data'] ? $field['data'] : __('N/A')); ?></strong></div>
                <?php if(!empty($field['is_verified'])): ?>
                    <a class="badge badge-success" href="#" onclick="return false"><i><?php echo e(__("Verified")); ?></i></a>
                <?php else: ?>
                    <span class="badge badge-secondary"><i><?php echo e(__("Not Verified")); ?></i></span>
                <?php endif; ?>
            <?php endif; ?>
        </div>
    </div>
</div>
<?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/User/Views/frontend/verification/fields/text.blade.php ENDPATH**/ ?>