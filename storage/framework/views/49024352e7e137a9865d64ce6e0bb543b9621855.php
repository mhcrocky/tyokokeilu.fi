<div class="form-group">
    <div class="row">

        <label class="col-md-3 text-right col-form-label" ><?php echo e($field['name_'.app()->getLocale()] ?? $field['name'] ?? $field['id']); ?>

            <?php if(!empty($field['required'])): ?>
                <span class="text-danger">*</span>
            <?php endif; ?>
            :
        </label>
        <div class="col-md-<?php echo e($value_col_size ?? 4); ?> btn-upload-private-wrap">
            <div class="private-file-lists mb-2">
                <?php ($old = $field['data']); ?>
                <?php if(!empty($old) and is_array($old)): ?>
                    <?php $__currentLoopData = $old; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $file): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div>
                            <input type="hidden" name="verify_data_<?php echo e($field['id']); ?>[]" value="<?php echo e(json_encode($file)); ?>">
                            <a target="_blank" href="<?php echo e(route('media.private.view',['path'=>$file['path'] ?? '','v'=>uniqid()])); ?>" class="file-item"><?php echo e($file['name']); ?> <i class="fa fa-download"></i></a>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?>
            </div>

            <?php if(empty($only_show_data)): ?>
                <span class="btn btn-primary btn-sm "><i class="fa fa-upload"></i> <?php echo e(__('Select Files')); ?>
                    <input class="btn-upload-private-file" multiple data-name="verify_data_<?php echo e($field['id']); ?>[]"  data-multiple="true" type="file" >
                </span>
            <?php else: ?>
                <?php if(empty($field['data'])): ?>
                    <div><strong><?php echo e(__('N/A')); ?></strong></div>
                <?php endif; ?>
                <?php if(!empty($field['is_verified'])): ?>
                    <a class="badge badge-success" href="#" onclick="return false"><i><?php echo e(__("Verified")); ?></i></a>
                <?php else: ?>
                    <span class="badge badge-secondary"><i><?php echo e(__("Not Verified")); ?></i></span>
                <?php endif; ?>
            <?php endif; ?>
        </div>
    </div>
</div>
<?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/User/Views/frontend/verification/fields/multi_files.blade.php ENDPATH**/ ?>