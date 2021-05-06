@extends('Layout::auth')
@section('content')
<div>
    <div class="container-xxl">
        <div class="row page-content">
            @include('auth.left')
            <div class="col-md-6 content-right">
                @include('Layout::admin.message')
                <div class="">
                    <h1 class="form-title">{{ __('Already User?') }}</h1>
                    <p class="form-sub-title">{{__('Sign In Now!')}}</p>
                    @include('auth.login-form',['captcha_action'=>'login_normal'])
                </div>
            </div>
        <div>
    </div>
</div>
@endsection
