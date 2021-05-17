@extends('layouts.user')
@section('head')
@endsection
@section('content')
<div class="page-template-content">
    <div class="container">
        @include('admin.message')
        <div class="row">
            <div class="col-md-3 parent-card">
                @include('Job::frontend.layouts.user.profile-card')
            </div>
            <div class="col-md-9">
                <div class="user-profile-content">
                    <form action="{{route('user.profile.update')}}" method="post" class="input-has-icon">
                        <div class="pl-4 mb-5 pb-5">           
                            <h2 class="title-bar">
                                {{__("Profile")}}
                            </h2>
                            @csrf
                            <input value="{{old('business_name',$dataUser->business_name)}}" name="business_name" style="display:none">
                            <input name="email" value="{{old('email',$dataUser->email)}}" style="display:none" >
                            @if($is_vendor_access)
                            <div class="i-s-title pt-4 mt-5">
                                <h6 class="panel-body-title w-100">Generals
                                    <button class="btn btn-action btn-danger" type="submit" style="float: right">{{__('Save Changes')}}</button>
                                    <a class="btn btn-action btn-default mr-2" style="float: right" href="{{ route('job.vendor.index') }}" >{{__('Cancel')}}</a>
                                </h6>
                            </div>              
                            <div class="form-row company">                
                                <div class="form-group col-md-6 ">
                                    <label class="required">{{__("Company name")}}</label>
                                    <input type="text" value="{{old('business_name',$dataUser->business_name)}}" name="business_name" placeholder="{{__("Business name")}}" class="form-control required" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="required">{{__("Company ID")}}</label>
                                    <input type="text" value="{{old('business_id',$dataUser->business_id)}}" placeholder="{{__("Business ID")}}" class="form-control required" disabled>
                                    {{-- <i class="fa fa-user input-icon"></i> --}}
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="required">{{__("Username")}}</label>
                                    <input type="text" value="{{old('email',$dataUser->email)}}" placeholder="{{__("")}}" class="form-control required" disabled>
                                    {{-- <i class="fa fa-user input-icon"></i> --}}
                                </div>
                                <div class="form-group col-md-6">
                                    <label>{{__("Category")}}</label>
                                    <select name="" id="" class="form-control">
                                        <option value="">All</option>
                                    </select>
                                    {{-- <i class="fa fa-user input-icon"></i> --}}
                                </div>
                                <div class="form-group col-md-6">
                                    <label>{{__("Name")}}</label>
                                    <input type="text" value="{{old('first_name',$dataUser->first_name)}}" name="first_name" placeholder="{{__("First name")}}" class="form-control">
                                </div>
                                <div class="form-group col-md-6">
                                    <label>{{__("Last name")}}</label>
                                    <input type="text" value="{{old('last_name',$dataUser->last_name)}}" name="last_name" placeholder="{{__("Last name")}}" class="form-control">
                                </div>
                            </div>
                            @endif
                            <div class="i-s-title pt-4 mt-5">
                                <h6 class="panel-body-title">CONTACT</h6>
                            </div> 
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label>{{__("Phone")}}</label>
                                    <input type="text" value="{{old('phone',$dataUser->phone)}}" name="phone" placeholder="{{__("Phone Number")}}" class="form-control">
                                </div>
                                <div class="form-group col-md-6">
                                    <label>{{__("Mobile")}}</label>
                                    <input type="text" name="mobile" value="{{old('mobile',$dataUser->mobile)}}" placeholder="{{__("Mobile")}}" class="form-control">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="contact_email" class="required">{{__("E-mail")}}</label>
                                    <input type="text" name="contact_email" value="{{old('contact_email',$dataUser->contact_email)}}" placeholder="{{__("E-mail")}}" class="form-control required" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>{{__("Website")}}</label>
                                    <input type="text" value="{{old('Website',$dataUser->Website)}}" name="Website" placeholder="{{__("Website")}}" class="form-control" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>{{__("Address")}}</label>
                                    <input type="text" value="{{old('address',$dataUser->address)}}" name="address" placeholder="{{__("Address")}}" class="form-control" required>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="required">{{__("City")}}</label>
                                    <select name="city" class="form-control required" required>
                                        <option value="">{{__("Select City")}}</option>
                                        <?php
                                        $selected_city = $dataUser->city;
                                        $traverse = function ($locations , $prefix = '') use (&$traverse,$selected_city) {
                                            foreach ($locations as $location) {
                                                $selected = '';
                                                if ($selected_city == $location->id)
                                                    $selected = 'selected';
                                                printf("<option value='%s' %s style='color: black'>%s</option>", $location->id, $selected, $prefix . ' ' . $location->name);
                                            }
                                        };
                                        $traverse($locations);
                                        ?>
                                    </select>
                                </div>
                            </div>
                            <div class="i-s-title pt-4 mt-5">
                                <h6 class="panel-body-title">ABOUT&nbspCOMPANY</h6>
                            </div> 
                            <div class="form-row">
                                <label>{{__("Tell About Your Company")}}</label>
                                <textarea name="bio" rows="5" class="col-sm-12 p-3 tell_company">{{old('bio',$dataUser->bio)}}</textarea>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
    </div>
</div>
<style>
.tox.tox-tinymce{
    border-radius: 10px;
}    
</style>
@endsection
@section('footer')
    <script type="text/javascript" src="{{ asset('libs/tinymce/js/tinymce/tinymce.min.js') }}" ></script>
    <script type="text/javascript" src="{{ asset('js/condition.js?_ver='.config('app.version')) }}"></script>
    <script>
        $('.img-company-logo')
    </script>
@endsection
