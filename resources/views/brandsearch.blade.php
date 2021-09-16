@extends('layouts.app')

@section('content')


<div class="page-main page-brands">
        <div class="page-head-banner page-head-banner-layout-text">

            <h1 class="page-head-banner-title page-title" id="page-title-heading"
                aria-labelledby="page-title-heading toolbar-amount">
                BRANDS
            </h1>

        </div>
        <ul class="brands_list">
        @foreach($brands as $brand)
        <li class="Brands_item">
        <h2 class="brand_logo">
        <a href="/brand/{{$brand->slug}}">
        <img class="brand_logo" src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $brand->logo}}" alt="BrandLogo">
        </a>
        </h2>
        </li>
        @endforeach
        </ul>
        @endsection
