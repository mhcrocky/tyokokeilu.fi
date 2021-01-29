
<?php $__env->startSection('head'); ?>
	<style type="text/css">
		.bravo-contact-block .section{
			padding: 80px 0 !important;
		}
	</style>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
<div id="bravo_content-wrapper">
	<?php echo $__env->make("Contact::frontend.blocks.contact.index", \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('footer'); ?>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH D:\Web\Laravel\VarghaJob\tyokoleilu\tyokokeilu\modules/Contact/Views/index.blade.php ENDPATH**/ ?>