@extends('Layout::auth')
@section('content')
    <div class="container-xxl">
        <div class="row page-content">
            @include('auth.left')
            <div class="col-md-6 content-right">
                <div class="">
                    <h1 class="form-title">{{ __('Sign Up for FREE.') }}</h1>
                    <p class="form-sub-title">{{__('Join Thousands of Companies That Use Työkokeilu
                        Every Day !')}}</p>
                    @include('auth.register-form',['captcha_action'=>'register_normal'])
                </div>
            </div>
        </div>
    </div>
@endsection
