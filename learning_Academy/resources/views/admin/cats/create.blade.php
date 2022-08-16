@extends('admin.layout')
@section('content')
    <div class="d-flex justify-content-between mb-3">
        <h6>Categories / Add New</h6>
        <a class="btn btn-primary" href="{{route('admin.cats.index')}}">Back</a>
    </div>
    @include('admin.inc.errors')
<form method="post"  action="{{route('admin.cats.store')}}">
    @csrf
    <div class="form-group">
        <div class="mb-3">
            <label  class="form-label">Name</label>
            <input type="text" name="name" class="form-control" >
        </div>

        <button type="submit" class="btn btn-primary">Submit</button>
    </div>
</form>


@endsection
