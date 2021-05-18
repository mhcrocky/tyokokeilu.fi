
<?php $__env->startSection('content'); ?>
    <form action="<?php echo e(url('/admin/module/user/subscriber/store')); ?>" method="post">
        <input type="hidden" name="id" value="<?php echo e($row->id); ?>">
        <?php echo csrf_field(); ?>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6">
                    <?php echo $__env->make('admin.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <div class="d-flex justify-content-between mb20">
                        <div class="">
                            <h1 class="title-bar"><?php echo e($row->id ? __('Edit: ').$row->email : __('Add new subscriber')); ?></h1>
                        </div>
                    </div>
                    <div class="panel">
                        <div class="panel-body">
                            <h3 class="panel-body-title"><?php echo e(__("Subscriber Info")); ?></h3>
                            <?php echo $__env->make('User::newsletter/subscriber/form', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </div>

                    </div>
                    <hr>
                    <div class="text-right">
                        <button class="btn btn-primary" type="submit"><i class="fa fa-save"></i> <?php echo e(__("Save changes")); ?></button>
                    </div>
                </div>
            </div>
        </div>
    </form>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('script.body'); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('admin.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\_Work\Vargha\tyokokeilu.fi\modules/User/Views/newsletter/subscriber/detail.blade.php ENDPATH**/ ?>