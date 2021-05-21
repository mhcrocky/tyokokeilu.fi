<div class="user-sub-header">
    <div class="container">
        <nav class="nav nav-pills position-relative">
            <?php
                $nav_class = '';
                if(isset($active_class)){
                    $nav_class = $active_class;
                }
            ?>
            <a href="/user/job" class=" mr-4 nav-item nav-link <?php if($nav_class == 'job_dashboard'): ?>  active <?php endif; ?>">
                <span><i class="fas fa-home mr-2"></i>Dashboard</span>
            </a>
            <a href="/user/job/create" class=" nav-item nav-link <?php if($nav_class == 'job_create'): ?>  active <?php endif; ?>">
                <span><i class="fas fa-arrow-right mr-2"></i>Post&nbspa&nbspJob</span>
            </a>
            <a href="/user/profile" class="mr-4 nav-item nav-link <?php if($nav_class == 'user_profile'): ?>  active <?php endif; ?>">
                <span><i class="fas fa-user mr-2"></i>Profile</span>
            </a>
            <a href="/user/profile/change-password" class="mr-4 nav-item nav-link <?php if($nav_class == 'change_pass'): ?>  active <?php endif; ?>">
                <span><i class="fa fa-flag mr-2"></i>Change&nbspPassword</span>
            </a>
            <a href="/Logout" style="right:0;" class="mr-4 nav-item nav-link position-absolute <?php if($nav_class == 'Logout'): ?>  active <?php endif; ?>">
                <span><i class="fa fa-user mr-2"></i>Logout</span>
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
        position: relative;
        <?php switch($nav_class):
            case ('job_dashboard'): ?>
                left: calc( 50% - 30px); 
                <?php break; ?>
            <?php case ('job_create'): ?>
                left: calc( 50% - 30px); 
                <?php break; ?>
            <?php case ('user_profile'): ?>
                left: calc( 50% - 30px); 
                <?php break; ?>
            <?php case ('change_pass'): ?>
                left: calc( 50% - 55px); 
                <?php break; ?>
        <?php endswitch; ?>
    } 
    </style><?php /**PATH D:\Task\2021-05-08(Vargar)\modules/Layout/parts/user-sub-header.blade.php ENDPATH**/ ?>