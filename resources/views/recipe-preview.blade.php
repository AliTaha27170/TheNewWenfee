@extends('layouts.app')

@section('content')

<div class="pro-details-page">
    <div class="pro-details-box">
        <div class="row">
            <div class="col-md-1">
                <div class="slider-nav">
                    <div class="product2"><img src="{{Voyager::image($recipe->recipe_image)}}" width="70px" height="auto" alt=""></div>
                    <div class="product2"><img src="{{Voyager::image($recipe->recipe_image)}}" width="70px" height="auto" alt=""></div>
                </div>
            </div>
            <div class="col-md-5">
                <div class="slider-for">
                    <div class="product2"><img src="{{Voyager::image($recipe->recipe_image)}}" width="250px" height="auto" alt=""></div>
                    <div class="product2"><img src="{{Voyager::image($recipe->recipe_image)}}" width="250px" height="auto" alt=""></div>

                </div>
            </div>
            <div class="col-md-6">
                <div class="about">
                    <h3>
                        <span class="brand">{{$recipe->cat->title}}</span>
                    </h3>
                    <h4>{{$recipe->title}}
                    </h4>

                    <!-- <ul class="recipe-details">
                        <li class="recipe-details-item time">
                            <img src="/img/fi-rr-time-check.svg" alt="">
                            <span class="value">{{$recipe->preparation_time}}</span><span class="title">Minutes</span>
                        </li>
                        <li class="recipe-details-item servings">
                            <img src="/img/fi-rr-users.svg" alt="">
                            <span class="value">{{$recipe->serving_range}}</span><span class="title">Serving</span>
                        </li>
                    </ul> -->

                    <div class="description">
                            {!!$recipe->main_desc!!}
                    </div>

                    <div class="share-box">
                        <strong>Share The Recipe</strong>
                        <div class="social">
                            <a href="#"><img src="{{ asset('img/sc/facebook.png') }}"></a>
                            <a href="#"><img src="{{ asset('img/sc/instagram.png') }}"></a>
                            <a href="#"><img src="{{ asset('img/sc/twitter.png') }}"></a>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>

</div>


<div class="RecipesMethodBox">
        <div class="row">
            <div class="col-md-6">
                <h3>Ingredients</h3>
                <ol class="continuous-list">
                    <li>Bread</li>
                    <li>Eggs</li>
                    <li>Apples</li>
                    <li>Cereal</li>
                    <li>Canned Soup</li>
                    <li>Frozen Pizza</li>
                    <li>Chocolate</li>
                </ol>
            </div>
                <div class="col-md-6">
                    <h3>Method</h3>
                    <ul class="continuous-list">
                    <li>1-In a pot, add the frozen blackberries along with honey on a low medium heat.</li>
                    <li>2-In a pot, add the frozen blackberries along with honey on a low medium heat.</li>
                    <li>3-In a pot, add the frozen blackberries along with honey on a low medium heat.</li>
                    </ul>

                </div>
</div>
</div>

@endsection
