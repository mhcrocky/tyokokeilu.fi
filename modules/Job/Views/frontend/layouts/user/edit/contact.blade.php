<div class="row">                
    <div class="col-12 i-s-title pt-4">
        <h6 class="panel-body-title">Contact</h6>
        <span></span>
    </div>
</div>
<div class="row input-has-icon">                
    <div class="col-md-6">
        <div class="form-group">
            <label>{{__("Phone")}}</label>
            <input name="contact_phone" class="form-control" type="text" value="{{ $row->contact_phone }}" >
            <i class="fa fa-phone input-icon"></i>
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group">
            <label>{{__("Email")}}</label>
            <input  name="contact_email" type="email" value="{{$row->contact_email}}" class="form-control">
            <i class="fa fa-envelope input-icon"></i>        
        </div>
    </div>
</div>
<div class="row">                
    <div class="col-md-8">
        <div class="form-group">
            <label class="control-label required">{{__("Work address")}}</label>
            <input type="text" name="address" id="customPlaceAddress" class="form-control" placeholder="{{__("Real address")}}" value="{{$translation->address}}">
        </div>
    </div>
    <div class="col-md-4">
        @if(is_default_lang())
            <div class="form-group">
                <label class="control-label">{{__("City")}}</label>
                @if(!empty($is_smart_search))
                    <div class="form-group-smart-search">
                        <div class="form-content">
                            <?php
                            $location_name = "";
                            $list_json = [];
                            $traverse = function ($locations, $prefix = '') use (&$traverse, &$list_json , &$location_name,$row) {
                                foreach ($locations as $location) {
                                    $translate = $location->translateOrOrigin(app()->getLocale());
                                    if ($row->location_id == $location->id){
                                        $location_name = $translate->name;
                                    }
                                    $list_json[] = [
                                        'id' => $location->id,
                                        'title' => $prefix . ' ' . $translate->name,
                                    ];
                                    $traverse($location->children, $prefix . '-');
                                }
                            };
                            $traverse($job_location);
                            ?>
                            <div class="smart-search">
                                <input type="text" class="smart-search-location parent_text form-control" placeholder="{{__("-- Please Select --")}}" value="{{ $location_name }}" data-onLoad="{{__("Loading...")}}"
                                        data-default="{{ json_encode($list_json) }}">
                                <input type="hidden" class="child_id" name="location_id" value="{{$row->location_id ?? Request::query('location_id')}}">
                            </div>
                        </div>
                    </div>
                @else
                    <div class="">
                        <select name="location_id" class="form-control">
                            <option value="">{{__("Select City")}}</option>
                            <?php
                            $traverse = function ($locations, $prefix = '') use (&$traverse, $row) {
                                foreach ($locations as $location) {
                                    $selected = '';
                                    if ($row->location_id == $location->id)
                                        $selected = 'selected';
                                    printf("<option value='%s' %s>%s</option>", $location->id, $selected, $prefix . ' ' . $location->name);
                                    $traverse($location->children, $prefix . '-');
                                }
                            };
                            $traverse($job_location);
                            ?>
                        </select>
                    </div>
                @endif
            </div>
        @endif
    </div>
</div>
<div class="row">
    <div class="col-12">
        <div class="form-group">
            <div class="form-group-image">
                {!! \Modules\Media\Helpers\FileHelper::fieldUpload('image_id',$row->image_id) !!}
            </div>
        </div>
    </div>
</div>
<style>
.required:after {
    content:" *";
  }

</style> 