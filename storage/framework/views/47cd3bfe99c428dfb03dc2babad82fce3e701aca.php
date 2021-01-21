<div class="g-header">
    <div class="left">
        <h1><?php echo e($translation->title); ?></h1>
        <?php if($translation->address): ?>
            <h2 class="address"><i class="fa fa-map-marker"></i>
                <?php echo e($translation->address); ?>

            </h2>
        <?php endif; ?>
    </div>
    <div class="right">
        <?php if($row->getReviewEnable()): ?>
            <?php if($review_score): ?>
                <div class="review-score">
                    <div class="head">
                        <div class="left">
                            <span class="head-rating"><?php echo e($review_score['score_text']); ?></span>
                            <span class="text-rating"><?php echo e(__("from :number reviews",['number'=>$review_score['total_review']])); ?></span>
                        </div>
                        <div class="score">
                            <?php echo e($review_score['score_total']); ?><span>/5</span>
                        </div>
                    </div>
                    <div class="foot">
                        <?php echo e(__(":number% of guests recommend",['number'=>$row->recommend_percent])); ?>

                    </div>
                </div>
            <?php endif; ?>
        <?php endif; ?>
    </div>
</div>
<?php if($translation->content): ?>
    <div class="g-overview">
        <h3><?php echo e(__("Description")); ?></h3>
        <div class="description">
            <?php echo $translation->content ?>
        </div>
    </div>
<?php endif; ?>
<?php echo $__env->make('Job::frontend.layouts.details.Job-rooms', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<div class="g-all-category is_mobile">
    <?php echo $__env->make('Job::frontend.layouts.details.Job-categories', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</div>
<div class="g-rules">
    <h3><?php echo e(__("Rules")); ?></h3>
    <div class="description">
        <div class="row">
            <div class="col-lg-4">
                <div class="key"><?php echo e(__("Check In")); ?></div>
            </div>
            <div class="col-lg-8">
                <div class="value">	<?php echo e($row->start_at); ?> </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <div class="key"><?php echo e(__("Check Out")); ?></div>
            </div>
            <div class="col-lg-8">
                <div class="value">	<?php echo e($row->duration); ?> </div>
            </div>
        </div>
    </div>
</div>
<div class="bravo-hr"></div>
<?php if($row->map_lat && $row->map_lng): ?>
    <div class="g-location">
        <div class="location-title">
            <h3><?php echo e(__("Location")); ?></h3>
            <?php if($translation->address): ?>
                <div class="address">
                    <i class="icofont-location-arrow"></i>
                    <?php echo e($translation->address); ?>

                </div>
            <?php endif; ?>
        </div>
        <div class="location-map">
            <div id="map_content"></div>
        </div>
    </div>
<?php endif; ?><?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/Job/Views/frontend/layouts/details/Job-detail.blade.php ENDPATH**/ ?>