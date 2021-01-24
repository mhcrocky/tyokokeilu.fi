<div class="col-12">
    <h5>Dates</h5>
    <hr/>
</div>
<div class="col-md-6 pt-2 pb-3">
    <div class="form-group">
        <label><?php echo e(__("InternShip Starts")); ?></label>
        <input  name="start_at" type="date" value="<?php echo e($row->start_at); ?>" placeholder="<?php echo e(__("Start Date")); ?>" class="form-control">
    </div>
</div>
<div class="col-md-6 pt-2 pb-3">
    <div class="form-group">
        <label><?php echo e(__("Duration-Month")); ?></label>
        <input name="duration" class="form-control" type="number" value="<?php echo e($row->duration); ?>" placeholder="<?php echo e(__('between 1-6 months')); ?>" min="1" max="6">
    </div>
</div><?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/Job/Views/frontend/layouts/user/edit/jobtime.blade.php ENDPATH**/ ?>