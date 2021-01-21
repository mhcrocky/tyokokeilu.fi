@extends('layouts.user')

@section('head')



@endsection

@section('content')job.vendor

    <h2 class="title-bar">

        {{__("Manage Rooms")}}

        <div class="title-action">

            <a href="{{route('job.vendor.edit',['id'=>$job->id])}}" class="btn btn-info"><i class="fa fa-hand-o-right"></i> {{__("Back to job")}}</a>

            <a href="{{route('job.vendor.room.availability.index',['job_id'=>$job->id])}}" class="btn btn-warning"><i class="fa fa-calendar"></i> {{__("Availability Rooms")}}</a>

            <a href="{{ route("job.vendor.room.create",['job_id'=>$job->id]) }}" class="btn btn-success"><i class="fa fa-plus" aria-hidden="true"></i> {{__("Add Room")}}</a>

        </div>

    </h2>

    @include('admin.message')

    @if($rows->total() > 0)

        <div class="bravo-list-item">

            <div class="bravo-pagination">

                <span class="count-string">{{ __("Showing :from - :to of :total Rooms",["from"=>$rows->firstItem(),"to"=>$rows->lastItem(),"total"=>$rows->total()]) }}</span>

                {{$rows->appends(request()->query())->links()}}

            </div>

            <div class="list-item">

                <div class="row">

                    @foreach($rows as $row)

                        <div class="col-md-12">

                            @include('Job::frontend.vendorJob.room.loop-list')

                        </div>

                    @endforeach

                </div>

            </div>

            <div class="bravo-pagination">

                <span class="count-string">{{ __("Showing :from - :to of :total Rooms",["from"=>$rows->firstItem(),"to"=>$rows->lastItem(),"total"=>$rows->total()]) }}</span>

                {{$rows->appends(request()->query())->links()}}

            </div>

        </div>

    @else

        {{__("No Room")}}

    @endif

@endsection

@section('footer')



@endsection