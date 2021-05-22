<?php $__env->startSection('content'); ?>

<div class="container-xxl">

    <div class="row page-content">
        <?php echo $__env->make('auth.left', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <div class="col-md-6 content-right">    

                <div style="padding:60px;"></div>
                <h1><?php echo e(__('Reset Password')); ?></h1>

                <div class="">

                    <?php if(session('status')): ?>

                        <div class="alert alert-success" role="alert">

                            <?php echo e(session('status')); ?>


                        </div>

                    <?php endif; ?>

                    <form method="POST" action="<?php echo e(route('password.email')); ?>">

                        <?php echo csrf_field(); ?>

                        <div class="form-group mt-5">

                            <input id="email" type="email" placeholder="Enter e-mail address" class="form-control<?php echo e($errors->has('email') ? ' is-invalid' : ''); ?>" name="email" value="<?php echo e(old('email')); ?>" required>

                            <?php if($errors->has('email')): ?>

                                <span class="invalid-feedback" role="alert">

                                    <strong><?php echo e($errors->first('email')); ?></strong>

                                </span>

                            <?php endif; ?>

                        </div>

                        <div class="form-group mb-0">
                            <div class="col-md-12 mt-4" style="text-align:right;">
                                <a class="go_to_login" href="/login">Go back to login</a>
                            </div>
                            <div class="col-md-12 mt-5">
                                <button id="rest_pwd" type="submit" class="btn btn-primary float-right">

                                    <?php echo e(__('Rest Password')); ?>


                                </button>
                            </div>

                        </div>

                    </form>

                </div>

        </div>

    </div>

</div>

<?php $__env->stopSection(); ?>


<?php echo $__env->make('Layout::auth', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /home/znwaqgrx/public_html/resources/views/auth/passwords/email.blade.php ENDPATH**/ ?>