<div class="user-sub-header">
    <div class="container">
        <nav class="nav nav-pills position-relative">
            @php
                $nav_class = '';
                if(isset($active_class)){
                    $nav_class = $active_class;
                }
            @endphp
            <a href="/user/job" class="pl-0 mr-4 nav-item nav-link @if($nav_class == 'job_dashboard')  active @endif">
                <span><i class="fas fa-home mr-2"></i>Dashboard</span>
            </a>
            <a href="/user/job/create" class=" nav-item nav-link @if($nav_class == 'job_create')  active @endif">
                <span><i class="fas fa-arrow-right mr-2"></i>Post&nbspa&nbspJob</span>
            </a>
            <a href="/user/profile" class="mr-4 nav-item nav-link @if($nav_class == 'user_profile')  active @endif">
                <span><i class="fas fa-user mr-2"></i>Profile</span>
            </a>
            <a href="/user/profile/change-password" class="mr-4 nav-item nav-link @if($nav_class == 'change_pass')  active @endif">
                <span><i class="fa fa-flag mr-2"></i>Change&nbspPassword</span>
            </a>
            <a href="/Logout" style="right:0;" class="pr-0 nav-item nav-link position-absolute @if($nav_class == 'Logout')  active @endif">
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
        @switch($nav_class)
            @case('job_dashboard')
                left: calc( 50% - 30px); 
                @break
            @case('job_create')
                left: calc( 50% - 30px); 
                @break
            @case('user_profile')
                left: calc( 50% - 30px); 
                @break
            @case('change_pass')
                left: calc( 50% - 55px); 
                @break
        @endswitch
    } 
    </style>