<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CategoriaController;
use App\Http\Controllers\PublicacionController;
use App\Http\Controllers\AuthController;


/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
/*
Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});*/

Route::post('register',[AuthController::class,'create']);
Route::post('login',[AuthController::class,'login']);


Route::middleware(['auth:sanctum'])->group(function(){

    Route::resource('publicaciones',PublicacionController::class);
    Route::resource('categorias', CategoriaController::class);
    Route::get('publicacionesbycategoria',[PublicacionController::class,'PublicacionesByCategoria']);
    Route::get('logout',[AuthController::class,'logout']);

});

