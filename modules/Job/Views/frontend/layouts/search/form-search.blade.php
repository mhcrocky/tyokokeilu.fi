<form action="{{ route("job.search") }}" class="form " method="get">
    <button class="btn btn-primary btn-search" type="submit" >{{__("Find Job")}}</button>
    <div class="g-field-search">
        <i class="fa fa-search input-job-search-icon"></i>
        <input type="text" 
        @if( !empty(Request::query('s')) ) 
        value="{{ Request::query('s') }}"
        @endif
        class="form-control input-job-search" name="s"
        placeholder="Job tittle or keyword" >
        <div class="input-placefolder">
            <i class="fas fa-map-marker-alt mr-2"></i>
            <span>City, state or zip</span>
        </div>
    </div>
</form>