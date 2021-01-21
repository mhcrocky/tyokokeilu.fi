<div class="list-job-category">
    <div class="container">
        <div class="row">
            <div class="col-12 p-3">
                <span class="text-heading"><?php echo e($title); ?></span>
            </div>
            <?php $__currentLoopData = $rows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="col-md-2">
                    <?php echo $__env->make('Job::frontend.blocks.list-job-category.loop', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
</div><?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/Job/Views/frontend/blocks/list-job-category/index.blade.php ENDPATH**/ ?>