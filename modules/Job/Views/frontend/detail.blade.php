@extends('layouts.app')
@section('head')
    <link href="{{ asset('dist/frontend/module/job/css/job.css?_ver='.config('app.version')) }}" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ asset("libs/ion_rangeslider/css/ion.rangeSlider.min.css") }}"/>
    <link rel="stylesheet" type="text/css" href="{{ asset("libs/fotorama/fotorama.css") }}"/>
@endsection
@section('content')
    <div class="bravo_detail_job">
        <div class="bravo_content">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-12">
                        @include('Job::frontend.layouts.details.job-detail')
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('footer')
    {!! App\Helpers\MapEngine::scripts() !!}
    <script type="text/javascript" src="{{ asset("libs/ion_rangeslider/js/ion.rangeSlider.min.js") }}"></script>
    <script type="text/javascript" src="{{ asset("libs/fotorama/fotorama.js") }}"></script>
    <script type="text/javascript" src="{{ asset("libs/sticky/jquery.sticky.js") }}"></script>
    <script type="text/javascript" src="{{ asset('module/job/js/single-job.js?_ver='.config('app.version')) }}"></script>
@endsection
