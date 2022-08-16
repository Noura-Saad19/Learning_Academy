<?php

namespace App\Http\Controllers\front;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Course;
use App\Models\Setting;
use App\Models\SiteContent;
use App\Models\Student;
use App\Models\Testmonial;
use App\Models\Trainer;
use Illuminate\Http\Request;

class HomepageController extends Controller
{
    public function index()
    {
        $data['banner']=SiteContent::select('content')->where('name','banner')->first();
        $data['courses'] = Course::select('id', 'name', 'small_desc', 'category_id', 'trainer_id', 'img', 'price')
            ->orderBy('id', 'desc')
            ->take(3)
            ->get();
        $data['courses_count']=Course::count();
        $data['trainers_count']=Trainer::count();
        $data['students_count']=Student::count();

        $data['testmonials']=Testmonial::select('name','spec','desc','img')->get();

        $data['Category'] = Category::select('id', 'name')
            ->get();

        $data['setting'] = Setting::select('logo', 'favicon')
            ->first();

        $data['set'] = Setting::first();
        return view('front.index')->with($data);
    }
}
