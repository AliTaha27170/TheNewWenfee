@extends('layouts.app')

@section('content')


<!-- Back to top button -->
<a id="button"> <i class="fas fa-angle-up Arrow"></i> </a>
<!-- Back to top button -->


    <div class="page-main page-brands">
        <div class="page-head-banner page-head-banner-layout-text">

            <h1 class="page-head-banner-title page-title" id="page-title-heading"
                aria-labelledby="page-title-heading toolbar-amount">
                BRANDS
            </h1>

        </div>
        <!-- char Filters -->

        <div class="row top_up2">
		<div class="col-sm-9">
			<div class="brand-search">
				<div class="characters">
    <ul class="characters-filter">
		<li class="active"><a href="#">ALL</a></li>
        				            <li id=""><a href="#">0-9</a></li>
                                    <li class="" ><a href="#A">A</a></li>
                                    <li class=""><a href="#B">B</a></li>
                                    <li class=""><a href="#C">C</a></li>
                                    <li class=""><a href="#D">D</a></li>
                                    <li class=""><a href="#E">E</a></li>
                                    <li class=""><a href="#F">F</a></li>
                                    <li class=""><a href="#G">G</a></li>
                                    <li class=""><a href="#H">H</a></li>
                                    <li class=""><a href="#I">I</a></li>
                                    <li class=""><a href="#L">J</a></li>
                                    <li class=""><a href="#K">K</a></li>
                                    <li class=""><a href="#L">L</a></li>
                                    <li class=""><a href="#M">M</a></li>
                                    <li class=""><a href="#N">N</a></li>
                                    <li class=""><a href="#O">O</a></li>
                                    <li class=""><a href="#P">P</a></li>
                                    <li class=""><a href="#Q">Q</a></li>
                                    <li class=""><a href="#R">R</a></li>
                                    <li class=""><a href="#S">S</a></li>
                                    <li class=""><a href="#T">T</a></li>
                                    <li class=""><a href="#U">U</a></li>
                                    <li class=""><a href="#V">V</a></li>
                                    <li class=""><a href="#W">W</a></li>
                                    <li class=""><a href="#X">X</a></li>
                                    <li class=""><a href="#Y">Y</a></li>
                                    <li class=""><a href="#Z">Z</a></li>
				                        </ul>
	<div class="clearfix"></div>
</div>			</div>
		</div>
		<div class="col-sm-3">
			<div class="brand-search">
			<div class="search">
	<div class="content-heading search_title">
		<span id="Brands_Search">Search</span>
	</div>
	<div class="search_brand_form search_box">
    <form id="Search_Box" class="d-flex" action="{{ route('brand_search') }}" method="POST" id="Navbar_Search" hidden>
            @csrf
            <input  id="Brands_Search_Input" class="form-control me-2" type="search" placeholder="Brand Name" name="search" aria-label="Search">
            <button id="Brands_Search_Button" class="btn btn-outline-success" type="submit"><i class="fas fa-search"></i></button>
        </form>
	</div>
</div>
			</div>
		</div>
	</div>
        {{--

         --}}
         <div class="container">
        @foreach ($groups as $letter => $group)
            <div class="CustomLetter" id="{{ $letter }}">
                <h2>{{ $letter }}</h2>
                </div>
                <ul class="brands_list">
                    @foreach ($group as $bbrand)

                        <li class="brand_item">
                            <h2 class="brand_logo"><a title="{{ $bbrand->name }}" href="/brand/{{ $bbrand->slug }}"> <img
                                        class="brand_logo"
                                        src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $bbrand->logo }}"
                                        alt="" /> </a></h2>
                        </li>
                        {{-- <li>{{$bbrand['name']}}</li> --}}
                    @endforeach
                </ul>
        @endforeach
        </div>
    </div>
@endsection
