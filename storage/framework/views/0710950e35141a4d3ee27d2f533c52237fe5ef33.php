<form class="bravo-form-login mt-4" method="POST" action="<?php echo e(route('login')); ?>">
    <input type="hidden" name="redirect" value="<?php echo e(request()->query('redirect')); ?>">
    <?php echo csrf_field(); ?>
    <div class="form-group input-has-icon">
        <label for="email">Email Address</label>
        <div class="input-icon">
            <input type="text" class="form-control required" name="email" autocomplete="off" placeholder="<?php echo e(__('Your Email address')); ?>" required>
            <span>
                <i class="fa fa-envelope email-icon"></i>
            <span>
        </div>
    </div>
    <div class="form-group">
        <div class="input-icon">
            <label for="password">Password</label>
            <input type="password" class="form-control required" name="password" autocomplete="off"  placeholder="<?php echo e(__('**********')); ?>" required>
            <span>
            <span>
        </div>
    </div>
    <?php if(setting_item("user_enable_login_recaptcha")): ?>
        <div class="form-group">
            <?php echo e(recaptcha_field($captcha_action ?? 'login')); ?>

        </div>
    <?php endif; ?>
    <div class="form-group">
        <button class="mt-5 btn btn-primary form-submit form-control sign" type="submit">
            <?php echo e(__('SIGN IN')); ?>

        </button>
    </div>
    <?php if(setting_item('facebook_enable') or setting_item('google_enable') or setting_item('twitter_enable')): ?>
        <div class="advanced">
            <p class="text-center f14 c-grey"><?php echo e(__('or continue with')); ?></p>
            <div class="row">
                <?php if(setting_item('facebook_enable')): ?>
                    <div class="col-xs-12 col-sm-4">
                        <a href="<?php echo e(url('/social-login/facebook')); ?>"class="btn btn_login_fb_link" data-channel="facebook">
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
    <div class="c-grey font-medium f14 text-center">
         <?php echo e(__('Forgot Password?')); ?> <a style="color: #AF6116; font-weight:bold;"; href="<?php echo e(route("password.request")); ?>"><?php echo e(__('Reset here')); ?></a>
    </div>
    
</form>
<?php /**PATH D:\Task\2021-05-08(Vargar@250$)\resources\views/auth/login-form.blade.php ENDPATH**/ ?>