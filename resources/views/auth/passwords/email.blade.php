@extends('Layout::auth')

@section('content')

<div class="container-xxl">

    <div class="row page-content">
        @include('auth.left')
        <div class="col-md-6 content-right">    

                <div style="padding:60px;"></div>
                <h1>{{ __('Reset Password') }}</h1>

                <div class="">

                    @if (session('status'))

                        <div class="alert alert-success" role="alert">

                            {{ session('status') }}

                        </div>

                    @endif

                    <form method="POST" action="{{ route('password.email') }}">

                        @csrf

                        <div class="form-group mt-5">

                            <input id="email" type="email" placeholder="Enter e-mail address" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>

                            @if ($errors->has('email'))

                                <span class="invalid-feedback" role="alert">

                                    <strong>{{ $errors->first('email') }}</strong>

                                </span>

                            @endif

                        </div>

                        <div class="form-group mb-0">
                            <div class="col-md-12 mt-4" style="text-align:right;">
                                <a class="go_to_login" href="/login">Go back to login</a>
                            </div>
                            <div class="col-md-12 mt-5">
                                <button id="rest_pwd" type="submit" class="btn btn-primary float-right">

                                    {{ __('Rest Password') }}

                                </button>
                            </div>

                        </div>

                    </form>

                </div>

        </div>

    </div>

</div>

@endsection

