@extends('admin.layout')
@section('content')
    <div class="d-flex justify-content-between mb-3">
        <h6>Student / Edit /Add Course</h6>
        <a class="btn btn-primary" href="{{route('admin.students.index')}}">Back</a>
    </div>
    @include('admin.inc.errors')
    <form method="post" action="{{route('admin.students.storeCourse',$student_id)}}" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <div class="mb-3">
                <label class="form-label">Courses</label>
                <select class="form-control" name="course_id">
                    @foreach($courses as $course)
                        <option value="{{$course->id}}">
                            {{$course->name}}</option>
                    @endforeach
                </select>
            </div>


            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>

@endsection
