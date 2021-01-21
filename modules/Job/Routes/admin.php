<?php
use \Illuminate\Support\Facades\Route;
Route::get('/','JobController@index')->name('job.admin.index');
Route::get('/create','JobController@create')->name('job.admin.create');
Route::get('/edit/{id}','JobController@edit')->name('job.admin.edit');
Route::post('/store/{id}','JobController@store')->name('job.admin.store');
Route::post('/bulkEdit','JobController@bulkEdit')->name('job.admin.bulkEdit');
Route::get('/recovery','JobController@recovery')->name('job.admin.recovery');
Route::group(['prefix'=>'category'],function (){
    Route::get('/','CategoryController@index')->name('job.admin.category.index');
    Route::get('edit/{id}','CategoryController@edit')->name('job.admin.category.edit');
    Route::post('store/{id}','CategoryController@store')->name('job.admin.category.store');
    Route::get('terms/{id}','CategoryController@terms')->name('job.admin.category.term.index');
    Route::get('term_edit/{id}','CategoryController@term_edit')->name('job.admin.category.term.edit');
    Route::get('term_store','CategoryController@term_store')->name('job.admin.category.term.store');
    Route::get('getForSelect2','CategoryController@getForSelect2')->name('job.admin.category.term.getForSelect2');
    Route::get('getCategoryForSelect2','CategoryController@getCategoryForSelect2')->name('job.admin.category.getForSelect2');
});
Route::group(['prefix'=>'room'],function (){
    Route::group(['prefix'=>'category'],function (){
        Route::get('/','RoomCategoryController@index')->name('job.admin.room.category.index');
        Route::get('edit/{id}','RoomCategoryController@edit')->name('job.admin.room.category.edit');
        Route::post('store/{id}','RoomCategoryController@store')->name('job.admin.room.category.store');
        Route::post('editAttrBulk','RoomCategoryController@editAttrBulk')->name('job.admin.room.category.editAttrBulk');
        Route::get('terms/{id}','RoomCategoryController@terms')->name('job.admin.room.category.term.index');
        Route::get('term_edit/{id}','RoomCategoryController@term_edit')->name('job.admin.room.category.term.edit');
        Route::get('term_store','RoomCategoryController@term_store')->name('job.admin.room.category.term.store');
        Route::get('getForSelect2','RoomCategoryController@getForSelect2')->name('job.admin.room.category.term.getForSelect2');
    });
    Route::get('{job_id}/index','RoomController@index')->name('job.admin.room.index');
    Route::get('{job_id}/create','RoomController@create')->name('job.admin.room.create');
    Route::get('{job_id}/edit/{id}','RoomController@edit')->name('job.admin.room.edit');
    Route::post('{job_id}/store/{id}','RoomController@store')->name('job.admin.room.store');
    Route::post('/bulkEdit','RoomController@bulkEdit')->name('job.admin.room.bulkEdit');
});
Route::group(['prefix'=>'{job_id}/availability'],function(){
    Route::get('/','AvailabilityController@index')->name('job.admin.room.availability.index');
    Route::get('/loadDates','AvailabilityController@loadDates')->name('job.admin.room.availability.loadDates');
    Route::post('/store','AvailabilityController@store')->name('job.admin.room.availability.store');
});
