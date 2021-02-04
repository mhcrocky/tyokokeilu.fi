
<?php $__env->startSection('content'); ?>
    <div class="container">
        <div class="row justify-content-center auth-page-content">
            <div class="col-md-5">
                <div class="">
                    <h4 class="form-title"><?php echo e(__('Register')); ?></h4>
                    <?php echo $__env->make('auth.register-form',['captcha_action'=>'register_normal'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\resources\views/auth/register.blade.php ENDPATH**/ ?>