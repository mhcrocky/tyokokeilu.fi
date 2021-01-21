<div class="g-header">
    <div class="left">
        <h1>{{$translation->title}}</h1>
        @if($translation->address)
            <h2 class="address"><i class="fa fa-map-marker"></i>
                {{$translation->address}}
            </h2>
        @endif
    </div>
    <div class="right">
        <div class="review-score">
            <div class="head">
                <div class="left">
                    <span class="head-rating">'dfds'</span>
                    <span class="text-rating">'dfdsfs</span>
                </div>
                <div class="score">
                   safsafas<span>/5</span>
                </div>
            </div>
            <div class="foot">
                safsafas
            </div>
        </div>
    </div>
</div>
@if($translation->content)
    <div class="g-overview">
        <h3>{{__("Description")}}</h3>
        <div class="description">
            <?php echo $translation->content ?>
        </div>
    </div>
@endif
<div class="g-rules">
    <h3>{{__("Rules")}}</h3>
    <div class="description">
        <div class="row">
            <div class="col-lg-4">
                <div class="key">{{__("Check In")}}</div>
            </div>
            <div class="col-lg-8">
                <div class="value">	{{$row->start_at}} </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4">
                <div class="key">{{__("Check Out")}}</div>
            </div>
            <div class="col-lg-8">
                <div class="value">	{{$row->duration}} </div>
            </div>
        </div>
    </div>
</div>
<div class="bravo-hr"></div>
@if($row->map_lat && $row->map_lng)
    <div class="g-location">
        <div class="location-title">
            <h3>{{__("Location")}}</h3>
            @if($translation->address)
                <div class="address">
                    <i class="icofont-location-arrow"></i>
                    {{$translation->address}}
                </div>
            @endif
        </div>
        <div class="location-map">
            <div id="map_content"></div>
        </div>
    </div>
@endif