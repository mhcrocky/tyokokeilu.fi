<?php
    $translation = $row->translateOrOrigin(app()->getLocale());
?>
<div class="item-loop-list <?php echo e($wrap_class ?? ''); ?>">
    <div class="thumb-image">
        <a <?php if(!empty($blank)): ?> target="_blank" <?php endif; ?> href="<?php echo e($row->getDetailUrl()); ?>">
            <?php if($row->image_url): ?>
                <?php if(!empty($disable_lazyload)): ?>
                    <img src="<?php echo e($row->image_url); ?>" class="img-responsive" alt="">
                <?php else: ?>
                    <?php echo get_image_tag($row->image_id,'medium',['class'=>'img-responsive','alt'=>$translation->title]); ?>

                <?php endif; ?>
            <?php endif; ?>
        </a>
    </div>
    <div class="g-info">
        <div class="item-title">
            <a <?php if(!empty($blank)): ?> target="_blank" <?php endif; ?> href="<?php echo e($row->getDetailUrl()); ?>">
                <?php if($row->is_instant): ?>
                    <i class="fa fa-bolt d-none"></i>
                <?php endif; ?>
                <?php echo e($translation->title); ?>

            </a>
        </div>
        <div class="location">
            <?php if(!empty($row->location->name)): ?>
                <?php $location =  $row->location->translateOrOrigin(app()->getLocale()) ?>
                <?php echo e($location->name ?? ''); ?>

            <?php endif; ?>
        </div>
    </div>
    <div class="g-rate-price">
        <?php if(setting_item('job_enable_review')): ?>
            <div class="service-review-pc">
                <div class="head">
                    <div class="left">
                        <span class="head-rating"><button class="btn-sm btn btn-primary">dfsdfd</button></span>
                        <span class="text-rating">Starting 12.12.2002</span>
                    </div>
                </div>
            </div>
        <?php endif; ?>
    </div>
</div>
<?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/Job/Views/frontend/layouts/search/loop-list.blade.php ENDPATH**/ ?>