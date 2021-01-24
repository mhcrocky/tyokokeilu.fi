<div class="col-12">
    <h5>Contact</h5>
    <hr/>
</div>
<div class="col-md-6 pt-2 pb-3">
    <div class="form-group">
        <label>{{__("Contact email")}}</label>
        <input  name="contact_email" type="email" value="{{$row->contact_email}}" class="form-control">
    </div>
</div>
<div class="col-md-6 pt-2 pb-3">
    <div class="form-group">
        <label>{{__("Contact Phone")}}</label>
        <input name="contact_phone" class="form-control" type="text" value="{{ $row->contact_phone }}" >
    </div>
</div>