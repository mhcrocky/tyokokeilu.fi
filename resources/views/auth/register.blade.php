@extends('Layout::auth')
@section('content')
    <div class="container-xxl">
        <div class="row page-content">
            @include('auth.left')
            <div class="col-md-6 content-right">
                <div class="">
                    <h1 style="font-size:30px;" class="form-title">{{ __('Create an account.') }}</h1>
                    <p class="form-sub-title mt-5 mb-5">{{__('Join Thousands of Companies That Use Työkokeilu
                        Every Day ! If you already have an account')}}
                        <a href="/login">{{__("Log In")}}</a>
                    </p>
                    @include('auth.register-form',['captcha_action'=>'register_normal'])
                </div>
            </div>
        </div>
    </div>
@endsection
