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
            <label for="coontact_email required">{{__("Email")}}</label>
            <input  name="contact_email" type="email" value="{{$row->contact_email}}" class="form-control required" required>
            <i class="fa fa-envelope input-icon"></i>        
        </div>
    </div>
</div>
<div class="row">                
    <div class="col-md-8">
        <div class="form-group">
            <label class="control-label">{{__("Work address")}}</label>
            <input type="text" name="address" id="customPlaceAddress" class="form-control" placeholder="{{__("Real address")}}" value="{{$translation->address}}">
        </div>
    </div>
    <div class="col-md-4">
        @if(is_default_lang())
            <div class="form-group">
                <label for="location_id" class="control-label required">{{__("City")}}</label>
                <div class="">
                    <select name="location_id" class="form-control required" required>
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
            </div>
        @endif
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="form-group">
            <div class="form-group-image">
                {!! \Modules\Media\Helpers\FileHelper::fieldUpload('image_id',$row->image_id) !!}
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="card" style="border-radius: 1rem">
            <div class="row">
                <div class="col-12 text-center p-3">
                    <div class="form-group">
                        <label for="salary">{{__('Job Status')}}</label>
                    </div>
                </div>
                <div class="col-md-6 text-center p-3">
                    Publish
                    <input type="radio" name="status" value="publish" class="form-control" 
                    @if ($row->status === 'publish') checked @endif 
                    @if(!$row->id) checked @endif>
                </div>
                <div class="col-md-6 text-center p-3">
                    Draft
                    <input type="radio" name="status" value="draft" class="form-control"  
                    @if ($row->status === 'draft') checked @endif>
                </div>
            </div>
        </div>
    </div>
</div> 