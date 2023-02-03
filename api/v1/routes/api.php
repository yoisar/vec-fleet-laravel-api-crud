<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ConfigBusinessController;
use App\Http\Controllers\PaisController;
use App\Models\User;
use Dotenv\Exception\ValidationException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Route;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
// create user access token
Route::post('/sanctum/token', function (Request $request) {
    $request->validate([
        'email' => 'required|email',
        'password' => 'required',
        'device_name' => 'required',
    ]);

    $user = User::where('email', $request->email)->first();

    if (!$user || !Hash::check($request->password, $user->password)) {
        throw ValidationException::withMessages([
            'email' => ['The provided credentials are incorrect.'],
        ]);
    }
});
//login
Route::post('login', [AuthController::class, 'login']);
// Register an user and create toeken access 
Route::post('/register', [AuthController::class, 'register']);

//Guard
Route::middleware(['auth:sanctum'])->group(function () {
    //Config business
    Route::apiResource('configbusiness', ConfigBusinessController::class);
    //Paises
    Route::apiResource('paises', PaisController::class);
});
