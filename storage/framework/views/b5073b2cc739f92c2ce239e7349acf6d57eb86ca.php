
<?php $__env->startSection('head'); ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<?php echo $__env->make('admin.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<div class="page-template-content">
    <div class="job-dashboard container">
        <div class="row">
            <div class="col-md-3 parent-card">
                <?php echo $__env->make('Job::frontend.layouts.user.profile-card', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
            <div class="col-md-9">
                <?php if($rows->total() > 0): ?>
                    <div class="bravo-list-item">
                        <div class="bravo-pagination">
                            <span class="float-left status-title">
                                <?php if( !empty(Request::query('status')) ): ?> 
                                    <?php switch(Request::query('status')):
                                        case ('publish'): ?>
                                            Opened Jobs
                                            <?php break; ?>
                                        <?php case ('draft'): ?>
                                            Paused Jobs
                                            <?php break; ?>
                                        <?php default: ?>
                                    <?php endswitch; ?>
                                <?php else: ?>
                                    Jobs list
                                <?php endif; ?>
                            </span>
                            
                            <?php echo e($rows->appends(request()->query())->links()); ?>

                        </div>
                        <div class="list-item">
                            <div class="row">
                                <?php $__currentLoopData = $rows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <div class="col-md-12">
                                        <?php echo $__env->make('Job::frontend.vendorJob.loop-list', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    </div>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                        </div>
                    </div>
                <?php else: ?>
                    <div class="panel px-5 py-4">
                        <?php echo e(__("No Job")); ?>

                    </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('footer'); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.user', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Cloud\tyokokeilu.fi\modules/Job/Views/frontend/vendorJob/index.blade.php ENDPATH**/ ?>