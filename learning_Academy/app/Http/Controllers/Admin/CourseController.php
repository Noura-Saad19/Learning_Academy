<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Course;
use App\Models\Trainer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class CourseController extends Controller
{
    public function index()
    {
        $data['courses'] = Course::select('id', 'name', 'price', 'img')
            ->orderBy('id', 'DESC')->get();
        return view('admin.courses.index')->with($data);
    }

    public function create()
    {
        $data['cats']=Category::select('id','name')->get();
        $data['trainers']=Trainer::select('id','name')->get();
        return view('admin.courses.create')->with($data);
    }

    public function store(Request $request)
    {
        $data= $request->validate([
            'name' => 'required|string|max:50',
            'price' => 'required|string|max:20',
            'small_desc' => 'required|string|max:191',
            'desc' => 'required|string',
            'category_id' => 'required|exists:categories,id',
            'trainer_id' => 'required|exists:trainers,id',
            'img' => 'required|image|mimes:jpg,jpeg,png',
        ]);


        if($request->hasfile('img'))
        {
            $file = $request->file('img');
            $extension = $file->getClientOriginalExtension();
            $filename = time().'.'.$extension;
            $file->move('uploads/Courses/', $filename);
            $data['img'] = $filename;
        }

        Course::create($data);

        return redirect(route('admin.courses.index'));
    }

    public function edit($id)
    {
        $data['cats']=Category::select('id','name')->get();
        $data['trainers']=Trainer::select('id','name')->get();
        $data['courses'] = Course::findOrFail($id);
        return view('admin.courses.edit')->with($data);

    }

    public function update(Request $request)
    {

        $data = $request->validate([
            'name' => 'required|string|max:50',
            'price' => 'required|string|max:20',
            'small_desc' => 'required|string|max:191',
            'desc' => 'required|string',
            'category_id' => 'required|exists:categories,id',
            'trainer_id' => 'required|exists:trainers,id',
            'img' => 'nullable|image|mimes:jpg,jpeg,png',

        ]);
        $old_Name = Course::findOrFail($request->id)->img;
        if ($request->hasFile('img')) {
            $destination = 'uploads/Courses/'.$data['img'];
            if(File::exists($destination))
            {
                File::delete($destination);
            }
            $file = $request->file('img');
            $extension = $file->getClientOriginalExtension();
            $filename = time().'.'.$extension;
            $file->move('uploads/Courses/', $filename);
            $data['img'] = $filename;

        } else {
            $data['img'] = $old_Name;
        }
        Course::findOrFail($request->id)->update($data);

        return redirect(route('admin.courses.index'));
    }

    public function delete($id)
    {
        $old_Name = Course::findOrFail($id)->img;
        $destination = 'uploads/Courses/'.$old_Name;
        if(File::exists($destination))
        {
            File::delete($destination);
        }
        Course::findOrFail($id)->delete();

        return back();
    }
}
