<div class="row">                
    <div class="col-12 i-s-title pt-4">
        <h6 class="panel-body-title">Dates</h6>
        <span></span>
    </div>
</div>
<div class="row">                
    <div class="col-md-6">
        <div class="form-group">
            <label for="start_at" class="required"><?php echo e(__("InternShip Starts")); ?></label>
            <input  name="start_at" type="date" value="<?php echo e($row->start_at); ?>" placeholder="<?php echo e(__("Start Date")); ?>" class="form-control" required>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group">
            <label for="duration" class="required"><?php echo e(__("Duration-Month")); ?></label>
            <input name="duration" class="form-control required" type="number" value="<?php echo e($row->duration); ?>" placeholder="<?php echo e(__('between 1-6 months')); ?>" min="1" max="6" required>
        </div>
    </div>
</div>

<?php /**PATH D:\_Work\Vargha\tyokokeilu.fi\modules/Job/Views/frontend/layouts/user/edit/dates.blade.php ENDPATH**/ ?>