<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', 'BloggersController@index');
Route::get('bloggers/read/{id}', 'BloggersController@read');
Route::get('bloggers/manage', 'BloggersController@manage');
Route::post('/bloggers/create','BloggersController@store');
Route::resource('bloggers','BloggersController');
Route::get('bloggers/edit/{id}', 'BloggersController@edit');
Route::get('bloggers/delete/{id}', 'BloggersController@delete');
Route::post('bloggers/edit/{id}','BloggersController@update');


