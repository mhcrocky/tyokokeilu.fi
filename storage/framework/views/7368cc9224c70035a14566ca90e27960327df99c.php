
<?php $__env->startSection('head'); ?>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div class="container">
    <?php echo $__env->make('admin.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <div class="row">
        <div class="col-md-3">
            <?php echo $__env->make('Job::frontend.layouts.user.profile-card', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        </div>
        <div class="col-md-9">
            <form action="<?php echo e(route('user.profile.update')); ?>" method="post" class="input-has-icon">
                <h2 class="title-bar">
                    <?php echo e(__("Edit profile")); ?>

                        <button class="btn btn-danger" type="submit" style="float: right"><?php echo e(__('Save Changes')); ?></button>
                        <a class="btn btn-primary mr-2" style="float: right" href="<?php echo e(route('user.change_password')); ?>" ><?php echo e(__('Change Password')); ?></a>
                </h2>
                <?php echo csrf_field(); ?>
                <div class="panel p-4 shadow-sm mb-4">           
                    <?php if($is_vendor_access): ?>
                    <div class="i-s-title pt-4">
                        <h6 class="panel-body-title">GENERAL</h6>
                        <span></span>
                    </div>              
                    <div class="form-row">                
                        <div class="form-group col-md-4 ">
                            <label><?php echo e(__("Company name")); ?></label>
                            <input type="text" value="<?php echo e(old('business_name',$dataUser->business_name)); ?>" name="business_name" placeholder="<?php echo e(__("Business name")); ?>" class="form-control">
                            <i class="fa fa-user input-icon"></i>
                        </div>
                        <div class="form-group col-md-4">
                            <label><?php echo e(__("Company ID")); ?></label>
                            <input type="text" value="<?php echo e(old('business_id',$dataUser->business_id)); ?>" name="business_id" placeholder="<?php echo e(__("Business ID")); ?>" class="form-control">
                            <i class="fa fa-user input-icon"></i>
                        </div>
                        <div class="form-group col-md-4">
                            <label><?php echo e(__("Company ID")); ?></label>
                            <input type="text" value="<?php echo e(old('business_id',$dataUser->business_id)); ?>" name="business_id" placeholder="<?php echo e(__("Business ID")); ?>" class="form-control">
                            <i class="fa fa-user input-icon"></i>
                        </div>
                    </div>
                    <?php endif; ?>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label><?php echo e(__("First name")); ?></label>
                            <input type="text" value="<?php echo e(old('first_name',$dataUser->first_name)); ?>" name="first_name" placeholder="<?php echo e(__("First name")); ?>" class="form-control">
                            <i class="fa fa-user input-icon"></i>
                        </div>
                        <div class="form-group col-md-6">
                            <label><?php echo e(__("Last name")); ?></label>
                            <input type="text" value="<?php echo e(old('last_name',$dataUser->last_name)); ?>" name="last_name" placeholder="<?php echo e(__("Last name")); ?>" class="form-control">
                            <i class="fa fa-user input-icon"></i>
                        </div>
                    </div>
                    <div class="i-s-title pt-4">
                        <h6 class="panel-body-title">CONTACT</h6>
                        <span></span>
                    </div> 
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <label><?php echo e(__("Phone")); ?></label>
                            <input type="text" value="<?php echo e(old('phone',$dataUser->phone)); ?>" name="phone" placeholder="<?php echo e(__("Phone Number")); ?>" class="form-control">
                            <i class="fa fa-phone input-icon"></i>
                        </div>
                        <div class="form-group col-md-4">
                            <label><?php echo e(__("Mobile")); ?></label>
                            <input type="text" name="phone" placeholder="<?php echo e(__("Mobile")); ?>" class="form-control">
                            <i class="fa fa-phone input-icon"></i>
                        </div>
                        <div class="form-group col-md-4">
                            <label><?php echo e(__("E-mail")); ?></label>
                            <input type="text" name="email" value="<?php echo e(old('email',$dataUser->email)); ?>" placeholder="<?php echo e(__("E-mail")); ?>" class="form-control">
                            <i class="fa fa-envelope input-icon"></i>
                        </div>
                        <div class="form-group col-md-8">
                            <label><?php echo e(__("Address")); ?></label>
                            <input type="text" value="<?php echo e(old('address',$dataUser->address)); ?>" name="address" placeholder="<?php echo e(__("Address")); ?>" class="form-control">
                            <i class="fa fa-location-arrow input-icon"></i>
                        </div>
                        <div class="form-group col-md-4">
                            <label><?php echo e(__("City")); ?></label>
                            <select name="city" class="form-control">
                                <option value=""><?php echo e(__("Select City")); ?></option>
                                <?php
                                $selected_city = $dataUser->city;
                                $traverse = function ($locations , $prefix = '') use (&$traverse,$selected_city) {
                                    foreach ($locations as $location) {
                                        $selected = '';
                                        if ($selected_city == $location->id)
                                            $selected = 'selected';
                                        printf("<option value='%s' %s>%s</option>", $location->id, $selected, $prefix . ' ' . $location->name);
                                    }
                                };
                                $traverse($locations);
                                ?>
                            </select>
                            <i class="fa fa-street-view input-icon"></i>
                        </div>
                    </div>
                    <div class="i-s-title pt-4">
                        <h6 class="panel-body-title">ABOUT&nbspCOMPANY</h6>
                        <span></span>
                    </div> 
                    <div class="form-group">
                        <label><?php echo e(__("Tell About Your Company")); ?></label>
                        <textarea name="bio" rows="5" class="form-control"><?php echo e(old('bio',$dataUser->bio)); ?></textarea>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('footer'); ?>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.user', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/User/Views/frontend/profile.blade.php ENDPATH**/ ?>