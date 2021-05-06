@extends('layouts.user')
@section('head')
@endsection
@section('content')
<div class="container pt-5">
    <h1 class="title-bar mb-5">
        {{__("Change Password")}}
    </h1>
    @include('admin.message')
    <form action="{{ route("user.change_password.update") }}" method="post">
        @csrf
        <div class="row justify-content-center pb-5 mb-5">
            <div class="col-md-6">
                <div class="p-4 mb-5">
                    <div class="form-group">
                        <label>{{__("Current Password")}}</label>
                        <input type="password" name="current-password" placeholder="{{__("Current Password")}}" class="form-control required" required>
                    </div>
                    <div class="form-group">
                        <label>{{__("New Password")}}</label>
                        <input type="password" name="new-password" placeholder="{{__("New Password")}}" class="form-control required" required>
                                       </div>
                    <div class="form-group">
                        <label>{{__("New Password Again")}}</label>
                        <input type="password" name="new-password_confirmation" placeholder="{{__("New Password Again")}}" class="form-control required" required>
                    </div>
                    <div class="d-flex mt-5">
                        <input type="submit" class="btn btn-danger change_pwd form-control" value="{{__("CHANGE PASSWORD")}}" style="padding-top:.5rem">
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
@endsection
@section('footer')
@endsection
