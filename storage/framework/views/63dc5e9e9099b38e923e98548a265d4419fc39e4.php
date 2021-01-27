<div class="row">                
    <div class="col-12 i-s-title pt-4">
        <h6 class="panel-body-title">Contact</h6>
        <span></span>
    </div>
</div>
<div class="row input-has-icon">                
    <div class="col-md-6">
        <div class="form-group">
            <label><?php echo e(__("Phone")); ?></label>
            <input name="contact_phone" class="form-control" type="text" value="<?php echo e($row->contact_phone); ?>" >
            <i class="fa fa-phone input-icon"></i>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group">
            <label><?php echo e(__("Email")); ?></label>
            <input  name="contact_email" type="email" value="<?php echo e($row->contact_email); ?>" class="form-control">
            <i class="fa fa-envelope input-icon"></i>        
        </div>
    </div>
</div><?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/Job/Views/frontend/layouts/user/edit/contact.blade.php ENDPATH**/ ?>