<div class="mt-5 pt-5">
    <label class="heading">4.How to contact</label>

    <div class="row card contact">            
   
        <div class="row input-has-icon">                
            <div class="col-md-6">
                <div class="form-group">
                    <label>{{__("Phone")}}</label>
                    <input name="contact_phone" class="form-control contact_input" type="text" value="{{ $row->contact_input_phone }}" >
                    <i class="fa fa-phone contact-icon"></i>
                </div>
            </div>
            <div class="col-md-6">
                <div class="form-group">
                    <label for="coontact_email required">{{__("Email")}}</label>
                    <input name="contact_email" type="email" value="{{$row->contact_email}}" class="form-control required contact_input" required>
                    <i class="fa fa-envelope contact-icon"></i>        
                </div>
            </div>
        </div>
        <div class="row">                
            <div class="col-md-6">
                <div class="form-group">
                    <label class="control-label required">{{__("Work address")}}</label>
                    <input type="text" required name="address" id="customPlaceAddress" class="form-control required" placeholder="{{__("Real address")}}" value="{{$translation->address}}">
                </div>
            </div>
            <div class="col-md-6">
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
    </div>
    <div class="col-md-12 mt-5">
        <label for="" class="horm-group heading">5.Conver Image</label>
        <div class="fp-5">
            <div class="form-group-image">
                {!! \Modules\Media\Helpers\FileHelper::fieldUpload('image_id',$row->image_id) !!}
            </div>
        </div>
    </div>
</div>