@extends('layouts.app')

@section('title')
NOMADS
@endsection

@section('content')
<!-- header -->
  <header class="text-center">
    <h1>
      Explore the Beautiful World
      <br>
      As Easy One Click
    </h1>
    <p class="mt-3">
      You will see beautiful
      <br>
      moment you never see before
    </p>
    <a href="#popular" class="btn btn-get-started px-4 mt-4">
      Get Started
    </a>
  </header>

  <main>
    <div class="contrainer">
      <section class="section-stats row justify-content-center" id="stats">
        <div class="col-3 col-md-2 stats-detail">
          <h2>20K</h2>
          <p>Members</p>
        </div>

        <div class="col-3 col-md-2 stats-detail">
          <h2>12</h2>
          <p>COUNTRIES</p>
        </div>

        <div class="col-3 col-md-2 stats-detail">
          <h2>3K</h2>
          <p>HOTELS</p>
        </div>

        <div class="col-3 col-md-2 stats-detail">
          <h2>72</h2>
          <p>PARTNERS</p>
        </div>
      </section>
    </div>
  </main>
  

  <main>
    <section class="section-popular" id="popular">
      <div class="container">
        <div class="row">
        <div class="col text-center section-popular-heading">
        <h2>Wisata Popolar</h2>
        <p>Something that you never try <br>
          before in this world</p>
          </div>
        </div>
      </div>
    </section>
  <section class="section-popular-content" id="PopularContent">
  <div class="container">
    <div class="section-popular-travel row justify-content-center">
      @foreach ($items as $item)
                        <div class="col-sm-6 col-md-4 col-lg-3">
                            <div class="card-travel text-center d-flex flex-column" style="background-image: url('{{ $item->galleries->count() ? Storage::url ($item->galleries->first()->image) : '' }}');">
                                <div class="travel-country">{{ $item->location}}</div>
                                <div class="travel-location">{{ $item->title}}</div>
                                <div class="travel-button mt-auto">
                                    <a href="{{ url('/detail', $item->slug) }}" class="btn btn-travel-details px-4">
                                    View Details
                                    </a>
                                </div>
                            </div>
                        </div>
                    @endforeach

      {{-- <div class="col-sm-6 col-md4 col-lg-3">
        <div class="card-travel text-center d-flex flex-column"
        style="background-image: url(frontend/images/Group\ 35.jpg);">
          <div class="travel-country">INDONESIA</div>
          <div class="travel-location">BROMO</div>
          <div class="travel-button mt-auto">
            <a href="{{ url('/detail') }}" class="btn btn-travel-details px-4">
              View Details
            </a>
          </div>
        </div>
      </div>

      <div class="col-sm-6 col-md4 col-lg-3">
        <div class="card-travel text-center d-flex flex-column"
        style="background-image: url(frontend/images/Group\ 36.jpg);">
          <div class="travel-country">INDONESIA</div>
          <div class="travel-location">NUSA PENIDA</div>
          <div class="travel-button mt-auto">
            <a href="{{ url('/detail') }}" class="btn btn-travel-details px-4">
              View Details
            </a>
          </div>
        </div>
      </div>

      <div class="col-sm-6 col-md4 col-lg-3">
        <div class="card-travel text-center d-flex flex-column"
        style="background-image: url(frontend/images/Group\ 37.jpg);">
          <div class="travel-country">INDONESIA</div>
          <div class="travel-location">KARIMUN</div>
          <div class="travel-button mt-auto">
            <a href="{{ url('/detail') }}" class="btn btn-travel-details px-4">
              View Details
            </a>
          </div>
        </div>
      </div>--}}
    </div> 
    <section class="section-networks">
      <div class="contrainer">
        <div class="row">
          <div class="col-md-4">
            <h2>Our Networks</h2>
            <p>Companies are trusted us <br>
              more than just a trip</p>
          </div>
          <div class="col-md-8 text-center">
          <img src="frontend/images/Group 38.png" alt="logo partner">  
          </div>
        </div>
      </div>
    </section>
  </div>
  </section>
  <section class="section-testimonial-heading" id="testimonialheading">
  <div class="contrainer">
    <div class="row">
      <div class="col text-center">
        <h2>They're Loving US</h2>
        <p>Moments were giving them <br> 
          the best experience</p>
      </div>
    </div>
  </div>
  </section>
  <section class="section section-testimonial-content" id="Testimonialcontent">
  <div class="container">
    <div class="section-popular-travel row justify-content-center">
      <div class="col-sm-6 col-md-6 col-lg-4">
        <div class="card card-testimonial text-center">
          <div class="testimonial-content">
            <img src="frontend/images/adam.png" alt="user" class="mb-4 rounded-circle">
            <h3 class="mb-4">Adam Ibnu</h3>
            <p class="testimonial">
              " It was glorious and I could <br>
  not stop to say wohooo for <br>
  every single moment <br>  
  Dankeeeeee "
            </p>
          </div>
          <hr>
          <p class="trip-to mt-2">
            Trip to ubud
          </p>
        </div>
      </div>
      <div class="col-sm-6 col-md-6 col-lg-4">
        <div class="card card-testimonial text-center">
          <div class="testimonial-content">
            <img src="frontend/images/jonas-kakaroto-KIPqvvTOC1s-unsplash.png" alt="user" class="mb-4 rounded-circle">
            <h3 class="mb-4">Man</h3>
            <p class="testimonial">
              " If you're brave enough to say goodbye, life will reward you with a new hello"
            </p>
          </div>
          <hr>
          <p class="trip-to mt-2">
            Trip to Bromo,Indonesia
          </p>
        </div>
      </div>
      <div class="col-sm-6 col-md-6 col-lg-4">
        <div class="card card-testimonial text-center">
          <div class="testimonial-content">
            <img src="frontend/images/peter-sjo-Nxy-6QwGMzA-unsplash.png" alt="user" class="mb-4 rounded-circle">
            <h3 class="mb-4">Woman</h3>
            <p class="testimonial">
              " Never regret a day in your life; good days give happiness, bad days give experiences"
            </p>
          </div>
          <hr>
          <p class="trip-to mt-2">
            Trip to Nusa Paninda, Bali
          </p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-12 text-center">
        <a href="" class="btn btn-need-help px-4 mt-4 mx-1">I Need Help</a>
        <a href="{{ route('register') }}" class="btn btn-get-started px-4 mt-4 mx-1">Get Started</a>
      </div>
    </div>
  </div>
  </section>
  </main>


@endsection