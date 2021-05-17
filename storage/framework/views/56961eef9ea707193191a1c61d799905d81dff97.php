
<?php $__env->startSection('content'); ?>
<div class="container">
    <div class="row justify-content-center auth-page-content">
        <div class="col-md-5">
            <?php echo $__env->make('Layout::admin.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <div class="">
                <h4 class="form-title"><?php echo e(__('Already User?')); ?></h4>
                <p class="form-sub-title"><?php echo e(__('Sign In Now!')); ?></p>
                <?php echo $__env->make('auth.login-form',['captcha_action'=>'login_normal'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\_Work\Vargha\tyokokeilu.fi\resources\views/auth/login.blade.php ENDPATH**/ ?>