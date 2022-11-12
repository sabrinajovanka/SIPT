<?php
use App\Http\Controllers\MahasiswaController0;
use App\Http\Controllers\krsController;
use App\Http\Controllers\LaporanController;
use App\Http\Controllers\Admin\mahasiswaController;
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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::controller(MahasiswaController::class)->group(function(){
    //Route::get('/', 'index');
    Route::get('/mahasiswa/new', 'create');
    // Route::get('/mahasiswa/{id}', 'show');
    Route::post('/mahasiswa/store', 'store');
    // Route::delete('/mahasiswa/{id}', 'destroy');
    // Route::get('/mahasiswa/{id}', 'edit');
    // Route::put('/mahasiswa/{id}', 'update');
});

Route::controller(krsController::class)->group(function(){
    Route::get('/krs', 'index');
    Route::get('/krs/new', 'create');
    // Route::get('/krs/{id}', 'show');
    Route::post('/krs/store', 'store');
    // Route::delete('/krs/{id}', 'destroy');
    // Route::get('/krs/{id}', 'edit');
    // Route::put('/krs/{id}', 'update');
});

Route::get('/laporan/mahasiswa',[LaporanController::class,'index']);
Route::get('/laporan/mahasiswa/pdf',[LaporanController::class,'cetak_pdf']);
Route::get('/', [mahasiswaController::class,'index']);
Route::resource('admin/dosen', 'App\Http\Controllers\Admin\DosenController');
Route::resource('admin/mahasiswa', 'App\Http\Controllers\Admin\mahasiswaController');