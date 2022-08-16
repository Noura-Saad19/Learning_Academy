<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Course;
use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class StudentController extends Controller
{
    public function index()
    {
        $data['students'] = Student::select('id', 'name', 'email', 'speciality')
            ->orderBy('id', 'DESC')->get();
        return view('admin.students.index')->with($data);
    }

    public function create()
    {

        return view('admin.students.create');
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'name' => 'nullable|string|max:50',
            'email' => 'required|string|max:50|unique:students',
            'speciality' => 'nullable|string|max:20',
        ]);


        Student::create($data);

        return redirect(route('admin.students.index'));
    }

    public function edit($id)
    {

        $data['students'] = Student::findOrFail($id);
        return view('admin.students.edit')->with($data);

    }

    public function update(Request $request)
    {

        $data = $request->validate([
            'name' => 'nullable|string|max:50',
            'email' => 'required|string|max:50|unique:students',
            'speciality' => 'nullable|string|max:20',

        ]);
        Student::findOrFail($request->id)->update($data);

        return back();
    }

    public function delete($id)
    {
        Student::findOrFail($id)->delete();

        return back();
    }

    public function showCourses($id)
    {
        $data['courses'] = Student::findOrFail($id)->courses;
        $data['student_id'] = $id;

        return view('admin.students.showCourses')->with($data);
    }

    public function approveCourses($id, $c_id)
    {
        DB::table('course_student')->where('student_id', $id)
            ->where('course_id', $c_id)->update([
                'status' => 'approve'
            ]);

        return back();
    }

    public function rejectCourses($id, $c_id)
    {
        DB::table('course_student')->where('student_id', $id)
            ->where('course_id', $c_id)->update([
                'status' => 'reject'
            ]);

        return back();
    }

    public function addCourse($id)
    {
        $data['student_id'] = $id;
        $data['courses'] = Course::select('id', 'name')->get();
        return view('admin.students.addCourse')->with($data);
    }

    public function storeCourse($id, Request $request)
    {
        $data = $request->validate([
            'course_id' => 'required|exists:courses,id'
        ]);
        DB::table('course_student')->insert([
            'student_id' => $id,
            'course_id' => $data['course_id']
        ]);
        return redirect(route('admin.students.showCourses', $id));
    }
}
