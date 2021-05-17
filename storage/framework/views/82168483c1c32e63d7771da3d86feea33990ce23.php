<?php
    $translation = $row->translateOrOrigin(app()->getLocale());
?>
<div class="item-loop-list <?php echo e($wrap_class ?? ''); ?>row mb-3">
    <div class="thumb-image col-sm-2">
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
    <div class="col-sm-6">Name</div>
    <div class="col-sm-4 text-right pr-0 published_date">3 days ago</div>
    <div class="item-title col-sm-12">
        <a <?php if(!empty($blank)): ?> target="_blank" <?php endif; ?> href="<?php echo e($row->getDetailUrl()); ?>">
            <?php if($row->is_instant): ?>
                <i class="fa fa-bolt d-none"></i>
            <?php endif; ?>
            <?php echo e($translation->title); ?>

        </a>
    </div>
    <div class="location col-sm-6 pl-0">
        <i class="fa fa-map-marker" style="color:#172A31;"></i>
        <?php if(!empty($row->author->business_name)): ?>
            <?php echo e($row->author->business_name?? ''); ?>

        <?php endif; ?>
        ,
        <?php if(!empty($row->location->name)): ?>
            <?php $location =  $row->location->translateOrOrigin(app()->getLocale()) ?>
            <?php echo e($location->name ?? ''); ?>

        <?php endif; ?>
    </div>
    <div class="service-review-pc">
        <div class="head">
            <div class="left">
                <span class="head-rating">
                    <span>
                        <i class='fa fa-circle
                        <?php if(!$row->getAttribute('job_type')): ?>
                            style="opacity:0"
                        <?php endif; ?>
                        <?php switch($row->getAttribute('job_type')):
                            case ('SummerJob'): ?>
                                SummerJob
                                <?php break; ?>
                            <?php case ('Practice'): ?>
                                Practice
                                <?php break; ?>
                            <?php case ('Internship'): ?>
                                Internship
                                <?php break; ?>
                            <?php default: ?>
                                text-prmary
                        <?php endswitch; ?>'></i>
                        <?php echo e($row->getAttribute('job_type')); ?>

                    </span>
                </span>
            </div>
        </div>
    </div>
</div>
<?php /**PATH D:\jobportal.sql\modules/Job/Views/frontend/layouts/search/loop-list.blade.php ENDPATH**/ ?>