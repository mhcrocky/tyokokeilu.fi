
<?php
    use Jenssegers\Agent\Agent as Agent;
	$Agent = new Agent();
?>
<div class="bravo_header">
    <div class="<?php echo e($container_class ?? 'container-fluid'); ?> px-4">
        <div class="content">
            <div class="header-left">
                <i class="fas fa-bars"></i>
                <a href="<?php echo e(route('home')); ?>" class="bravo-logo">
                    Työkokeilu
                </a>
                <div class="bravo-menu">
                    <?php generate_menu('primary') ?>
                </div>
            </div>
            <div class="header-right">
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
                            <a href="#" data-toggle="dropdown" class="login dropdown-toggle">
                                <img src="<?php echo e(Auth::User()->getAvatarUrl()); ?>" alt="<?php echo e(Auth::User()->getDisplayName()); ?>" width="40" height="40" style="border: 1px solid lightgrey;border-radius:5px;">
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
                    </ul>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div><?php /**PATH D:\Task\2021-05-08(Vargar)\modules/Layout/parts/header.blade.php ENDPATH**/ ?>