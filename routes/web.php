<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
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
Route::get('/test', [\App\Http\Controllers\ProductController::class, 'index']);

Route::get('/', [\App\Http\Controllers\ProductController::class, 'index']);

Route::get('/orders', [\App\Http\Controllers\OrderController::class, 'showMyOrders'])->middleware(['auth']);

Route::get('/admin', function () {
    return view('admin');
})->middleware(['auth'])->name('admin');

Route::get('/category', function () {
    return view('category');
});

Route::get('/product/{id}', function () {
    return view('product');
});

Route::group(['prefix' => 'checkout', 'middleware' => 'auth'], function () {
    Route::get('/{id}', [\App\Http\Controllers\OrderController::class, 'index']);
    Route::post('/send', [\App\Http\Controllers\OrderController::class, 'sendOrder']);
});


Route::get('/news', function () {
    return view('news');
});

Route::get('/about', function () {
    return view('about');
});

Route::get('/logout', function (Request $request) {
    Auth::guard('web')->logout();

    $request->session()->invalidate();

    $request->session()->regenerateToken();

    return redirect('/');
});

//Route::get('/books', [\App\Http\Controllers\BookController::class, 'index']);
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
