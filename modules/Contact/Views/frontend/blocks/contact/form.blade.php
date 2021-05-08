<div class="block_contact">
    <div class="contact-center">
        <div class="row">
            <div class="col-md-2 contact-before">
            </div>
            <div class="col-md-10 contact-main">
                <span>SEND US A MESSAGE</span>
                <h3>Get in touch with us</h3>
                <p>Duis lacus urna, condimentum a vehicula a, hendrerit ac nisi Lorem ipsum dolor sit amet, <br>consectetur adipiscing elit. </p>
                <form method="post" action="{{ route("contact.store") }}"  class="bravo-contact-block-form">
                    {{csrf_field()}}
                    <div style="display: none;">
                        <input type="hidden" name="g-recaptcha-response" value="">
                    </div>
                    <div class="contact-form">
                        @include('admin.message')
                        <div class="contact-form">
                            <div class="row pt-5">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <input type="text" value="" placeholder=" {{ __('Enter your Name') }} " name="name" class="form-control form-contact">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <input type="text" value="" placeholder="{{ __('Your Email') }}" name="email" class="form-control form-contact">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <input type="text" value="" placeholder="{{ __('Subject') }}" name="email" class="form-control form-contact">
                                    </div>
                                </div>
                                <div class="col-md-12 pt-2">
                                    <div class="form-group">
                                        <textarea name="message" cols="40" rows="5" class="form-control form-contact textarea" placeholder="{{ __('Your message here') }}"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                {{recaptcha_field('contact')}}
                            </div>
                            <p>
                                <button class="submit btn btn-contact" type="submit">
                                    {{ __('SEND') }}
                                </button>
                            </p>
                        </div>
                    </div>
                    <div class="form-mess"></div>
                </form>
            </div>
        </div>
    </div>
</div>
<style>
.form-contact:focus{
    outline: -webkit-focus-ring-color auto 0px;
    border: 0px;
    box-shadow:0 0 0 0rem rgb(0 123 255 / 25%);
    border-bottom: 2px solid #FF8149;

}
.form-contact{
    border: 0px;
    border-bottom: 1px solid #FF8149;
    border-radius: 0px;
}
textarea.form-contact{
    border-bottom: 1px solid lightgrey;
}
textarea.form-contact:focus{
    border-bottom: 2px solid lightgrey;
}
.btn-contact{
    border-radius: 0px;
    padding: 1rem 5rem;
    background: rgb(23,42,49);
    color: white; 
}
</style>
{{-- 
<div class="row section">
    <div class="col-md-12 col-lg-5">
        <div role="form" class="form_wrapper" lang="en-US" dir="ltr">
            <form method="post" action="{{ route("contact.store") }}"  class="bravo-contact-block-form">
                {{csrf_field()}}
                <div style="display: none;">
                    <input type="hidden" name="g-recaptcha-response" value="">
                </div>
                <div class="contact-form">
                    <div class="contact-header">
                        <h1>{{ setting_item_with_lang("page_contact_title") }}</h1>
                        <h2>{{ setting_item_with_lang("page_contact_sub_title") }}</h2>
                    </div>
                    @include('admin.message')
                    <div class="contact-form">
                        <div class="form-group">
                            <input type="text" value="" placeholder=" {{ __('Name') }} " name="name" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="text" value="" placeholder="{{ __('Email') }}" name="email" class="form-control">
                        </div>
                        <div class="form-group">
                            <textarea name="message" cols="40" rows="10" class="form-control textarea" placeholder="{{ __('Message') }}"></textarea>
                        </div>
                        <div class="form-group">
                            {{recaptcha_field('contact')}}
                        </div>
                        <p>
                            <button class="submit btn btn-primary " type="submit">
                                {{ __('SEND MESSAGE') }}
                                <i class="fa fa-spinner fa-pulse fa-fw"></i>
                            </button>
                        </p>
                    </div>
                </div>
                <div class="form-mess"></div>
            </form>
        </div>
    </div>
    <div class="offset-lg-2 col-md-12 col-lg-5">
        <div class="contact-info">
            <div class="info-bg">
                @if($bg = get_file_url(setting_item("page_contact_image"),"full"))
                    <img src="{{$bg}}" class="img-responsive" alt="{{ setting_item_with_lang("page_contact_title") }}">
                @endif
            </div>
            <div class="info-content">
                <div class="sub">
                    <p>{!! setting_item_with_lang("page_contact_desc") !!}</p>
                </div>
            </div>
        </div>
    </div>
</div>
--}}