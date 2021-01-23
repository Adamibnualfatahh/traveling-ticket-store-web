<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <title>@yield('title')</title>
    @include('includes.style')   
    @stack('addon-style')
    @stack('prepend-style')
  </head>
  <body>
    <!-- Nav -->

    @include('includes.navbar-alternate')
    @yield('content')
        <!-- Optional JavaScript -->
    @stack('prepend-script')
    @include('includes.script') 
    @stack('addon-script')
  </body>
</html>