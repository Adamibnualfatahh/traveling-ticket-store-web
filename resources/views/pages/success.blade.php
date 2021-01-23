@extends('layouts.success')
@section('title', 'Checkout Success')


@section('content')
<main>
    
    <div class="section-success d-flex align-items-center">
      <div class="col text-center">
        <img src="{{ url('frontend/images/bw.png') }}" alt="">
        <h1> Yay! Success </h1>
        <p>
          We've sent you email for trip <br>instruction please read it as well
        </p>
        <a href="{{ url('/') }}" class="btn btn-home-page mt-3 px-5">
          HOME PAGE
        </a>
      </div>
    </div>
  
</main>
@endsection
