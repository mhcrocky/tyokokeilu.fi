<div class="user-sub-header">
    <div class="container">
        <nav class="nav nav-pills">
            @php
                $nav_class = '';
                if(isset($active_class)){
                    $nav_class = $active_class;
                }
            @endphp
            <a href="/user/job" class=" nav-item nav-link @if($nav_class == 'job_dashboard')  active @endif">
                <span><i class="fa fa-home"></i>Dashboard</span>
            </a>
            <a href="/user/job/create" class=" nav-item nav-link @if($nav_class == 'job_create')  active @endif">
                <span><i class="fa fa-long-arrow-right"></i>Post&nbspa&nbspJob</span>
            </a>
            <a href="/user/profile" class="nav-item nav-link @if($nav_class == 'user_profile')  active @endif">
                <span><i class="fa fa-user-o"></i>Profile</span>
            </a>
            <a href="/user/profile/change-password" class="nav-item nav-link @if($nav_class == 'change_pass')  active @endif">
                <span><i class="fa fa-flag"></i>Change&nbspPassword</span>
            </a>
            <a href="/Logout" class="nav-item nav-link @if($nav_class == 'Logout')  active @endif">
                <span><i class="fa fa-user"></i>Logout</span>
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