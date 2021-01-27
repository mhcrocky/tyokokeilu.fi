@extends('layouts.user')
@section('head')
@endsection
@section('content')
@include('admin.message')
<div class="page-template-content">
    <div class="container">
        <div class="row">
            <div class="col-md-3 parent-card">
                @include('Job::frontend.layouts.user.profile-card')
            </div>
            <div class="col-md-9">
                <div class="user-profile-content">
                    <form action="{{route('user.profile.update')}}" method="post" class="input-has-icon">
                        <div class="pl-4 mb-4">           
                            <h2 class="title-bar">
                                {{__("Edit profile")}}
                                    <button class="btn btn-action btn-danger" type="submit" style="float: right">{{__('Save Changes')}}</button>
                                    <a class="btn btn-action btn-primary mr-2" style="float: right" href="{{ route('job.vendor.index') }}" >{{__('Cancel')}}</a>
                            </h2>
                            @csrf
                            @if($is_vendor_access)
                            <div class="i-s-title pt-4">
                                <h6 class="panel-body-title">GENERAL</h6>
                                <span></span>
                            </div>              
                            <div class="form-row">                
                                <div class="form-group col-md-4 ">
                                    <label>{{__("Company name")}}</label>
                                    <input type="text" value="{{old('business_name',$dataUser->business_name)}}" name="business_name" placeholder="{{__("Business name")}}" class="form-control">
                                    <i class="fa fa-user input-icon"></i>
                                </div>
                                <div class="form-group col-md-4">
                                    <label>{{__("Company ID")}}</label>
                                    <input type="text" value="{{old('business_id',$dataUser->business_id)}}" name="business_id" placeholder="{{__("Business ID")}}" class="form-control">
                                    <i class="fa fa-user input-icon"></i>
                                </div>
                                <div class="form-group col-md-4">
                                    <label>{{__("Company ID")}}</label>
                                    <input type="text" value="{{old('business_id',$dataUser->business_id)}}" name="business_id" placeholder="{{__("Business ID")}}" class="form-control">
                                    <i class="fa fa-user input-icon"></i>
                                </div>
                            </div>
                            @endif
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label>{{__("First name")}}</label>
                                    <input type="text" value="{{old('first_name',$dataUser->first_name)}}" name="first_name" placeholder="{{__("First name")}}" class="form-control">
                                    <i class="fa fa-user input-icon"></i>
                                </div>
                                <div class="form-group col-md-6">
                                    <label>{{__("Last name")}}</label>
                                    <input type="text" value="{{old('last_name',$dataUser->last_name)}}" name="last_name" placeholder="{{__("Last name")}}" class="form-control">
                                    <i class="fa fa-user input-icon"></i>
                                </div>
                            </div>
                            <div class="i-s-title pt-4">
                                <h6 class="panel-body-title">CONTACT</h6>
                                <span></span>
                            </div> 
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label>{{__("Phone")}}</label>
                                    <input type="text" value="{{old('phone',$dataUser->phone)}}" name="phone" placeholder="{{__("Phone Number")}}" class="form-control">
                                    <i class="fa fa-phone input-icon"></i>
                                </div>
                                <div class="form-group col-md-4">
                                    <label>{{__("Mobile")}}</label>
                                    <input type="text" name="phone" placeholder="{{__("Mobile")}}" class="form-control">
                                    <i class="fa fa-phone input-icon"></i>
                                </div>
                                <div class="form-group col-md-4">
                                    <label>{{__("E-mail")}}</label>
                                    <input type="text" name="email" value="{{old('email',$dataUser->email)}}" placeholder="{{__("E-mail")}}" class="form-control">
                                    <i class="fa fa-envelope input-icon"></i>
                                </div>
                                <div class="form-group col-md-8">
                                    <label>{{__("Address")}}</label>
                                    <input type="text" value="{{old('address',$dataUser->address)}}" name="address" placeholder="{{__("Address")}}" class="form-control">
                                    <i class="fa fa-location-arrow input-icon"></i>
                                </div>
                                <div class="form-group col-md-4">
                                    <label>{{__("City")}}</label>
                                    <select name="city" class="form-control">
                                        <option value="">{{__("Select City")}}</option>
                                        <?php
                                        $selected_city = $dataUser->city;
                                        $traverse = function ($locations , $prefix = '') use (&$traverse,$selected_city) {
                                            foreach ($locations as $location) {
                                                $selected = '';
                                                if ($selected_city == $location->id)
                                                    $selected = 'selected';
                                                printf("<option value='%s' %s>%s</option>", $location->id, $selected, $prefix . ' ' . $location->name);
                                            }
                                        };
                                        $traverse($locations);
                                        ?>
                                    </select>
                                    <i class="fa fa-street-view input-icon"></i>
                                </div>
                            </div>
                            <div class="i-s-title pt-4">
                                <h6 class="panel-body-title">ABOUT&nbspCOMPANY</h6>
                                <span></span>
                            </div> 
                            <div class="form-group">
                                <label>{{__("Tell About Your Company")}}</label>
                                <textarea name="bio" rows="5" class="form-control">{{old('bio',$dataUser->bio)}}</textarea>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
    </div>
</div>
@endsection
@section('footer')

@endsection
