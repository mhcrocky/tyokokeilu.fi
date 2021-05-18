@extends('layouts.user')
@section('head')
@endsection
@section('content')
<div class="page-template-content">
    <div class="job-dashboard container" style="padding: 10px 0 17em;">
        <div class="row">
            <div class="col-12">
                @include('admin.message')
            </div>
            <div class="col-md-9">
                <div class="job-content-box">
                    <form action="{{route('job.vendor.store',['id'=>($row->id) ? $row->id : '-1','lang'=>request()->query('lang')])}}" method="post">
                        @csrf
                        <div class="container-fluid">
                            <div class="pl-4">
                                <div class="row">
                                    <div class="title-bar col-sm-3">
                                        {{$row->id ? __('Edit Job'): __('Post a job')}}
                                    </div>
                                    <div style="font-family: 'Poppins'; font-size:13px;" class="col-sm-9">If you don’t have an account you can create one below by entering your email address. Your account details will be confirmed via email.</div>
                                </div>
                                @include('Job::frontend.layouts.user.edit.content')
                                @include('Job::frontend.layouts.user.edit.requirement')
                                @include('Job::frontend.layouts.user.edit.general')
                                @include('Job::frontend.layouts.user.edit.contact')                                
                                <div class="row btn_post">
                                    <div class="col-12 p-5">
                                        <div class="text-right">
                                            <a class="btn btn-action mr-5 btn-default" href="{{ route('job.vendor.index') }}" >{{__('Save to Draft')}}</a>
                                            <button class="btn btn-action btn-save" type="submit">
                                                @if($row->id) {{__('Save now')}} @else {{__('Send Job Now')}} @endif 
                                            </button>
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