

<div class="block-list-job-category">
    <div class="container">
        <?php if($rows->count()): ?>
            <div class="row">
                <div class="col-12 py-3 mb-2 mt-3">
                    <span class="text-heading"><?php echo e($title); ?></span>
                </div>  
                <?php echo $__env->make('Job::frontend.blocks.list-job-category.loop', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </div>
        <?php endif; ?> 
    </div>
</div>
<?php /**PATH D:\Task\2021-05-08(Vargar)\modules/Job/mobile/frontend/blocks/list-job-category/index.blade.php ENDPATH**/ ?>