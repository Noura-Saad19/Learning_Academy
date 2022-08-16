<?php

namespace App\Http\Controllers\front;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Course;
use App\Models\Setting;
use Illuminate\Http\Request;

class CoursesController extends Controller
{
    public function category($id)
    {
        $data['Categories'] = Category::findOrFail($id);
        $data['Courses'] = Course::where('category_id', $id)->get();
//        paginate(3);
        $data['Category'] = Category::select('id', 'name')
            ->get();
        $data['setting'] = Setting::select('logo', 'favicon')
            ->first();
        $data['set'] = Setting::first();
        return view('front.courses.cat')->with($data);
    }


    public function show($id,$c_id)
    {
        $data['course'] = Course::findOrFail($c_id);
//        $data['Courses'] = Course::where('category_id', $id)->get();
        $data['Category'] = Category::select('id', 'name')
            ->get();
        $data['setting'] = Setting::select('logo', 'favicon')
            ->first();
        $data['set'] = Setting::first();
        return view('front.courses.show')->with($data);
    }
}
