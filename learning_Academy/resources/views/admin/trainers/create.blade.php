@extends('admin.layout')
@section('content')
    <div class="d-flex justify-content-between mb-3">
        <h6>Trainers / Add New</h6>
        <a class="btn btn-primary" href="{{route('admin.trainers.index')}}">Back</a>
    </div>
    @include('admin.inc.errors')
<form method="post"  action="{{route('admin.trainers.store')}}" enctype="multipart/form-data">
    @csrf
    <div class="form-group">
        <div class="mb-3">
            <label  class="form-label">Name</label>
            <input type="text" name="name" class="form-control" >
        </div>
        <div class="mb-3">
            <label  class="form-label">Phone</label>
            <input type="text" name="phone" class="form-control" >
        </div>
        <div class="mb-3">
            <label  class="form-label">Speciality</label>
            <input type="text" name="speciality" class="form-control" >
        </div>
        <div class="mb-3">
            <label  class="form-label">Image</label>
            <input type="file" name="img" class="form-control-file" >
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</form>


@endsection
