<?php
use \Illuminate\Support\Facades\Route;
Route::group(['prefix'=>config('job.job_route_prefix')],function(){
    Route::get('/','JobController@index')->name('job.search'); // Search
    Route::get('/{slug}','JobController@detail')->name('job.detail');// Detail
});
Route::group(['prefix'=>'user/'.config('job.job_route_prefix'),'middleware' => ['auth','verified']],function(){
    Route::get('/','VendorController@index')->name('job.vendor.index');
    Route::get('/create','VendorController@create')->name('job.vendor.create');
    Route::get('/recovery','VendorController@recovery')->name('job.vendor.recovery');
    Route::get('/restore/{id}','VendorController@restore')->name('job.vendor.restore');
    Route::get('/edit/{id}','VendorController@edit')->name('job.vendor.edit');
    Route::get('/del/{id}','VendorController@delete')->name('job.vendor.delete');
    Route::post('/store/{id}','VendorController@store')->name('job.vendor.store');
    Route::get('bulkEdit/{id}','VendorController@bulkEditjob')->name("job.vendor.bulk_edit");
    Route::get('/booking-report','VendorController@bookingReport')->name("job.vendor.booking_report");
    Route::get('/booking-report/bulkEdit/{id}','VendorController@bookingReportBulkEdit')->name("job.vendor.booking_report.bulk_edit");
});
Route::post(config('job.job_route_prefix').'/checkAvailability','JobController@checkAvailability')->name('job.checkAvailability');
