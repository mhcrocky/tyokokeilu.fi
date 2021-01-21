<?php if(count($job_related) > 0): ?>
    <div class="bravo-list-job-related-widget">
        <h3 class="heading"><?php echo e(__("Related Job")); ?></h3>
        <div class="list-item">
            <?php $__currentLoopData = $job_related; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $k=>$item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php
                    $translation_item = $item->translateOrOrigin(app()->getLocale());
                ?>
                <div class="item">
                    <div class="media">
                        <div class="media-left">
                            <a href="<?php echo e($item->getDetailUrl(false)); ?>">
                                <?php if($item->image_url): ?>
                                    <?php if(!empty($disable_lazyload)): ?>
                                        <img src="<?php echo e($item->image_url); ?>" class="img-responsive" alt="<?php echo e($translation_item->title); ?>">
                                    <?php else: ?>
                                        <?php echo get_image_tag($item->image_id,'thumb',['class'=>'img-responsive','alt'=>$translation_item->title]); ?>

                                    <?php endif; ?>
                                <?php endif; ?>
                            </a>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading">
                                <a href="<?php echo e($item->getDetailUrl(false)); ?>">
                                    <?php echo e($translation_item->title); ?>

                                </a>
                            </h4>
                            <div class="price-wrapper">
                                <?php echo e(__("from")); ?>

                                <span class="price"><?php echo e($item->display_price); ?></span>
                                <span class="unit"><?php echo e(__("/night")); ?></span>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </div>
    </div>
<?php endif; ?><?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/Job/Views/frontend/layouts/details/job-related-list.blade.php ENDPATH**/ ?>