<?php
use App\Http\Controllers\BarangController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

Auth::routes();
Route::get('/', [UserController::class, 'awal']);
Route::get('/home', [HomeController::class, 'home']);
Route::get('/logout', [HomeController::class, 'logout'])->name('logout');

Route::group(['middleware' => 'auth'], function () {
    Route::get('/admin/dashboard', [AdminController::class,'index']);
    Route::get('/user/dashboard', [UserController::class,'index'] );
    Route::get('/pembelian', [AdminController::class, 'pembelian']);

    
});

//admin
Route::group(['middleware' => 'admin'], function () {
    Route::get('/admin/dashboard', [AdminController::class,'index']);
    Route::get('/pembelian', [AdminController::class, 'pembelian']);
});

//user
Route::group(['middleware' => 'user'], function () {
    Route::get('/user/dashboard', [UserController::class,'index'] );
});



Route::post('/addToCart/{id}', [BarangController::class, 'addToCart'])->name('addToCart');
Route::get('/cart', [BarangController::class, 'cart'])->name('cart.index');
Route::post('/hapus-dari-keranjang/{id}', [BarangController::class, 'hapusDariKeranjang'])->name('hapusDariKeranjang');
Route::get('/user/dashboard', [UserController::class,'index'] ) ->middleware('auth','user');
Route::get('/deskripsi/{id}', [BarangController::class, 'deskripsi'])->name('barang.deskripsi');
Route::post('/proses-pembelian', [BarangController::class, 'prosesPembelian'])->name('proses.pembelian');



//admin routes
Route::get('/admin/dashboard', [AdminController::class,'index'])->middleware('auth','admin');
Route::post('/simpan', [BarangController::class, 'simpan']);
Route::get('/pembelian', [AdminController::class, 'pembelian'])->name('pembelian.index');