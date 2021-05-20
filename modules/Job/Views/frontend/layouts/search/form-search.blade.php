<form action="{{ route("job.search") }}" class="form " method="get">
    <button class="btn btn-primary btn-search" type="submit" >{{__("Find Job")}}</button>
    <div class="g-field-search">
        <i class="fa fa-search input-job-search-icon"></i>
        <div class="input-group">
            <input type="text" 
            @if( !empty(Request::query('s')) ) 
            value="{{ Request::query('s') }}"
            @endif
            class="form-control input-job-search col-md-5" name="s"
            placeholder="Job tittle" >
            <input type="text" 
            @if( !empty(Request::query('s')) ) 
            value="{{ Request::query('s') }}"
            @endif
            class="form-control input-job-search location-search" name="s"
            placeholder="Location" >
            <div class="marker-icon">
                <i class="fas fa-map-marker-alt"></i>
            </div>
        </div>
    </div>
</form>