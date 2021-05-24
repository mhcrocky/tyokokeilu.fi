
@php
    use Jenssegers\Agent\Agent as Agent;
	$Agent = new Agent();
@endphp
<div class="bravo_header">
    <div class="{{$container_class ?? 'container-fluid'}} px-4">
        <div class="content">
            <div class="header-left">
                <i class="fas fa-bars"></i>
                <a href="{{route('home')}}" class="bravo-logo">
                    Työkokeilu
                </a>
                <div class="bravo-menu">
                    <?php generate_menu('primary') ?>
                </div>
            </div>
            <div class="header-right">
                @if ($Agent->isMobile())
                    <div class="mobile">
                        <div class="user dropdown-toggle" data-toggle="dropdown"><i class="fas fa-user"></i></div>
                        <ul class="dropdown-menu">
                            @if(!Auth::id())
                                <li class="dropdown-item"><a href="/user/job/create">Post a Job</a></li>
                                <li><a href="/login" class="auth-btn">{{__('Login')}}</a></li>
                                <li><a href="/register" class="auth-btn">{{__('Sign Up')}}</a></li>
                            @else
                            @if(Auth::user()->hasPermissionTo('dashboard_vendor_access'))
                                    <li><a href="{{route('job.vendor.index')}}"><i class="icon ion-md-analytics"></i> {{__("User Dashboard")}}</a></li>
                                    @endif
                                    <li class="@if(Auth::user()->hasPermissionTo('dashboard_vendor_access')) menu-hr @endif">
                                        <a href="{{route('user.profile.index')}}"><i class="icon ion-md-construct"></i> {{__("My profile")}}</a>
                                    </li>
                                    <li class="menu-hr"><a href="{{route('user.change_password')}}"><i class="fa fa-lock"></i> {{__("Change password")}}</a></li>
                                    @if(Auth::user()->hasPermissionTo('dashboard_access'))
                                        <li class="menu-hr"><a href="{{url('/admin')}}"><i class="icon ion-ios-ribbon"></i> {{__("Admin Dashboard")}}</a></li>
                                    @endif
                                    <li class="menu-hr">
                                        <a  href="#" onclick="event.preventDefault(); document.getElementById('logout-form-topbar').submit();"><i class="fa fa-sign-out"></i> {{__('Logout')}}</a>
                                    </li>
                                </ul>
                                <form id="logout-form-topbar" action="{{ route('auth.logout') }}" method="POST" style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            @endif
                        </ul>
                    </div>
                @else
                    <ul class="topbar-items">
                    @if(!Auth::id())
                        <li class="auth-item">
                            <a href="/user/job/create">
                                <button class="btn btn-jobpost mr-5"> Post a Job</button>
                            </a>
                            <a href="/login" class="auth-btn">{{__('Login')}}</a>
                            /
                            <a href="/register" class="auth-btn">{{__('Sign Up')}}</a>
                        </li>
                    @else
                        <li class="auth-item">
                            <a href="/user/job/create">
                                <button class="btn btn-jobpost mr-5"> Post a Job</button>
                            </a>
                        </li>
                        <li class="login-item dropdown">
                            <a href="#" data-toggle="dropdown" class="login dropdown-toggle">
                                <img src="{{Auth::User()->getAvatarUrl()}}" alt="{{Auth::User()->getDisplayName()}}" width="40" height="40" style="border: 1px solid lightgrey;border-radius:5px;">
                            </a>
                            <ul class="dropdown-menu text-left">
                                @if(Auth::user()->hasPermissionTo('dashboard_vendor_access'))
                                <li><a href="{{route('job.vendor.index')}}"><i class="icon ion-md-analytics"></i> {{__("User Dashboard")}}</a></li>
                                @endif
                                <li class="@if(Auth::user()->hasPermissionTo('dashboard_vendor_access')) menu-hr @endif">
                                    <a href="{{route('user.profile.index')}}"><i class="icon ion-md-construct"></i> {{__("My profile")}}</a>
                                </li>
                                <li class="menu-hr"><a href="{{route('user.change_password')}}"><i class="fa fa-lock"></i> {{__("Change password")}}</a></li>
                                @if(Auth::user()->hasPermissionTo('dashboard_access'))
                                    <li class="menu-hr"><a href="{{url('/admin')}}"><i class="icon ion-ios-ribbon"></i> {{__("Admin Dashboard")}}</a></li>
                                @endif
                                <li class="menu-hr">
                                    <a  href="#" onclick="event.preventDefault(); document.getElementById('logout-form-topbar').submit();"><i class="fa fa-sign-out"></i> {{__('Logout')}}</a>
                                </li>
                            </ul>
                            <form id="logout-form-topbar" action="{{ route('auth.logout') }}" method="POST" style="display: none;">
                                {{ csrf_field() }}
                            </form>
                        </li>
                    @endif
                    </ul>
                @endif
            </div>
        </div>
    </div>
</div>