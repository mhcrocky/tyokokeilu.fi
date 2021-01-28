<form action="{{ route("job.search") }}" class="form " method="get">
    <div class="g-field-search">
        <i class="fa fa-search input-job-search-icon"></i>
        <input type="text" 
            @if( !empty(Request::query('s')) ) 
                value="{{ Request::query('s') }}"
            @endif
        class="form-control input-job-search" name="s"
        placeholder="Enter job title, position, skills..." >
        <button class="btn btn-primary btn-search" type="submit" >{{__("Search")}}</button>
    </div>
</form>