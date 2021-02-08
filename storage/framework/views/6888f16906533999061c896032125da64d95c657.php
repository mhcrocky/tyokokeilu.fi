<?php if($translation->trip_ideas): ?>
    <div class="g-trip-ideas">
        <h3 class="py-5"><?php echo e(__("Trip Ideas")); ?></h3>
        <?php if(!empty($translation->trip_ideas)): ?>
            <?php if(!is_array($translation->trip_ideas)) $translation->trip_ideas = json_decode($translation->trip_ideas); ?>
            <?php $__currentLoopData = $translation->trip_ideas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key=>$trip_idea): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <div class="trip-idea mb-5">
                    <div class="row">
                        <div class="col-md-12 col-lg-8 pr-lg-5 pb-5">
                            <p class="trip-idea-category"><?php echo e(__('FEATURED ARTICLE')); ?></p>
                            <h2 class="pb-3"><?php echo e(@$trip_idea['title']); ?></h2>
                            <div class="description pb-3"><p><?php echo e($trip_idea['content']); ?></p></div>
                            <?php if($trip_idea['link']): ?>
                                <p><a href="<?php echo e($trip_idea['link']); ?>" target="_blank" class="read-more"><?php echo e(__('Read More')); ?></a></p>
                                <?php endif; ?>
                        </div>
                        <div class="col-md-12 col-lg-4 pb-5">
                            <?php if($trip_idea['image_id']): ?>
                                <?php echo get_image_tag($trip_idea['image_id'],'full',['class'=>'img-fluid']); ?>
                            <?php endif; ?>
                        </div>

                    </div>
                </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        <?php endif; ?>

    </div>
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\modules/Location/Views/frontend/layouts/details/location-trip-idea.blade.php ENDPATH**/ ?>