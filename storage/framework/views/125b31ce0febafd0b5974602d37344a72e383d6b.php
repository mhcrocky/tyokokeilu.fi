
<?php $__env->startSection('head'); ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="container pt-5">
    <h1 class="title-bar mb-5">
        <?php echo e(__("Change Password")); ?>

    </h1>
    <?php echo $__env->make('admin.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <form action="<?php echo e(route("user.change_password.update")); ?>" method="post">
        <?php echo csrf_field(); ?>
        <div class="row justify-content-center pb-5 mb-5">
            <div class="col-md-6">
                <div class="p-4 mb-5 chang_pwd">
                    <div class="form-group">
                        <label><?php echo e(__("Current Password")); ?></label>
                        <input type="password" name="current-password" placeholder="<?php echo e(__("Current Password")); ?>" class="form-control required" required>
                    </div>
                    <div class="form-group">
                        <label><?php echo e(__("New Password")); ?></label>
                        <input type="password" name="new-password" placeholder="<?php echo e(__("New Password")); ?>" class="form-control required" required>
                                       </div>
                    <div class="form-group">
                        <label><?php echo e(__("New Password Again")); ?></label>
                        <input type="password" name="new-password_confirmation" placeholder="<?php echo e(__("New Password Again")); ?>" class="form-control required" required>
                    </div>
                    <div class="d-flex mt-5">
                        <input type="submit" class="btn btn-danger change_pwd form-control" value="<?php echo e(__("CHANGE PASSWORD")); ?>" style="padding-top:14px">
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('footer'); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.user', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Task\2021-05-08(Vargar)\modules/User/Views/frontend/changePassword.blade.php ENDPATH**/ ?>