
<?php $__env->startSection('head'); ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="container">
    <h2 class="title-bar" style="text-align: center">
        <?php echo e(__("Change Password")); ?>

    </h2>
    <?php echo $__env->make('admin.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <form action="<?php echo e(route("user.change_password.update")); ?>" method="post">
        <?php echo csrf_field(); ?>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="p-4 mb-5">
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
                        <input type="submit" class="btn btn-danger form-control" value="<?php echo e(__("Change Password")); ?>" style="padding-top:.5rem">
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('footer'); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.user', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\modules/User/Views/frontend/changePassword.blade.php ENDPATH**/ ?>