
<?php $__env->startSection('content'); ?>
<div>
    <div class="container-xxl">
        <div class="row page-content">
            <?php echo $__env->make('auth.left', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <div class="col-md-6 content-right">
                <?php echo $__env->make('Layout::admin.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                <div class="">
                    <h1 class="form-title"><?php echo e(__('Login')); ?></h1>
                    <p class="form-sub-title mt-4 mb-5"><?php echo e(__('Don’t have an account?')); ?>

                        <a style="font-weight: bold" href="/register">Create your account,</a>
                        <?php echo e(__('it takes less than a minute')); ?>

                    </p>
                    <?php echo $__env->make('auth.login-form',['captcha_action'=>'login_normal'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>
            </div>
        <div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('Layout::auth', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Task\2021-05-08(Vargar@250$)\resources\views/auth/login.blade.php ENDPATH**/ ?>