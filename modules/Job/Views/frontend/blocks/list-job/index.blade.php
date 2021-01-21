<div class="bravo-list-job">
    <div class="container">
        @if($title)
        <div class="title">
            {{$title}}
        </div>
        @endif
        @if($desc)
            <div class="sub-title">
                {{$desc}}
            </div>
        @endif
        <div class="row">
            <div class="col-md-9">
                @foreach($rows as $row)
                    <div class="col-md-12">
                        @include('Job::frontend.layouts.search.loop-list')
                    </div>
                @endforeach
            </div>
            <div class="col-md-3">
                
            </div>
        </div>
    </div>
</div>