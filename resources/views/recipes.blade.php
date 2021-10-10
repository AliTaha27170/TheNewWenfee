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
           {{--  <div class="col-md-3" style="position: relative">
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
                </div> --> --}}
                <div class="col-md-12">
                    <div class="right-panel">

                        <div class="recipes-box">
                            @if ($recipes)
                                @foreach ($recipes as $item)
                                    <div class="ft-recipe">
                    <div class="ft-recipe__thumb">
                        <img src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $item->recipe_image }}" />
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

@endsection
