<div class="user-sub-header">
    <div class="container">
        <nav class="nav nav-pills">
            <?php
                $nav_class = '';
                if(isset($active_class)){
                    $nav_class = $active_class;
                }
            ?>
            <a href="/user/job" class="nav-item nav-link <?php if($nav_class == 'job_dashboard'): ?>  active <?php endif; ?>">
                <span>My Jobs</span>
            </a>
            <a href="/user/job/create" class="nav-item nav-link <?php if($nav_class == 'job_create'): ?>  active <?php endif; ?>">
                <span>Post a Job</span>
            </a>
            <a href="/user/profile" class="nav-item nav-link <?php if($nav_class == 'user_profile'): ?>  active <?php endif; ?>">
                <span>Profile</span>
            </a>
            <a href="/user/profile/change-password" class="nav-item nav-link <?php if($nav_class == 'change_pass'): ?>  active <?php endif; ?>" style="width: 20rem">
                <span>Change&nbspPassword</span>
            </a>
        </nav>
    </div>
</div>
<style>
.nav-item.nav-link.active>span{
    position: relative;
    left: -20px;
}
.nav-item.nav-link.active::before{
    content: "";
    height: 0;
    width: 0px;
    position: relative;
    <?php switch($nav_class):
        case ('job_dashboard'): ?>
            left: calc( 50% - 30px); 
            <?php break; ?>
        <?php case ('job_create'): ?>
            left: calc( 50% - 20px); 
            <?php break; ?>
        <?php case ('user_profile'): ?>
            left: calc( 50% - 40px); 
            <?php break; ?>
        <?php case ('change_pass'): ?>
            left: calc( 50% - 40px); 
            <?php break; ?>
    <?php endswitch; ?>
    bottom: -8px;
    border-left: 20px solid transparent;
    border-right: 20px solid transparent;
    border-bottom: 10px solid #ffffff;
} 
</style><?php /**PATH /home/znwaqgrx/public_html/modules/Layout/parts/user-sub-header.blade.php ENDPATH**/ ?>