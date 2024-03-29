<?php
$user = Auth::user();
//$languages = \Modules\Language\Models\Language::getActive();
$locale = App::getLocale();
?>
<div class="header-logo flex-shrink-0">
    <h3 class="logo-text"><a href="<?php echo e(url('/admin')); ?>"><?php echo e(config('app.name')); ?> <span class="app-version"><?php echo e(config('app.version')); ?></span></a></h3>
</div>
<div class="header-widgets d-flex flex-grow-1">
    <div class="widgets-left d-flex flex-grow-1 align-items-center">
        <div class="header-widget">
            <span class="btn-toggle-admin-menu btn btn-sm btn-link"><i class="icon ion-ios-menu"></i></span>
        </div>
        <div class="header-widget search-widget">
            
            <a href="<?php echo e(url('/')); ?>" class="btn" target="_blank"><?php echo e(__('Home')); ?>

            </a>
        </div>
    </div>
    <div class="widgets-right flex-shrink-0 d-flex">
        
        
            
                
                    
                        
                            
                                
                            
                            
                        
                    
                
                
            
            
                
                    
                    
                        
                            
                        
                        
                    
                
            
        
        
        <div class="dropdown header-widget widget-user">
            <div data-toggle="dropdown" class="user-dropdown d-flex align-items-center" aria-haspopup="true" aria-expanded="false">
                <div class="user-info flex-grow-1">
                    <div class="user-name"><?php echo e($user->getDisplayName()); ?></div>
                    <div class="user-role"><?php echo e(ucfirst($user->roles[0]->name ?? '')); ?></div>
                </div>
                <span class="user-avatar flex-shrink-0">
                    <?php if($user->getAvatarUrl()): ?>
                        <img class="image-responsive image-avatar" src="<?php echo e($user->getAvatarUrl()); ?>" alt="<?php echo e($user->getDisplayName()); ?>">
                    <?php else: ?>
                        <span class="avatar-text"><?php echo e(ucfirst($user->getDisplayName()[0])); ?></span>
                    <?php endif; ?>
                </span>
                <i class="fa fa-angle-down"></i>
            </div>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                <a class="dropdown-item" href="<?php echo e(url('admin/module/user/edit/'.$user->id)); ?>"><?php echo e(__('Edit Profile')); ?></a>
                <a class="dropdown-item" href="<?php echo e(url('admin/module/user/password/'.$user->id)); ?>"><?php echo e(__('Change Password')); ?></a>
                <a class="dropdown-item" href="#" onclick="event.preventDefault(); document.getElementById('logout-form').submit();"><i class="fa fa-sign-out"></i> <?php echo e(__('Logout')); ?>

                </a>
            </div>
            <form id="logout-form" action="<?php echo e(route('auth.logout')); ?>" method="POST" style="display: none;">
                <?php echo e(csrf_field()); ?>

            </form>
        </div>
    </div>
</div>
<style>
.image-avatar{
    width: 30px;
    border-radius: 50%;
    text-align: center;
    background: #e67e22;
    color: #fff;
    font-size: 17px;
    display: inline-block;
    height: 32px;
    line-height: 32px;
}    
</style><?php /**PATH D:\Cloud\tyokokeilu.fi\modules/Layout/admin/parts/header.blade.php ENDPATH**/ ?>