

<div class="block-list-job-category">
    <div class="container">
    @if ($rows->count())
        <div class="row">
            <div class="col-12 py-4 mb-3 mt-5  pb-5">
                <span class="text-heading">{{$title}}</span>
                <span class="text-show-all">View all</span>
            </div>
            @foreach ($rows as $row)
            <div class="col-md-2">
                @include('Job::frontend.blocks.list-job-category.loop')
            </div>
            @endforeach
        </div>
    @endif  
    </div>
</div>
