<form class="bravo-form-login mt-4" method="POST" action="{{ route('login') }}">
    <input type="hidden" name="redirect" value="{{request()->query('redirect')}}">
    @csrf
    <div class="form-group input-has-icon">
        <label for="email">Email Address</label>
        <div class="input-icon">
            <input type="text" class="form-control required" name="email" autocomplete="off" placeholder="{{__('Your Email address')}}" required>
            <span>
                <i class="fa fa-envelope email-icon"></i>
            <span>
        </div>
    </div>
    <div class="form-group">
        <div class="input-icon">
            <label for="password">Password</label>
            <input type="password" class="form-control required" name="password" autocomplete="off"  placeholder="{{__('**********')}}" required>
            <span>
            <span>
        </div>
    </div>
    @if(setting_item("user_enable_login_recaptcha"))
        <div class="form-group">
            {{recaptcha_field($captcha_action ?? 'login')}}
        </div>
    @endif
    <div class="form-group">
        <button class="mt-5 btn btn-primary form-submit form-control sign" type="submit">
            {{ __('SIGN IN') }}
        </button>
    </div>
    @if(setting_item('facebook_enable') or setting_item('google_enable') or setting_item('twitter_enable'))
        <div class="advanced">
            <p class="text-center f14 c-grey">{{__('or continue with')}}</p>
            <div class="row">
                @if(setting_item('facebook_enable'))
                    <div class="col-xs-12 col-sm-4">
                        <a href="{{url('/social-login/facebook')}}"class="btn btn_login_fb_link" data-channel="facebook">
                            <i class="input-icon fa fa-facebook"></i>
                            {{__('Facebook')}}
                        </a>
                    </div>
                @endif
                @if(setting_item('google_enable'))
                    <div class="col-xs-12 col-sm-4">
                        <a href="{{url('social-login/google')}}" class="btn btn_login_gg_link" data-channel="google">
                            <i class="input-icon fa fa-google"></i>
                            {{__('Google')}}
                        </a>
                    </div>
                @endif
                @if(setting_item('twitter_enable'))
                    <div class="col-xs-12 col-sm-4">
                        <a href="{{url('social-login/twitter')}}" class="btn btn_login_tw_link" data-channel="twitter">
                            <i class="input-icon fa fa-twitter"></i>
                            {{__('Twitter')}}
                        </a>
                    </div>
                @endif
            </div>
        </div>
    @endif
    <div class="c-grey font-medium f14 text-center">
         {{__('Forgot Password?')}} <a style="color: #AF6116; font-weight:bold;"; href="{{ route("password.request") }}">{{__('Reset here')}}</a>
    </div>
    {{-- <div class="c-grey font-medium f14 text-center">
        <a href="{{ route("password.request") }}">{{__('Forgot Password?')}}</a>
   </div> --}}
</form>
