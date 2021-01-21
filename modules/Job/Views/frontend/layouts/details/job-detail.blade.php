@include('Job::frontend.layouts.details.banner')
<div class="container">
    @include('Job::frontend.layouts.details.header')
    @if($translation->content)
        <div class="g-overview">   
            <h3>{{__("Description")}}</h3>
            <div class="description">
                <?php echo $translation->content ?>
            </div>
        </div>
    @endif
    @include('Job::frontend.layouts.details.contact-info')
</div>