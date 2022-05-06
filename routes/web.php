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

Route::get('/', [\App\Http\Controllers\ProductController::class, 'index']);

Route::get('/orders', [\App\Http\Controllers\OrderController::class, 'showMyOrders'])->middleware(['auth']);

Route::group(['prefix' => 'admin', 'middleware' => ['auth', 'checkRole']], function () {
    Route::get('/', [\App\Http\Controllers\AdminController::class, 'index']);
    Route::get('/editcat/{id}', [\App\Http\Controllers\AdminController::class, 'editCategory']);
    Route::post('/editcat/changecat', [\App\Http\Controllers\AdminController::class, 'saveCategory']);
    Route::get('/newcat', [\App\Http\Controllers\AdminController::class, 'addNewCategory']);
    Route::get('/deletecat/{id}', [\App\Http\Controllers\AdminController::class, 'deleteCategory']);
    Route::post('/sendnewcat', [\App\Http\Controllers\AdminController::class, 'saveNewCategory']);
    Route::post('/editprod/changeprod', [\App\Http\Controllers\AdminController::class, 'saveProduct']);
    Route::post('/newprod', [\App\Http\Controllers\AdminController::class, 'saveNewProduct']);
    Route::get('/editprod/{id}', [\App\Http\Controllers\AdminController::class, 'editProduct']);
    Route::get('/deleteprod/{id}', [\App\Http\Controllers\AdminController::class, 'deleteProduct']);
    Route::get('/addnewprod', [\App\Http\Controllers\AdminController::class, 'addNewProduct']);
    Route::post('/changemail', [\App\Http\Controllers\AdminController::class, 'changeEmail']);
});

Route::get('/category/{id}', [\App\Http\Controllers\CategoryController::class, 'index']);

Route::group(['prefix' => 'product', 'middleware' => 'auth'], function () {
    Route::get('/{id}', [\App\Http\Controllers\ProductController::class, 'showGame']);
    Route::get('/checkout/{id}', [\App\Http\Controllers\OrderController::class, 'index']);
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

require __DIR__.'/auth.php';
