

<?php $__env->startSection('content'); ?>
    <h2 class="title-bar">
        <?php echo e(__("Verification data")); ?>
    </h2>
    <?php echo $__env->make('admin.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <div class="booking-history-manager">
        <?php $__currentLoopData = $fields; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $field): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php switch($field['type']):
                case ("email"): ?>
                <?php echo $__env->make('User::frontend.verification.fields.email', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php break; ?>
                <?php case ("phone"): ?>
                <?php echo $__env->make('User::frontend.verification.fields.phone', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php break; ?>
                <?php case ("file"): ?>
                <?php echo $__env->make('User::frontend.verification.fields.file', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php break; ?>
                <?php case ("multi_files"): ?>
                <?php echo $__env->make('User::frontend.verification.fields.multi_files', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php break; ?>
                <?php case ('text'): ?>
                <?php default: ?>
                <?php echo $__env->make('User::frontend.verification.fields.text', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <?php break; ?>
            <?php endswitch; ?>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <hr>
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-4">
                <a href="<?php echo e(route('user.verification.update')); ?>" class="btn btn-warning"> <i class="fa fa-edit"></i> <?php echo e(__("Update verification data")); ?> </a>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.user', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/User/Views/frontend/verification/index.blade.php ENDPATH**/ ?>