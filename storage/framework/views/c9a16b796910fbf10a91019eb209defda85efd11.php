

<div class="block-list-job-category">
    <div class="container">
    <?php if($rows->count()): ?>
        <div class="row">
            <div class="col-12 py-4 mb-3 mt-5  pb-5">
                <span class="text-heading"><?php echo e($title); ?></span>
                <span class="text-show-all">View all</span>
            </div>
            <?php $__currentLoopData = $rows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-md-2">
                <?php echo $__env->make('Job::frontend.blocks.list-job-category.loop', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    <?php endif; ?>  
    </div>
</div>
<?php /**PATH D:\Task\2021-05-08(Vargar)\modules/Job/Views/frontend/blocks/list-job-category/index.blade.php ENDPATH**/ ?>