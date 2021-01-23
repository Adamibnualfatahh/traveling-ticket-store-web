@extends('layouts.admin')

@section('content')
     <!-- Begin Page Content -->
 <div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Ubah Paket Travel {{$item->title}}</h1>
    </div>


@if ($errors->any())
    <div class="alert alert-danger">
       <ul>
           @foreach ($errors->all() as $error)
               <li>{{ $error }}</li>
           @endforeach
       </ul>
    </div>
    
@endif


<div class="card-shadow">
<div class="card-body">
    <form action="{{ route('travel-package.update', $item->id)}}" method="post">
    @method('PUT')
    @csrf
    
    <div class="form-group">
        <label for="title">Title</label>
        <input type="text" class="form-control" name="title" placeholder="Title" value="{{ $item->title}}">
    </div>

    <div class="form-group">
        <label for="location">Location</label>
        <input type="text" class="form-control" name="location" placeholder="Location" value="{{ $item->location}}">
    </div>


    <div class="form-group">
        <label for="about">About</label>
        <textarea name="about" rows="10" class="d-block w-100 form-control">{{ $item->about}}</textarea>
    </div>

    <div class="form-group">
        <label for="featured_event">Featured Event</label>
        <input type="text" class="form-control" name="featured_event" pleaceholder="Featured Event" value="{{ $item->featured_event}}">
    </div>

    <div class="form-group">
        <label for="languange">Language</label>
        <input type="text" class="form-control" name="languange" pleaceholder="Language" value="{{ $item->languange}}">
    </div>

    <div class="form-group">
        <label for="foods">Foods</label>
        <input type="text" class="form-control" name="foods" pleaceholder="Foods" value="{{ $item->foods}}">
    </div>

    <div class="form-group">
        <label for="departure_date">Departure Date</label>
        <input type="date" class="form-control" name="departure_date" pleaceholder="Departure Date" value="{{ $item->departure_date}}">
    </div>

    <div class="form-group">
        <label for="duration">Duration</label>
        <input type="text" class="form-control" name="duration" pleaceholder="Duration" value="{{ $item->duration}}">
    </div>

    <div class="form-group">
        <label for="type">Type</label>
        <input type="text" class="form-control" name="type" pleaceholder="Type" value="{{$item->type}}">
    </div>

    <div class="form-group">
        <label for="price">Price</label>
        <input type="number" class="form-control" name="price" pleaceholder="Price" value="{{ $item->price}}">
    </div>

<button type="submit" class="btn btn-primary btn-block">
Ubah
</button>
</form>
</div>
</div>
 </div>
<!-- /.container-fluid -->
@endsection