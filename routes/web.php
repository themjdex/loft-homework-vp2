<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

Route::get('/books', [\App\Http\Controllers\BookController::class, 'index']);
//Route::group(['prefix' => 'books', 'middleware' => 'ololo'], function(){
//    Route::get('/', 'BookController@index')->name('books');
//    Route::get('create', 'BookController@create')->name('books.create');
//    Route::get('edit/{book}', 'BookController@edit')->name('books.edit');
//    Route::post('add', 'BookController@add')->name('books.add');
//    Route::post('save/{id}', 'BookController@save')->name('books.save');
//    Route::get('delete/{id}', 'BookController@delete')->name('books.delete');
//
//});

require __DIR__.'/auth.php';
