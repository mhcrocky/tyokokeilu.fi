@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center auth-page-content">
        <div class="col-md-5">
            @include('Layout::admin.message')
            <div class="">
                <h4 class="form-title">{{ __('Already User?') }}</h4>
                <p class="form-sub-title">{{__('Sign In Now!')}}</p>
                @include('auth.login-form',['captcha_action'=>'login_normal'])
            </div>
        </div>
    </div>
</div>
@endsection
