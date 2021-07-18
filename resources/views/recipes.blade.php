@extends('layouts.app')

@section('content')
    <div class="recipes-page">

        <h1 class="title-with-img">
            <img src="/img/chef.png">
            <div>
                <span>Best Recipes With</span><b>Chef Wenfee</b>
            </div>
        </h1>
        <div class="row">
            <!-- <div class="col-md-3" style="position: relative">
                <div class="left-panel">
                    <h3>Recipes Categories</h3>
                    <ul class="recipes-cats-list">
                        <li><a class="active" href="{{route('recipes')}}"><img src="/img/cloche.svg" alt=""> <span>All Recipes</span></a></li>

                        @if ($recipes_categories)
                            @foreach ($recipes_categories as $cat )
                            <li><a href="{{route('recipes',$cat->slug)}}"><img
                                src="/img/cloche.svg" alt=""> <span>{{$cat->title}}</span></a></li>
                            @endforeach
                        @endif
                      
                        </ul>

                    </div>
                </div> -->
                <div class="col-md-12">
                    <div class="right-panel">

                        <div class="recipes-box">
                            @if ($recipes)
                                @foreach ($recipes as $item)
                                    <div class="ft-recipe">
                    <div class="ft-recipe__thumb">
                        <img src="{{Voyager::image($item->recipe_image)}}" />
                    </div>
                    <div class="ft-recipe__content">
                        <header class="content__header">
                            <div class="row-wrapper">
                                <h2 class="recipe-title">{{$item->title}}</h2>
                                <div class="user-rating"></div>
                            </div>
                            <ul class="recipe-details">
                                <li class="recipe-details-item time">
                                    <img src="/img/fi-rr-time-check.svg" alt="">
                                    <span class="value">{{$item->preparation_time}}</span><span class="title">Minutes</span>
                                </li>
                                <li class="recipe-details-item servings">
                                    <img src="/img/fi-rr-users.svg" alt="">
                                    <span class="value">{{$item->serving_range}}</span><span class="title">Serving</span>
                                </li>
                            </ul>
                        </header>
                        <p class="description">{{$item->short_desc}}</p>
                        <footer class="content__footer"><a href="{{route('recipe-preview',$item->slug)}}">View Recipe</a></footer>
                    </div>
                </div> 
                                @endforeach
                            @endif
                            {{$recipes->links()}}



                        </div>

                    </div>
                </div>
            </div>
        </div>

        <section class="products">
  <div class="heading">
      <h3>Recipe Products</h3>
  </div>
  <br>
  <div class="products-slider-pr">
      <div class="products-slider">
                  <div>
                    <div class="item">
                      <button class="fav-btn"><i class="fi fi-rr-heart"></i></button>
                      <a href="#" class="content">

                          <p class="sale">50 % OFF</p>
                          <small class="sale">Free Shipping</small>

                          <div class="background-image"
                              style="background-image: url('#');"></div>

                          <h3>
                              <span class="brand">Ali Taha</span>
                              <span class="code">#g55525</span>
                          </h3>
                          <h4 style="height: 150px">Hello World ! </h4>
                          
                              <p class="price">
                                  <strong>$50</strong>
                                  <span><del>$52</del></span>
                              </p>
                       
                      </a>

                      <div class="cart-pr">
                          <div class="cart">
                              <a  class="add-cart-btn"  onclick="add_to_cart_main(" href="javascript:void(0);">
                                  <i class="fi fi-rr-shopping-cart-add"></i>&nbsp;&nbsp;
                                  Add to cart</a>
                              <div class="counter">
                                  <button type="button" class="minus-btn"><img
                                          src=""></button>
                                  <input readonly name="qty" type="text" value="1" id="">
                                  <button type="button" class="plus-btn"><img
                                          src="#"></button>
                              </div>
                          </div>
                      </div>
                  </div>
                  </div>
      </div>
  </div>
</section>
@endsection
