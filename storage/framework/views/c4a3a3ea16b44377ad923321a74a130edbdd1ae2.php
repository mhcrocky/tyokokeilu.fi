<<<<<<< HEAD
<div class="bravo_header">
    <div class="<?php echo e($container_class ?? 'container-fluid'); ?> px-5">
        <div class="content">
            <div class="header-left">
=======

<?php
    use Jenssegers\Agent\Agent as Agent;
	$Agent = new Agent();
?>
<div class="bravo_header">
    <div class="<?php echo e($container_class ?? 'container-fluid'); ?> px-4">
        <div class="content">
            <div class="header-left">
                <i class="fas fa-bars"></i>
>>>>>>> parent of 668fd263 (Merge branch 'cloud' into desktop-ui-v2)
                <a href="<?php echo e(route('home')); ?>" class="bravo-logo">
                    Työkokeilu
                </a>
                <div class="bravo-menu">
                    <?php generate_menu('primary') ?>
                </div>
            </div>
            <div class="header-right">
<<<<<<< HEAD
                <ul class="topbar-items">
                    
                <?php if(!Auth::id()): ?>
=======
                <?php if($Agent->isMobile()): ?>
                    <div class="mobile">
                        <div class="user dropdown-toggle" data-toggle="dropdown"><i class="fas fa-user"></i></div>
                        <ul class="dropdown-menu">
                            <?php if(!Auth::id()): ?>
                                <li class="dropdown-item"><a href="/user/job/create">Post a Job</a></li>
                                <li><a href="/login" class="auth-btn"><?php echo e(__('Login')); ?></a></li>
                                <li><a href="/register" class="auth-btn"><?php echo e(__('Sign Up')); ?></a></li>
                            <?php else: ?>
                            <?php if(Auth::user()->hasPermissionTo('dashboard_vendor_access')): ?>
                                    <li><a href="<?php echo e(route('job.vendor.index')); ?>"><i class="icon ion-md-analytics"></i> <?php echo e(__("User Dashboard")); ?></a></li>
                                    <?php endif; ?>
                                    <li class="<?php if(Auth::user()->hasPermissionTo('dashboard_vendor_access')): ?> menu-hr <?php endif; ?>">
                                        <a href="<?php echo e(route('user.profile.index')); ?>"><i class="icon ion-md-construct"></i> <?php echo e(__("My profile")); ?></a>
                                    </li>
                                    <li class="menu-hr"><a href="<?php echo e(route('user.change_password')); ?>"><i class="fa fa-lock"></i> <?php echo e(__("Change password")); ?></a></li>
                                    <?php if(Auth::user()->hasPermissionTo('dashboard_access')): ?>
                                        <li class="menu-hr"><a href="<?php echo e(url('/admin')); ?>"><i class="icon ion-ios-ribbon"></i> <?php echo e(__("Admin Dashboard")); ?></a></li>
                                    <?php endif; ?>
                                    <li class="menu-hr">
                                        <a  href="#" onclick="event.preventDefault(); document.getElementById('logout-form-topbar').submit();"><i class="fa fa-sign-out"></i> <?php echo e(__('Logout')); ?></a>
                                    </li>
                                </ul>
                                <form id="logout-form-topbar" action="<?php echo e(route('auth.logout')); ?>" method="POST" style="display: none;">
                                    <?php echo e(csrf_field()); ?>

                                </form>
                            <?php endif; ?>
                        </ul>
                    </div>
                <?php else: ?>
                    <ul class="topbar-items">
                    <?php if(!Auth::id()): ?>
>>>>>>> parent of 668fd263 (Merge branch 'cloud' into desktop-ui-v2)
                        <li class="auth-item">
                            <a href="/user/job/create">
                                <button class="btn btn-jobpost mr-5"> Post a Job</button>
                            </a>
                            <a href="/login" class="auth-btn"><?php echo e(__('Login')); ?></a>
                            /
                            <a href="/register" class="auth-btn"><?php echo e(__('Sign Up')); ?></a>
                        </li>
                    <?php else: ?>
                        <li class="auth-item">
                            <a href="/user/job/create">
                                <button class="btn btn-jobpost mr-5"> Post a Job</button>
                            </a>
                        </li>
                        <li class="login-item dropdown">
<<<<<<< HEAD
                            <a href="#" data-toggle="dropdown" class="login">
                                <img src="<?php echo e(Auth::User()->getAvatarUrl()); ?>" alt="<?php echo e(Auth::User()->getDisplayName()); ?>" width="40" height="40" style="border: 1px solid lightgrey;border-radius:5px;">
                                <i class="fa fa-angle-down"></i>
=======
                            <a href="#" data-toggle="dropdown" class="login dropdown-toggle">
                                <img src="<?php echo e(Auth::User()->getAvatarUrl()); ?>" alt="<?php echo e(Auth::User()->getDisplayName()); ?>" width="40" height="40" style="border: 1px solid lightgrey;border-radius:5px;">
>>>>>>> parent of 668fd263 (Merge branch 'cloud' into desktop-ui-v2)
                            </a>
                            <ul class="dropdown-menu text-left">
                                <?php if(Auth::user()->hasPermissionTo('dashboard_vendor_access')): ?>
                                <li><a href="<?php echo e(route('job.vendor.index')); ?>"><i class="icon ion-md-analytics"></i> <?php echo e(__("User Dashboard")); ?></a></li>
                                <?php endif; ?>
                                <li class="<?php if(Auth::user()->hasPermissionTo('dashboard_vendor_access')): ?> menu-hr <?php endif; ?>">
                                    <a href="<?php echo e(route('user.profile.index')); ?>"><i class="icon ion-md-construct"></i> <?php echo e(__("My profile")); ?></a>
                                </li>
                                <li class="menu-hr"><a href="<?php echo e(route('user.change_password')); ?>"><i class="fa fa-lock"></i> <?php echo e(__("Change password")); ?></a></li>
                                <?php if(Auth::user()->hasPermissionTo('dashboard_access')): ?>
                                    <li class="menu-hr"><a href="<?php echo e(url('/admin')); ?>"><i class="icon ion-ios-ribbon"></i> <?php echo e(__("Admin Dashboard")); ?></a></li>
                                <?php endif; ?>
                                <li class="menu-hr">
                                    <a  href="#" onclick="event.preventDefault(); document.getElementById('logout-form-topbar').submit();"><i class="fa fa-sign-out"></i> <?php echo e(__('Logout')); ?></a>
                                </li>
                            </ul>
                            <form id="logout-form-topbar" action="<?php echo e(route('auth.logout')); ?>" method="POST" style="display: none;">
                                <?php echo e(csrf_field()); ?>

                            </form>
                        </li>
                    <?php endif; ?>
<<<<<<< HEAD
                </ul>
            </div>
        </div>
    </div>
    <div class="bravo-menu-mobile" style="display:none;">
        <div class="user-profile">
            <div class="b-close"><i class="icofont-scroll-left"></i></div>
            <div class="avatar"></div>
            <ul>
                <?php if(!Auth::id()): ?>
                    <li>
                        <a href="#login" data-toggle="modal" data-target="#login" class="login"><?php echo e(__('Login')); ?></a>
                    </li>
                    <li>
                        <a href="#register" data-toggle="modal" data-target="#register" class="signup"><?php echo e(__('Sign Up')); ?></a>
                    </li>
                <?php else: ?>
                    <li>
                        <a href="<?php echo e(route('user.profile.index')); ?>">
                            <i class="icofont-user-suited"></i> <?php echo e(__("Hi, :Name",['name'=>Auth::user()->getDisplayName()])); ?>

                        </a>
                    </li>
                    <li>
                        <a href="<?php echo e(route('user.profile.index')); ?>">
                            <i class="icon ion-md-construct"></i> <?php echo e(__("My profile")); ?>

                        </a>
                    </li>
                    <?php if(Auth::user()->hasPermissionTo('dashboard_access')): ?>
                        <li>
                            <a href="<?php echo e(url('/admin')); ?>"><i class="icon ion-ios-ribbon"></i> <?php echo e(__("Dashboard")); ?></a>
                        </li>
                    <?php endif; ?>
                    <li>
                        <a  href="#" onclick="event.preventDefault(); document.getElementById('logout-form-mobile').submit();">
                            <i class="fa fa-sign-out"></i> <?php echo e(__('Logout')); ?>

                        </a>
                        <form id="logout-form-mobile" action="<?php echo e(route('auth.logout')); ?>" method="POST" style="display: none;">
                            <?php echo e(csrf_field()); ?>

                        </form>
                    </li>

                <?php endif; ?>
            </ul>
            <ul class="multi-lang">
                <?php echo $__env->make('Core::frontend.currency-switcher', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </ul>
            <ul class="multi-lang">
                <?php echo $__env->make('Language::frontend.switcher', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            </ul>
        </div>
        <div class="g-menu">
            <?php generate_menu('primary') ?>
=======
                    </ul>
                <?php endif; ?>
            </div>
>>>>>>> parent of 668fd263 (Merge branch 'cloud' into desktop-ui-v2)
        </div>
    </div>
</div><?php /**PATH D:\Task\2021-05-08(Vargar@250$)\modules/Layout/parts/header.blade.php ENDPATH**/ ?>