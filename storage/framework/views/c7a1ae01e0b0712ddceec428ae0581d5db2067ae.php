<div class="bravo-list-item">
    <div class="topbar-search">
        
        <span style="padding-left: 10px">
            <?php if($rows->total() > 1): ?>
                <?php echo e(__("Found :count jobs",['count'=>$rows->total()])); ?>

            <?php else: ?>
                <?php echo e(__(":count job found",['count'=>$rows->total()])); ?>

            <?php endif; ?>
        </span>
        
    </div>
    <div class="list-item">
        <div class="row">
            <?php if($rows->total() > 0): ?>
                <?php $__currentLoopData = $rows; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php $layout = setting_item("job_layout_item_search",'list') ?>
                    <?php if($layout == "list"): ?>
                        <div class="col-lg-12 col-md-12">
                            <?php echo $__env->make('Job::frontend.layouts.search.loop-list', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </div>
                    <?php else: ?>
                        <div class="col-lg-4 col-md-12">
                            <?php echo $__env->make('Job::frontend.layouts.search.loop-grid', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        </div>
                    <?php endif; ?>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php else: ?>
                <div class="col-lg-12">
                    <?php echo e(__("Job not found")); ?>

                </div>
            <?php endif; ?>
        </div>
    </div>
    <div class="bravo-pagination">
        <?php echo e($rows->appends(request()->query())->links()); ?>

        <?php if($rows->total() > 0): ?>
            <span class="count-string"><?php echo e(__("Showing :from - :to of :total Jobs",["from"=>$rows->firstItem(),"to"=>$rows->lastItem(),"total"=>$rows->total()])); ?></span>
        <?php endif; ?>
    </div>
</div><?php /**PATH /home/znwaqgrx/public_html/modules/Job/Views/frontend/layouts/search/main-listitem.blade.php ENDPATH**/ ?>