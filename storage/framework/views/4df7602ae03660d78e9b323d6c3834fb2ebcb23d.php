<div class="row">                
    <div class="col-12 i-s-title pt-4">
        <h6 class="panel-body-title">Dates</h6>
        <span></span>
    </div>
</div>
<div class="row">                
    <div class="col-md-6">
        <div class="form-group">
            <label><?php echo e(__("InternShip Starts")); ?></label>
            <input  name="start_at" type="date" value="<?php echo e($row->start_at); ?>" placeholder="<?php echo e(__("Start Date")); ?>" class="form-control">
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group">
            <label><?php echo e(__("Duration-Month")); ?></label>
            <input name="duration" class="form-control" type="number" value="<?php echo e($row->duration); ?>" placeholder="<?php echo e(__('between 1-6 months')); ?>" min="1" max="6">
        </div>
    </div>
</div>
<?php
$salary = json_decode($row->salary);
if(!isset($salary->main)){
    $salary = [
        'main'=>''
    ]; 
    $salary = json_decode(json_encode($salary));  
}
?>
<div class="row job-salary" <?php if($row->job_type =='Practice'): ?> style="display: none;" <?php endif; ?>>
    <div class="col-12">
        <div class="form-group">
            <label for="salary"><?php echo e(__('Salary ( Only for Internships and Summer Jobs )')); ?></label>
        </div>
    </div>
    <div class="col-md-4">
        According to agreement
        <input type="radio" name="salary[main]" value="all" class="form-control"  
            <?php if($salary->main == 'all'|| $salary->main == '' || !$row->id): ?> checked <?php endif; ?>
        >
    </div>
    <div class="col-md-4" style="display: flex" >
        Hourly
        <input type="radio" name="salary[main]" value="hourly" class="form-control input-radio hourly"
            <?php if($salary->main == 'hourly'): ?> checked <?php endif; ?>    
        >
        <input type="number" name="salary[hourly]" id="" class="form-control input-number hourly" 
        <?php if($salary->main == 'hourly'): ?> value="<?php echo e($salary->hourly); ?>" <?php else: ?> disabled <?php endif; ?>
        >
    </div>
    <div class="col-md-4" style="display: flex" >
        Monthly
        <input type="radio" name="salary[main]" value="monthly" class="form-control input-radio monthly"
            <?php if($salary->main == 'monthly'): ?> checked <?php endif; ?>
        >
        <input type="number" name="salary[monthly]" id="" class="form-control input-number monthly" 
            <?php if($salary->main == 'monthly'): ?> value="<?php echo e($salary->monthly); ?>" <?php else: ?> disabled <?php endif; ?>
        >
    </div>
</div>
<?php /**PATH C:\xampp\htdocs\modules/Job/Views/frontend/layouts/user/edit/dates.blade.php ENDPATH**/ ?>