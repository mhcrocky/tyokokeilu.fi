<?php
use \Illuminate\Support\Facades\Route;
Route::get('/','JobController@search')->name('job.search'); // Search
