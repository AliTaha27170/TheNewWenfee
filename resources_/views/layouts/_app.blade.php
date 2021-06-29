<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Wenfee</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-v4-grid-only@1.0.0/dist/bootstrap-grid.min.css">
        <link rel='stylesheet' href="{{asset('libs/slick/slick.css')}}" />
        <link rel='stylesheet' href="{{asset('libs/slick/slick-theme.css')}}" />
        <link rel='stylesheet' href="{{asset('css/style.css')}}" />
    </head>
</head>
<body>
    <div id="app">
   @include('partials.nav-menu')
   @yield('content')
   @include('partials.footer')
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="{{asset('libs/slick/slick.js')}}"></script>
    <script src="{{asset('js/scripts.js')}}"></script>
</body>
</html>
