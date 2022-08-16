<?php

use App\Http\Controllers\Admin\AuthController;
use App\Http\Controllers\Admin\HomeController;
use App\Http\Controllers\front\ContactController;
use App\Http\Controllers\Admin\CourseController;
use App\Http\Controllers\front\CoursesController;
use App\Http\Controllers\front\HomepageController;
use App\Http\Controllers\front\MessageController;
use App\Http\Controllers\Admin\CatController;
use App\Http\Controllers\Admin\TrainerController;
use App\Http\Controllers\Admin\StudentController;
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

Route::get('/', [HomepageController::class, 'index'])->name('front.homepage');
Route::get('/category/{id}', [CoursesController::class, 'category'])->name('front.category');
Route::get('/category/{id}/course/{c_id}', [CoursesController::class, 'show'])->name('front.show');
Route::get('/contact', [ContactController::class, 'index'])->name('front.contact');
Route::post('/message/newsletter', [MessageController::class, 'newsletter'])->name('front.message.newsletter');
Route::post('/message/contact', [MessageController::class, 'contact'])->name('front.message.contact');
Route::post('/message/enroll', [MessageController::class, 'enroll'])->name('front.message.enroll');


Route::get('/dashboard/login', [AuthController::class, 'login'])->name('admin.login');
Route::post('/dashboard/do-login', [AuthController::class, 'doLogin'])->name('admin.doLogin');


Route::middleware('AdminAuth:admin')->group(function () {
    Route::get('/dashboard', [HomeController::class, 'index'])->name('admin.home');
    Route::get('/dashboard/logout', [AuthController::class, 'logout'])->name('admin.logout');
    Route::get('/dashboard/cats', [CatController::class, 'index'])->name('admin.cats.index');
    Route::get('/dashboard/cats/create', [CatController::class, 'create'])->name('admin.cats.create');
    Route::get('/dashboard/cats/edit/{id}', [CatController::class, 'edit'])->name('admin.cats.edit');
    Route::post('/dashboard/cats/store', [CatController::class, 'store'])->name('admin.cats.store');
    Route::get('/dashboard/cats/delete/{id}', [CatController::class, 'delete'])->name('admin.cats.delete');
    Route::post('/dashboard/cats/update', [CatController::class, 'update'])->name('admin.cats.update');


    Route::get('/dashboard/trainers', [TrainerController::class, 'index'])->name('admin.trainers.index');
    Route::get('/dashboard/trainers/create', [TrainerController::class, 'create'])->name('admin.trainers.create');
    Route::get('/dashboard/trainers/edit/{id}', [TrainerController::class, 'edit'])->name('admin.trainers.edit');
    Route::post('/dashboard/trainers/store', [TrainerController::class, 'store'])->name('admin.trainers.store');
    Route::get('/dashboard/trainers/delete/{id}', [TrainerController::class, 'delete'])->name('admin.trainers.delete');
    Route::post('/dashboard/trainers/update', [TrainerController::class, 'update'])->name('admin.trainers.update');

    Route::get('/dashboard/courses', [CourseController::class, 'index'])->name('admin.courses.index');
    Route::get('/dashboard/courses/create', [CourseController::class, 'create'])->name('admin.courses.create');
    Route::get('/dashboard/courses/edit/{id}', [CourseController::class, 'edit'])->name('admin.courses.edit');
    Route::post('/dashboard/courses/store', [CourseController::class, 'store'])->name('admin.courses.store');
    Route::get('/dashboard/courses/delete/{id}', [CourseController::class, 'delete'])->name('admin.courses.delete');
    Route::post('/dashboard/courses/update', [CourseController::class, 'update'])->name('admin.courses.update');

    Route::get('/dashboard/students', [StudentController::class, 'index'])->name('admin.students.index');
    Route::get('/dashboard/students/create', [StudentController::class, 'create'])->name('admin.students.create');
    Route::get('/dashboard/students/edit/{id}', [StudentController::class, 'edit'])->name('admin.students.edit');
    Route::post('/dashboard/students/store', [StudentController::class, 'store'])->name('admin.students.store');
    Route::get('/dashboard/students/delete/{id}', [StudentController::class, 'delete'])->name('admin.students.delete');
    Route::post('/dashboard/students/update', [StudentController::class, 'update'])->name('admin.students.update');
    Route::get('/dashboard/students/showCourses/{id}', [StudentController::class, 'showCourses'])->name('admin.students.showCourses');

    Route::get('/dashboard/students/{id}/courses/{c_id}/approve', [StudentController::class, 'approveCourses'])->name('admin.students.approveCourses');
    Route::get('/dashboard/students/{id}/courses/{c_id}/reject', [StudentController::class, 'rejectCourses'])->name('admin.students.rejectCourses');

    Route::get('/dashboard/students/{id}/addCourse', [StudentController::class, 'addCourse'])->name('admin.students.addCourse');
    Route::post('/dashboard/students/{id}/addCourse', [StudentController::class, 'storeCourse'])->name('admin.students.storeCourse');


});

