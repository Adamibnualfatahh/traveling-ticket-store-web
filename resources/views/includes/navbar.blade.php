<div class="container">
    <nav class="navbar navbar-expand-lg navbar-light bg-white">
      <a class="navbar-brand" href="{{ url('/') }}">
        <img src="{{ ('frontend/images/logo.png') }}" alt="">
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navb" >
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navb">
        <ul class="navbar-nav ml-auto mr-3">
          <li class="nav-item">
            <a class="nav-link active" href="{{ url('/') }}">Home </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Paket Travel</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Services</a>
          <div class="dropdown-menu">
            <a href="" class="dropdown-item">Link</a>
            <a href="" class="dropdown-item">Link</a>
            <a href="" class="dropdown-item">Link</a>
          </div>
          </li>
          <li class="nav-item">
            <a class="nav-link " href="#">Testimonial</a>
          </li>
        </ul>

          <!-- Mobile Button -->

@guest
          <form class="form-inline d-sm-block d-md-none">
            <button class="btn btn-login my-2 my-sm-0 " type="button"
            onclick="event.preventDefault(); location.href='{{ url('login') }}';">
              Masuk
            </button>
          </form>
          <!-- desktop button -->
          <form class="form-inline my-2 my-lg-0 d-none d-md-block">
            <button class="btn btn-login btn-navbar-right my-2 my-sm-0 px-4" type="button"
            onclick="event.preventDefault(); location.href='{{ url('login') }}';">
              Masuk
            </button>
          </form>
@endguest



@auth

          <form class="form-inline d-sm-block d-md-none" action="{{ url('logout') }}" method="POST">
            @csrf
            <button class="btn btn-login my-2 my-sm-0 ">
              Keluar
            </button>
          </form>
          <!-- desktop button -->
          <form class="form-inline my-2 my-lg-0 d-none d-md-block" action="{{ url('logout') }}" method="POST">
            @csrf
            <button class="btn btn-login btn-navbar-right my-2 my-sm-0 px-4">
              Keluar
            </button>
          </form>
@endauth

      </div>
    </nav>
  </div>