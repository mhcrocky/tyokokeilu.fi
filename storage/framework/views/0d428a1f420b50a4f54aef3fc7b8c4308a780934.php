<form class="form bravo-form-register" method="post">
    <?php echo csrf_field(); ?>
    <div class="form-group">
        <label for="business_name">Company Name</label>
        <input type="text" class="form-control required" name="business_name" autocomplete="off" placeholder="<?php echo e(__("Company Name")); ?>" required>
    </div>
    <div class="form-group">
        <label for="business_id">Company ID</label>
        <input type="text" class="form-control required" name="business_id" autocomplete="off" placeholder="<?php echo e(__("Company Id")); ?>" required>
    </div>
    <div class="form-group">
        <label for="email">Email Address</label>
        <input type="email" class="form-control required" name="email" autocomplete="off" placeholder="<?php echo e(__('Email address')); ?>" required>
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control required" name="password" autocomplete="off" placeholder="<?php echo e(__('Password')); ?>" required>
    </div>
    <div class="form-group">
        <label for="repassword">Re-Type Password</label>
        <input type="repassword" class="form-control required" name="password" autocomplete="off" placeholder="<?php echo e(__('Password')); ?>" required>
    </div>
    <div class="form-group">
        <label for="term">
            <input id="term" type="checkbox" name="term" class="mr5 required" required>
            <?php echo __("I have read and accept the <a href=':link' target='_blank'>Terms and<span style='color:#ff8149;'> Privacy Policy</span></a>",['link'=>get_page_url(setting_item('booking_term_conditions'))]); ?>

            <span class="checkmark fcheckbox"></span>
        </label>
    </div>
    <?php if(setting_item("user_enable_register_recaptcha")): ?>
        <div class="form-group">
            <?php echo e(recaptcha_field($captcha_action ?? 'register')); ?>

        </div>
    <?php endif; ?>
    <div class="form-group">
        <button type="submit" class="btn btn-primary form-control form-submit">
            <?php echo e(__('Sign Up')); ?>

        </button>
    </div>
    <?php if(setting_item('facebook_enable') or setting_item('google_enable') or setting_item('twitter_enable')): ?>
        <div class="advanced">
            <p class="text-center f14 c-grey"><?php echo e(__("or continue with")); ?></p>
            <div class="row">
                <?php if(setting_item('facebook_enable')): ?>
                    <div class="col-xs-12 col-sm-4">
                        <a href="<?php echo e(url('/social-login/facebook')); ?>" class="btn btn_login_fb_link"
                           data-channel="facebook">
                            <i class="input-icon fa fa-facebook"></i>
                            <?php echo e(__('Facebook')); ?>

                        </a>
                    </div>
                <?php endif; ?>
                <?php if(setting_item('google_enable')): ?>
                    <div class="col-xs-12 col-sm-4">
                        <a href="<?php echo e(url('social-login/google')); ?>" class="btn btn_login_gg_link" data-channel="google">
                            <i class="input-icon fa fa-google"></i>
                            <?php echo e(__('Google')); ?>

                        </a>
                    </div>
                <?php endif; ?>
                <?php if(setting_item('twitter_enable')): ?>
                    <div class="col-xs-12 col-sm-4">
                        <a href="<?php echo e(url('social-login/twitter')); ?>" class="btn btn_login_tw_link" data-channel="twitter">
                            <i class="input-icon fa fa-twitter"></i>
                            <?php echo e(__('Twitter')); ?>

                        </a>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    <?php endif; ?>
    <div class="c-grey f14 text-center">
       <?php echo e(__(" Already have an account?")); ?>

        <a style="color: #AF6116" href="/login"><?php echo e(__("Log In")); ?></a>
    </div>
</form><?php /**PATH /home/znwaqgrx/public_html/resources/views/auth/register-form.blade.php ENDPATH**/ ?>