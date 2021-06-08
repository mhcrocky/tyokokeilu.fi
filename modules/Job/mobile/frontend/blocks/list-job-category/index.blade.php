

<div class="block-list-job-category">
    <div class="container">
        @if ($rows->count())
            <div class="row">
                <div class="col-12 py-3 mb-2 mt-3">
                    <span class="text-heading">{{$title}}</span>
                </div>  
                @include('Job::frontend.blocks.list-job-category.loop')
            </div>
        @endif 
    </div>
</div>
