@extends('layouts.user')
@section('head')
@endsection
@section('content')
<div class="page-template-content">
    <div class="job-dashboard container">
        <div class="row">
            <div class="col-12">
                @include('admin.message')
            </div>
            <div class="col-md-3">
                @include('Job::frontend.layouts.user.profile-card')
            </div>
            <div class="col-md-9">
                <div class="lang-content-box">
                    <form action="{{route('job.vendor.store',['id'=>($row->id) ? $row->id : '-1','lang'=>request()->query('lang')])}}" method="post">
                        @csrf
                        <div class="container-fluid">
                            <div class="lang-content-box">
                                <div class="p-5">
                                    <h2 class="title-bar no-border-bottom">
                                        {{$row->id ? __('Edit Job'): __('Add new job')}}
                                    </h2>
                                    @include('Job::frontend.layouts.user.edit.content')
                                    @include('Job::frontend.layouts.user.edit.category')
                                    @include('Job::frontend.layouts.user.edit.jobtime')
                                    @include('Job::frontend.layouts.user.edit.contact')
                                    @include('Job::frontend.layouts.user.edit.location')
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