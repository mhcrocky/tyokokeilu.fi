<div class="item-list" style="border: 1px solid lightgrey;border-radius:15px;">
    <?php if($row->discount_percent): ?>
        <div class="sale_info"><?php echo e($row->discount_percent); ?></div>
    <?php endif; ?>
    <div class="row">
        <div class="col-md-3">
            <div class="thumb-image">
                <a href="<?php echo e($row->getDetailUrl()); ?>" target="_blank">
                    <?php if($row->image_url): ?>
                        <img src="<?php echo e($row->image_url); ?>" class="img-responsive" alt="">
                    <?php endif; ?>
                </a>
            </div>
        </div>
        <div class="col-md-9">
            <div class="float-left">
                <div class="item-title">
                    <a href="<?php echo e($row->getDetailUrl()); ?>" target="_blank">
                        <?php echo e($row->title); ?>

                    </a>
                </div>
                <div class="location">
                    <?php echo e(__("Location")); ?>:
                    <?php if(!empty($row->location->name)): ?>
                         <span><?php echo e($row->location->name ?? ''); ?></span>
                    <?php else: ?>
                        <span>---</span>
                    <?php endif; ?>
                </div>
                <div class="location">
                    <?php echo e(__("Starting")); ?>: <span><?php echo e(display_date($row->start_at)); ?></span>
                </div>
                <div class="location">
                    <?php echo e(__("Status")); ?>: <span class="job-status"><?php echo e(__($row->status)); ?></span>
                </div>
            </div>
            <div class="control-action float-right">
                
                
                <?php if($row->status == 'publish'): ?>
                    <a href="<?php echo e(route("job.vendor.bulk_edit",[$row->id,'action' => "make-hide"])); ?>" class="btn btn-light"><?php echo e(__("CLOSE")); ?></a>
                <?php endif; ?>
                <?php if(Auth::user()->hasPermissionTo('job_update')): ?>
                    <a href="<?php echo e(route("job.vendor.edit",[$row->id])); ?>" class="btn btn-light"><?php echo e(__("EDIT")); ?></a>
                <?php endif; ?>
                <?php if($row->status == 'draft'): ?>
                    <a href="<?php echo e(route("job.vendor.bulk_edit",[$row->id,'action' => "make-publish"])); ?>" class="btn btn-success"><?php echo e(__("RECOVERY")); ?></a>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>
<?php /**PATH C:\xampp\htdocs\modules/Job/Views/frontend/vendorJob/loop-list.blade.php ENDPATH**/ ?>