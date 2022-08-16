@extends('admin.layout')
@section('content')
    <div class="d-flex justify-content-between mb-3">
        <h6>Student / Edit /{{$students->name}}</h6>
        <a class="btn btn-primary" href="{{route('admin.students.index')}}">Back</a>
    </div>
    @include('admin.inc.errors')
    <form method="post"  action="{{route('admin.students.store')}}" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <div class="mb-3">
                <label  class="form-label">Name</label>
                <input type="text" name="name" class="form-control" value="{{$students->name}}">
            </div>
            <div class="mb-3">
                <label  class="form-label">Email</label>
                <input type="text" name="email" class="form-control"  value="{{$students->email}}">
            </div>
            <div class="mb-3">
                <label  class="form-label">Speciality</label>
                <input type="text" name="speciality" class="form-control"  value="{{$students->speciality}}">
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>

@endsection
