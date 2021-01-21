@extends('layouts.app')
@section('head')
    <link href="{{ asset('dist/frontend/module/job/css/job.css?_ver='.config('app.version')) }}" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ asset("libs/ion_rangeslider/css/ion.rangeSlider.min.css") }}"/>
@endsection
@section('content')
    <div class="bravo_search_job">
        <div class="bravo_banner" @if($bg = setting_item("job_page_search_banner")) style="background-image: url({{get_file_url($bg,'full')}})" @endif >
            <div class="container job_search_form">
                <h1>
                    {{''}}
                </h1>
                <div class="bravo_form_search">
                    @include('Job::frontend.layouts.search.form-search')
                </div>
                <span class="sub-title">Found  {{ count($rows) }} “Restaurant” Practice, Internship and Summer Jobs</span>
            </div>
        </div>
        <div class="container">
            @include('Job::frontend.layouts.search.list-item')
        </div>
    </div>
    @include('Layout::parts.subscribe')
@endsection
@section('footer')
    <script type="text/javascript" src="{{ asset("libs/ion_rangeslider/js/ion.rangeSlider.min.js") }}"></script>
    <script type="text/javascript" src="{{ asset('module/job/js/job.js?_ver='.config('app.version')) }}"></script>
@endsection