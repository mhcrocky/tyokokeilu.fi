<form class="form bravo-form-register" method="post">
    <?php echo csrf_field(); ?>
    <div class="form-group">
        <label for="business_name">Company Name</label>
        <input type="text" class="form-control" name="business_name" autocomplete="off" placeholder="<?php echo e(__("Company Name")); ?>"  >
    </div>
    <div class="form-group">
        <label for="business_id">Company ID</label>
        <input type="text" class="form-control" name="business_id" autocomplete="off" placeholder="<?php echo e(__("Company Id")); ?>">
    </div>
    <div class="form-group">
        <label for="email">Email Address</label>
        <input type="email" class="form-control" name="email" autocomplete="off" placeholder="<?php echo e(__('Email address')); ?>">
    </div>
    <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control" name="password" autocomplete="off" placeholder="<?php echo e(__('Password')); ?>">
    </div>
    <div class="form-group">
        <label for="repassword">Re-Type Password</label>
        <input type="repassword" class="form-control" name="password" autocomplete="off" placeholder="<?php echo e(__('Password')); ?>">
    </div>
    <div class="form-group">
        <label for="term">
            <input id="term" type="checkbox" name="term" class="mr5">
            <?php echo __("I have read and accept the <a href=':link' target='_blank'>Terms and Privacy Policy</a>",['link'=>get_page_url(setting_item('booking_term_conditions'))]); ?>

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

        <a href="/login"><?php echo e(__("Log In")); ?></a>
    </div>
</form>
<style>
.form-control:invalid{
    color: blue;
    background: #787;
}
</style><?php /**PATH C:\xampp\htdocs\resources\views/auth/register-form.blade.php ENDPATH**/ ?>