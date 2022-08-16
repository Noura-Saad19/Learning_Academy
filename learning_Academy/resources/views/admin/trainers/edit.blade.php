@extends('admin.layout')
@section('content')
    <div class="d-flex justify-content-between mb-3">
        <h6>Trainers / Edit /{{$trainers->name}}</h6>
        <a class="btn btn-primary" href="{{route('admin.trainers.index')}}">Back</a>
    </div>
    @include('admin.inc.errors')
    <form method="post"  action="{{route('admin.trainers.update')}}" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <div class="mb-3">
                <input type="hidden" name="id" value="{{$trainers->id}}">
                <label  class="form-label">Name</label>
                <input type="text" name="name" class="form-control" value="{{$trainers->name}}" >
            </div>
            <div class="mb-3">
                <label  class="form-label" >Phone</label>
                <input type="text" name="phone" class="form-control" value="{{$trainers->phone}}" >
            </div>
            <div class="mb-3">
                <label  class="form-label">Speciality</label>
                <input type="text" name="speciality" class="form-control" value="{{$trainers->speciality}}">
            </div>
            <img src="{{asset('uploads/trainers/'.$trainers->img)}}" width="100px" class="py-5">

            <div class="mb-3">
                <label  class="form-label">Image</label>
                <input type="file" name="img" class="form-control-file" >
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>


@endsection
