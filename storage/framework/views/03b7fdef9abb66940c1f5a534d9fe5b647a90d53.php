<div class="col-md-4 pt-2 pb-3">
    <div class="form-group">
        <label><?php echo e(__("InternShip Starts")); ?></label>
        <input  name="start_at" type="date" value="<?php echo e($row->start_at); ?>" placeholder="<?php echo e(__("Start Date")); ?>" class="form-control">
    </div>
</div>
<div class="col-md-5 pt-2 pb-3 px-5">
    <div class="form-group">
        <label><?php echo e(__("Duration-Month")); ?></label>
        <input name="duration" class="form-control" type="number" value="<?php echo e($row->duration); ?>" placeholder="<?php echo e(__('between 1-6 months')); ?>" min="1" max="6">
    </div>
</div><?php /**PATH D:\_Work\Vargha\tyokokeilu.fi\modules/Job/Views/admin/job/jobtime.blade.php ENDPATH**/ ?>