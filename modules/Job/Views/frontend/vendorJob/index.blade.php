@extends('layouts.user')
@section('head')
@endsection
@section('content')
@include('admin.message')
<div class="page-template-content">
    <div class="job-dashboard container">
        <div class="row">
            <div class="col-md-3 parent-card">
                @include('Job::frontend.layouts.user.profile-card')
            </div>
            <div class="col-md-9">
                @if($rows->total() > 0)
                    <div class="bravo-list-item">
                        <div class="bravo-pagination">
                            <span class="float-left status-title">
                                @if( !empty(Request::query('status')) ) 
                                    @switch(Request::query('status'))
                                        @case('publish')
                                            Opened Jobs
                                            @break
                                        @case('draft')
                                            Paused Jobs
                                            @break
                                        @default
                                    @endswitch
                                @else
                                    Jobs list
                                @endif
                            </span>
                            {{-- <span class="count-string">{{ __("Showing :from - :to of :total Jobs",["from"=>$rows->firstItem(),"to"=>$rows->lastItem(),"total"=>$rows->total()]) }}</span> --}}
                            {{$rows->appends(request()->query())->links()}}
                        </div>
                        <div class="list-item">
                            <div class="row">
                                @foreach($rows as $row)
                                    <div class="col-md-12">
                                        @include('Job::frontend.vendorJob.loop-list')
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                @else
                    <div class="panel px-5 py-4">
                        {{__("No Job")}}
                    </div>
                @endif
            </div>
        </div>
    </div>
</div>
@endsection
@section('footer')
@endsection
