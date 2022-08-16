@extends('admin.layout')
@section('content')
    <div class="d-flex justify-content-between mb-3">
        <h6>Courses / Edit /{{$courses->name}}</h6>
        <a class="btn btn-primary" href="{{route('admin.courses.index')}}">Back</a>
    </div>
    @include('admin.inc.errors')
    <form method="post" action="{{route('admin.courses.update')}}" enctype="multipart/form-data">
        @csrf
        <input type="hidden" name="id" value="{{$courses->id}}">
        <div class="form-group">
            <div class="mb-3">
                <label class="form-label">Name</label>
                <input type="text" name="name" class="form-control" value="{{$courses->name}}">
            </div>
            <div class="mb-3">
                <label class="form-label">Categories</label>
                <select class="form-control" name="category_id">
                    @foreach($cats as $cat)
                        <option value="{{$cat->id}}"
                                @if($courses->category_id==$cat->id) selected @endif >{{$cat->name}}</option>
                    @endforeach
                </select>
            </div>
            <div class="mb-3">
                <label class="form-label">Trainers</label>
                <select class="form-control" name="trainer_id">
                    @foreach($trainers as $trainer)
                        <option value="{{$trainer->id}}"
                                @if($courses->trainer_id==$trainer->id) selected @endif>{{$trainer->name}}</option>
                    @endforeach
                </select>
            </div>
            <div class="mb-3">
                <label class="form-label">Price</label>
                <input type="text" name="price" class="form-control" value="{{$courses->price}}">
            </div>

            <div class="mb-3">
                <label class="form-label">Small Description</label>
                <input type="text" name="small_desc" class="form-control" value="{{$courses->small_desc}}">
            </div>
            <div class="mb-3">
                <label class="form-label">Description</label>
                <textarea name="desc" class="form-control" cols="30" rows="10">{{$courses->desc}}</textarea>
            </div>
            <img src="{{asset('uploads/courses/'.$courses->img)}}" width="100px" class="py-5">

            <div class="mb-3">
                <label class="form-label">Image</label>
                <input type="file" name="img" class="form-control-file">
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
        </div>
    </form>


@endsection
