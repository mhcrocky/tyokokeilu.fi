@extends('Layout::auth')
@section('content')
<div>
    <div class="container-xxl">
        <div class="row page-content">
            @include('auth.left')
            <div class="col-md-6 content-right">
                @include('Layout::admin.message')
                <div class="">
                    <h1 class="form-title">{{ __('Login') }}</h1>
                    <p class="form-sub-title mt-4 mb-5">{{__('Don’t have an account?')}}
                        <a style="font-weight: bold" href="/register">Create your account,</a>
                        {{__('it takes less than a minute')}}
                    </p>
                    @include('auth.login-form',['captcha_action'=>'login_normal'])
                </div>
            </div>
        <div>
    </div>
</div>
@endsection
