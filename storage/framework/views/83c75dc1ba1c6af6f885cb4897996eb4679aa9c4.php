
<?php $__env->startSection('content'); ?>
    <div class="container-xxl">
        <div class="row page-content">
            <?php echo $__env->make('auth.left', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <div class="col-md-6 content-right">
                <div class="">
                    <h1 style="font-size:30px;" class="form-title"><?php echo e(__('Create an account.')); ?></h1>
                    <p class="form-sub-title mt-5 mb-5"><?php echo e(__('Join Thousands of Companies That Use Työkokeilu
                        Every Day ! If you already have an account')); ?>

                        <a href="/login"><?php echo e(__("Log In")); ?></a>
                    </p>
                    <?php echo $__env->make('auth.register-form',['captcha_action'=>'register_normal'], \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('Layout::auth', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Task\2021-05-08(Vargar)\resources\views/auth/register.blade.php ENDPATH**/ ?>