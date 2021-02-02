<div class="block_contact">
    <div class="contact-center">
        <div class="row">
            <div class="col-md-2 contact-before">
            </div>
            <div class="col-md-10 contact-main">
                <span>SEND US A MESSAGE</span>
                <h3>Get in touch with us</h3>
                <p>Duis lacus urna, condimentum a vehicula a, hendrerit ac nisi Lorem ipsum dolor sit amet, <br>consectetur adipiscing elit. </p>
                <form method="post" action="<?php echo e(route("contact.store")); ?>"  class="bravo-contact-block-form">
                    <?php echo e(csrf_field()); ?>

                    <div style="display: none;">
                        <input type="hidden" name="g-recaptcha-response" value="">
                    </div>
                    <div class="contact-form">
                        <?php echo $__env->make('admin.message', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                        <div class="contact-form">
                            <div class="row pt-5">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <input type="text" value="" placeholder=" <?php echo e(__('Enter your Name')); ?> " name="name" class="form-control form-contact">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <input type="text" value="" placeholder="<?php echo e(__('Your Email')); ?>" name="email" class="form-control form-contact">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <input type="text" value="" placeholder="<?php echo e(__('Subject')); ?>" name="email" class="form-control form-contact">
                                    </div>
                                </div>
                                <div class="col-md-12 pt-2">
                                    <div class="form-group">
                                        <textarea name="message" cols="40" rows="5" class="form-control form-contact textarea" placeholder="<?php echo e(__('Your message here')); ?>"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <?php echo e(recaptcha_field('contact')); ?>

                            </div>
                            <p>
                                <button class="submit btn btn-contact" type="submit">
                                    <?php echo e(__('SEND')); ?>

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
    border-bottom: 2px solid #B26519;

}
.form-contact{
    border: 0px;
    border-bottom: 1px solid #B26519;
    border-radius: 0px;
}
textarea.form-contact{
    border-bottom: 1px solid lightgrey;
}
textarea.form-contact:focus{
    border-bottom: 2px solid lightgrey;
}
.btn-contact{
    border-radius: 50px;
    padding: 1rem 5rem;
    background: #B26519;
    color: white; 
}
</style>
<?php /**PATH C:\xampp\htdocs\modules/Contact/Views/frontend/blocks/contact/form.blade.php ENDPATH**/ ?>