<?php

use App\Http\Controllers\AdminCategoryController;
use App\Models\Category;

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\DashboardPostController;

use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;

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

Route::get('/', function () {
    return view('/home',[
        "title" => "Home",
        'active' => 'home'
    ]);
});


Route::get('/about', function () {
    return view('about', [
        "title" => "About",
        'active' => 'about',
        "name" => "M Ridwan",
        "email" => "mridwan@gmail.com"
    ]);
});

Route::get('/posts', [PostController::class, 'index']);
//halaman single post
Route::get('posts/{post:slug}', [PostController::class, 'show']);

//halaman yang menampilkan semua categori
Route::get('/categories', function()
{
    return view('categories', [
        'title' => 'Post Categories',
        'active' => 'categories',
        'categories' => Category::all()
    ]);
});

// halaman login
Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate']);
// halaman logout
Route::post('/logout', [LoginController::class, 'logout']);
// halaman Register
Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');
Route::post('/register', [RegisterController::class, 'store']);



// Route untuk menampilkan dashboar menggunakan closure atau tidak menggunakan controller
Route::get('/dashboard', function(){
    return view('dashboard.index');
})->middleware('auth');
// Route untuk dashboardpostcontroller 

Route::get('/dashboard/posts/checkSlug', [DashboardPostController::class, 'checkSlug'])->middleware('auth');
// Route::post('/dashboard/posts/store', [DashboardPostController::class, 'store'])->middleware('auth');

Route::resource('/dashboard/posts', DashboardPostController::class)->middleware('auth');


Route::resource('/dashboard/categories', AdminCategoryController::class)->except('show')->middleware('admin');





// fungsin ->middleware('guest / auth '); jika guest itu artinya halaman tersebut hanya bisa diakses ketika mendai guest kalo auth = hanya berlaku ketika sudah login 