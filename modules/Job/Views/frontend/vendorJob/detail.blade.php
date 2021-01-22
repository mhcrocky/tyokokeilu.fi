@extends('layouts.user')
@section('head')
@endsection
@section('content')
<div class="page-template-content">
    <div class="job-dashboard container">
        <div class="row">
            <div class="col-md-3">
                @include('Job::frontend.layouts.user.profile-card')
            </div>
            <div class="col-md-9">
                <div class="lang-content-box">
                    <form action="{{route('job.admin.store',['id'=>($row->id) ? $row->id : '-1','lang'=>request()->query('lang')])}}" method="post">
                        @csrf
                        <div class="container-fluid">
                            <div class="d-flex justify-content-between mb20 m">
                                <div class="">
                                    <h2 class="title-bar no-border-bottom">
                                        {{$row->id ? __('Edit: ').$row->title : __('Add new job')}}
                                    </h2>
                                    @include('admin.message')
                                    @if($row->id)
                                        @include('Language::admin.navigation')
                                    @endif                                    
                                    @if($row->slug)
                                        <p class="item-url-demo">{{__("Permalink")}}: {{ url( config('job.job_route_prefix') ) }}/<a href="#" class="open-edit-input" data-name="slug">{{$row->slug}}</a>
                                        </p>
                                    @endif
                                </div>
                                <div class="">
                                    @if($row->id)
                                        <a class="btn btn-warning btn-xs" href="{{route('job.admin.room.index',['job_id'=>$row->id])}}" target="_blank"><i class="fa fa-hand-o-right"></i> {{__("Manage Rooms")}}</a>
                                    @endif
                                    @if($row->slug)
                                        <a class="btn btn-primary btn-xs" href="{{$row->getDetailUrl(request()->query('lang'))}}" target="_blank">{{__("View Job")}}</a>
                                    @endif
                                </div>
                            </div>
                            @include('admin.message')
                            <div class="lang-content-box">
                                <div class="row p-5">
                                    @include('Job::admin.job.content')
                                    {{-- @include('Job::admin.job.category') --}}
                                    @include('Job::admin.job.jobtime')
                                    @include('Job::admin.job.contact')
                                    @include('Job::admin.job.location')
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <div class="form-group-image">
                                                {!! \Modules\Media\Helpers\FileHelper::fieldUpload('image_id',$row->image_id) !!}
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-9 p-5">
                                        <div class="panel border shadow">
                                            <div class="panel-title"><strong>{{__('Publish')}}</strong></div>
                                            <div class="panel-body">
                                                @if(is_default_lang())
                                                    <div>
                                                        <label><input @if($row->status=='publish') checked @endif type="radio" name="status" value="publish"> {{__("Publish")}}
                                                        </label></div>
                                                    <div>
                                                        <label><input @if($row->status=='draft') checked @endif type="radio" name="status" value="draft"> {{__("Draft")}}
                                                        </label></div>
                                                @endif
                                                <div class="text-right">
                                                    <button class="btn btn-danger" type="submit"><i class="fa fa-save"></i> {{__('Save Changes')}}</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>    
@endsection
@section('footer')
    <script type="text/javascript" src="{{ asset('libs/tinymce/js/tinymce/tinymce.min.js') }}" ></script>
    <script type="text/javascript" src="{{ asset('js/condition.js?_ver='.config('app.version')) }}"></script>
    {!! App\Helpers\MapEngine::scripts() !!}
    <script>
        jQuery(function ($) {
            new BravoMapEngine('map_content', {
                fitBounds: true,
                center: [{{$row->map_lat ?? "51.505"}}, {{$row->map_lng ?? "-0.09"}}],
                zoom:{{$row->map_zoom ?? "8"}},
                ready: function (engineMap) {
                    @if($row->map_lat && $row->map_lng)
                    engineMap.addMarker([{{$row->map_lat}}, {{$row->map_lng}}], {
                        icon_options: {}
                    });
                    @endif
                    engineMap.on('click', function (dataLatLng) {
                        engineMap.clearMarkers();
                        engineMap.addMarker(dataLatLng, {
                            icon_options: {}
                        });
                        $("input[name=map_lat]").attr("value", dataLatLng[0]);
                        $("input[name=map_lng]").attr("value", dataLatLng[1]);
                    });
                    engineMap.on('zoom_changed', function (zoom) {
                        $("input[name=map_zoom]").attr("value", zoom);
                    });
                    engineMap.searchBox($('#customPlaceAddress'),function (dataLatLng) {
                        engineMap.clearMarkers();
                        engineMap.addMarker(dataLatLng, {
                            icon_options: {}
                        });
                        $("input[name=map_lat]").attr("value", dataLatLng[0]);
                        $("input[name=map_lng]").attr("value", dataLatLng[1]);
                    });
                    engineMap.searchBox($('.bravo_searchbox'),function (dataLatLng) {
                        engineMap.clearMarkers();
                        engineMap.addMarker(dataLatLng, {
                            icon_options: {}
                        });
                        $("input[name=map_lat]").attr("value", dataLatLng[0]);
                        $("input[name=map_lng]").attr("value", dataLatLng[1]);
                    });
                }
            });
        })
    </script>
@endsection