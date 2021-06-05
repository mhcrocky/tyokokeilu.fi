<?php if(!is_api()): ?>
	<?php echo $__env->make('Layout::parts.default-footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php endif; ?>
<?php echo $__env->make('Layout::parts.login-register-modal', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php echo $__env->make('Layout::parts.chat', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php if(Auth::id()): ?>
	<?php echo $__env->make('Media::browser', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php endif; ?>
<link rel="stylesheet" href="<?php echo e(asset('libs/flags/css/flag-icon.min.css')); ?>">
<?php echo \App\Helpers\Assets::css(true); ?>


<script src="<?php echo e(asset('libs/lazy-load/intersection-observer.js')); ?>"></script>
<script async src="<?php echo e(asset('libs/lazy-load/lazyload.min.js')); ?>"></script>
<script>
    // Set the options to make LazyLoad self-initialize
    window.lazyLoadOptions = {
        elements_selector: ".lazy",
        // ... more custom settings?
    };
    // Listen to the initialization event and get the instance of LazyLoad
    window.addEventListener('LazyLoad::Initialized', function (event) {
        window.lazyLoadInstance = event.detail.instance;
    }, false);
</script>
<script src="<?php echo e(asset('libs/lodash.min.js')); ?>"></script>
<script src="<?php echo e(asset('libs/jquery-3.3.1.min.js')); ?>"></script>
<script src="<?php echo e(asset('libs/vue/vue.js')); ?>"></script>
<script src="<?php echo e(asset('libs/bootstrap/js/bootstrap.bundle.min.js')); ?>"></script>
<script src="<?php echo e(asset('libs/bootbox/bootbox.min.js')); ?>"></script>
<?php if(Auth::id()): ?>
	<script src="<?php echo e(asset('module/media/js/browser.js?_ver='.config('app.version'))); ?>"></script>
<?php endif; ?>
<script src="<?php echo e(asset('libs/carousel-2/owl.carousel.min.js')); ?>"></script>
<script type="text/javascript" src="<?php echo e(asset("libs/daterange/moment.min.js")); ?>"></script>
<script type="text/javascript" src="<?php echo e(asset("libs/daterange/daterangepicker.min.js")); ?>"></script>
<script src="<?php echo e(asset('libs/select2/js/select2.min.js')); ?>"></script>
<script src="<?php echo e(asset('js/functions.js?_ver='.config('app.version'))); ?>"></script>
<?php if(setting_item('inbox_enable')): ?>
	<script src="<?php echo e(asset('module/core/js/chat-engine.js?_ver='.config('app.version'))); ?>"></script>
<?php endif; ?>
<?php if(
    setting_item('tour_location_search_style')=='autocompletePlace' || setting_item('job_location_search_style')=='autocompletePlace' || setting_item('car_location_search_style')=='autocompletePlace' || setting_item('space_location_search_style')=='autocompletePlace' || setting_item('job_location_search_style')=='autocompletePlace' || setting_item('event_location_search_style')=='autocompletePlace'
): ?>
	<?php echo App\Helpers\MapEngine::scripts(); ?>

<?php endif; ?>
<script src="<?php echo e(asset('js/home.js?_ver='.config('app.version'))); ?>"></script>
<?php if(!empty($is_user_page)): ?>
	<script src="<?php echo e(asset('module/user/js/user.js?_ver='.config('app.version'))); ?>"></script>
<?php endif; ?>
<?php if(setting_item('cookie_agreement_enable')==1 and request()->cookie('booking_cookie_agreement_enable') !=1 and !is_api()): ?>
	<div class="booking_cookie_agreement p-3 d-flex fixed-bottom">
		<div class="content-cookie"><?php echo setting_item_with_lang('cookie_agreement_content'); ?></div>
		<button class="btn save-cookie"><?php echo setting_item_with_lang('cookie_agreement_button_text'); ?></button>
	</div>
	<script>
        var save_cookie_url = '<?php echo e(route('core.cookie.check')); ?>';
	</script>
	<script src="<?php echo e(asset('js/cookie.js?_ver='.config('app.version'))); ?>"></script>
<?php endif; ?>
<?php echo \App\Helpers\Assets::js(true); ?>

<?php echo $__env->yieldContent('footer'); ?>
<?php \App\Helpers\ReCaptchaEngine::scripts() ?>
<?php /**PATH D:\Task\2021-05-08(Vargar@250$)\modules/Layout/parts/footer.blade.php ENDPATH**/ ?>