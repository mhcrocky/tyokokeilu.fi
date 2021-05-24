<div class="g-header">
    <div class="container">
        <div class="float-left">
            <h1>{{ $row->title }}</h1>
            <div class="onerow">
                <p class="address">
                    <i class="fa fa-map-marker"></i>
                    Nevada, US
                </p>
            </div>
        </div>
        <div class="float-right">
            <p>Type:{{$row->getAttribute('type')}}</p> 
            <p>Starting:{{$row->start_at}}</p> 

        </div>
    </div>
</div>