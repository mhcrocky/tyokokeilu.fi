<div class="bravo_filter">
    <form action="{{ route("job.search") }}" class="bravo_form_filter">
        <div class="filter-title">
            {{__("FILTER BY")}}
        </div>
        @include('Job::frontend.layouts.search.filter.category')
        @include('Job::frontend.layouts.search.filter.location')
        @include('Job::frontend.layouts.search.filter.job_type')
    </form>
</div>
