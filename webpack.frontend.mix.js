const mix = require('laravel-mix');
// Admin
mix.webpackConfig({
    output: {
        path:__dirname+'/public/dist/frontend',
    }
});
mix.sass('public/sass/app.scss','css');
mix.sass('public/sass/contact.scss','css');
mix.sass('public/sass/rtl.scss','css');
// ----------------------------------------------------------------------------------------------------
//Booking
mix.sass('public/module/booking/scss/checkout.scss','module/booking/css');
mix.sass('public/module/user/scss/user.scss','module/user/css');
mix.sass('public/module/user/scss/profile.scss','module/user/css');
mix.sass('public/module/job/scss/job.scss','module/job/css');
mix.sass('public/module/media/scss/browser.scss','module/media/css');
mix.sass('public/module/social/scss/social.scss','module/social/css');
