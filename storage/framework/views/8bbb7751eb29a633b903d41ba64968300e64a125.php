<div class="form-group">
    <div class="row align-items-center">

        <label class="col-md-3 text-right col-form-label" ><?php echo e($field['name_'.app()->getLocale()] ?? $field['name'] ?? $field['id']); ?>

            <?php if(!empty($field['required'])): ?>
                <span class="text-danger">*</span>
            <?php endif; ?>
            :
        </label>
        <div class="col-md-<?php echo e($value_col_size ?? 4); ?> btn-upload-private-wrap">
            <div class="private-file-lists mb-2">
                <?php ($old = json_decode($field['data'],true)); ?>
                <?php if(!empty($old)): ?>
                    <input type="hidden" name="verify_data_<?php echo e($field['id']); ?>" value="<?php echo e(($field['data'])); ?>">
                    <a target="_blank" href="<?php echo e(route('media.private.view',['path'=>$old['path'] ?? '','v'=>uniqid()])); ?>" class="file-item"><?php echo e($old['name']); ?> <i class="fa fa-download"></i></a>
                <?php endif; ?>
            </div>
            <?php if(empty($only_show_data)): ?>
                <span class="btn btn-primary btn-sm "><i class="fa fa-upload"></i> <?php echo e(__('Select File')); ?>
                    <input class="btn-upload-private-file" data-name="verify_data_<?php echo e($field['id']); ?>"  data-multiple="" type="file" >
                </span>
            <?php else: ?>
                <?php if(empty($field['data'])): ?>
                    <div><strong><?php echo e(__('N/A')); ?></strong></div>
                <?php endif; ?>
                <?php if(!empty($field['is_verified'])): ?>
                    <span class="badge badge-success"><i><?php echo e(__("Verified")); ?></i></span>
                <?php else: ?>
                    <span class="badge badge-secondary"><i><?php echo e(__("Not Verified")); ?></i></span>
                <?php endif; ?>
            <?php endif; ?>
        </div>
    </div>
</div>
<?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/User/Views/frontend/verification/fields/file.blade.php ENDPATH**/ ?>