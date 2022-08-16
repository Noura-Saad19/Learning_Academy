@extends('admin.layout')


@section('content')

    <div class="d-flex justify-content-between mb-3">
        <h6> Students</h6>
        <a class="btn btn-sm btn-primary" href="{{route('admin.students.create')}}">Add New</a>

    </div>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Speciality</th>
            <th scope="col">Actions</th>
        </tr>
        </thead>
        <tbody>
        @foreach($students as $student)
            <tr>
                <th scope="row">{{$loop->iteration}}</th>

                <td>{{$student->name}}</td>
                <td>
                  {{$student->email}}
                </td>
                <td>{{$student->speciality}}</td>
                <td>
                    <a class="btn btn-sm btn-info" href="{{route('admin.students.edit',$student->id)}}">Edit</a>
                    <a class="btn btn-sm btn-danger" href="{{route('admin.students.delete',$student->id)}}">Delete</a>
                    <a class="btn btn-sm btn-primary" href="{{route('admin.students.showCourses',$student->id)}}">Show Courses</a>



                </td>

            </tr>
        @endforeach
        </tbody>
    </table>
@endsection
