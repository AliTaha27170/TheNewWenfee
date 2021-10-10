<?php header('Access-Control-Allow-Origin: *'); ?>
<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

    
<head>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Wenfee</title>
        <link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/bootstrap-v4-grid-only@1.0.0/dist/bootstrap-grid.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel='stylesheet' href="{{ asset('libs/slick/slick.css') }}" />
        <link rel='stylesheet' href="{{ asset('libs/slick/slick-theme.css') }}" />
        <link rel="stylesheet" href="{{ asset('libs/fi/css/uicons-regular-rounded.css') }}">
        <link rel="stylesheet"  href="{{asset('css/bootstrap.css')}} ">
        <link rel="stylesheet" href="{{ asset('css/recipes.css') }}">
        <link rel="stylesheet" href="{{ asset('fonts/fonts.css') }}">
        <link rel='stylesheet' href="{{asset('css/add.css') }}" />
        <link rel='stylesheet' href="{{ asset('css/style.css') }}?v=3" />
        @stack('styles')
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="{{ asset('js/ac.js') }}"></script>
        <script src="{{ asset('js/main.js') }}"></script>

        {{-- nav and menu  --}}
        <link rel="stylesheet" href="{{asset('css/Navbar.css')}} ">

        
    </head>
</head>

<body class="is-loading">
    <div class="loading-box">
        <div class="content">
            <img src="/img/logo.png" alt="">
            <p><img src="/img/loading.gif" alt="">&nbsp;&nbsp;Loading...</p>

        </div>
    </div>

    <div id="app">
        @include('partials.nav-menu')
        @include('partials.inc.messages')
        @yield('content')
        @include('partials.footer')
    </div>

    <script type="text/javascript" src="https://www.viralpatel.net/demo/jquery/jquery.shorten.1.0.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script src="{{ asset('libs/slick/slick.js') }}"></script>
    <script src="{{ asset('js/scripts.js') }}?v=2"></script>
    <script>

        function like (e,id)
        {
      

            @if(!(isset(auth()->user()->id)))

            return alert('You must login first ! ');
                
            @endif



            $.get("../../../like/"+id, function(data, status){
                $(e).removeClass('fi fi-rr-heart');
                $(e).addClass(' fas fa-heart ');
                $(e).attr("onclick","unLike(this," + id + ")");

            });

        }

        function unLike (e,id)
        {


            $.get("../../../unLike/"+id, function(data, status){
                
                 $(e).removeClass(' fas fa-heart ');
                 $(e).addClass('fi fi-rr-heart');
                 $(e).attr("onclick","like(this," + id + ")");

            });

        }

        
    </script>


   
    {{-- get products  --}}

    <script>
        function getProducts(id) {
            $('#products_view').load("../../../../../get_p/" +id);
        }
        

          </script>
      

    {{-- *** --}}
    @stack('scripts')

 
</body>

</html>
