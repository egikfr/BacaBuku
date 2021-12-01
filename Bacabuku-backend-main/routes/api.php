<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\BukuController;
use App\Http\Controllers\API\BukuCategoryController;
use App\Http\Controllers\API\UserController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


    
Route::get('buku', [BukuController::class, 'all']);
Route::get('kategori', [BukuCategoryController::class, 'all']);

Route::post('register', [UserController::class, 'register']);
Route::post('login', [UserController::class, 'login']);

Route::middleware('auth:sanctum')->group(function () {
Route::get('user', [UserController::class, 'fetch']);
Route::post('user', [UserController::class, 'updateProfile']);
Route::post('logout', [UserController::class, 'logout']);
});