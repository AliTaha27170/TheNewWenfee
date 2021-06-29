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
            <div class="col-md-3" style="position: relative">
                <div class="left-panel">
                    <h3>Recipes Categories</h3>
                    <ul class="recipes-cats-list">
                        <li><a class="active" href="#"><img src="/img/cloche.svg" alt=""> <span>All Recipes</span></a></li>

                        <?php for ($i = 0; $i < 6; $i++) { ?> <li><a href="#"><img
                                    src="/img/cloche.svg" alt=""> <span>Category <?= $i + 1 ?></span></a></li>
                            <?php } ?>
                        </ul>

                    </div>
                </div>
                <div class="col-md-9">
                    <div class="right-panel">

                        <div class="recipes-box">
                            <div class="ft-recipe">
                                <div class="ft-recipe__thumb">
                                    <img src="/img/thumb_rec1.jpg" />
                                </div>
                                <div class="ft-recipe__content">
                                    <header class="content__header">
                                        <div class="row-wrapper">
                                            <h2 class="recipe-title">Fried Kebbeh</h2>
                                            <div class="user-rating"></div>
                                        </div>
                                        <ul class="recipe-details">
                                            <li class="recipe-details-item time">
                                                <img src="/img/fi-rr-time-check.svg" alt="">
                                                <span class="value">20</span><span class="title">Minutes</span>
                                            </li>
                                            <li class="recipe-details-item servings">
                                                <img src="/img/fi-rr-users.svg" alt="">
                                                <span class="value">4-6</span><span class="title">Serving</span>
                                            </li>
                                        </ul>
                                    </header>
                                    <p class="description">
                                        There’s no better way to celebrate May being National Strawberry Month than by sharing a
                                        sweet
                                        treat
                                        with your pup!!! Strawberries...</p>
                                    <footer class="content__footer"><a href="#">View Recipe</a></footer>
                                </div>
                            </div>

                            <div class="ft-recipe">
                                <div class="ft-recipe__thumb">
                                    <img src="/img/thumb_rec2.jpg" />
                                </div>
                                <div class="ft-recipe__content">
                                    <header class="content__header">
                                        <div class="row-wrapper">
                                            <h2 class="recipe-title">A Greek Mosakaa</h2>
                                            <div class="user-rating"></div>
                                        </div>
                                        <ul class="recipe-details">
                                            <li class="recipe-details-item time">
                                                <img src="/img/fi-rr-time-check.svg" alt="">
                                                <span class="value">20</span><span class="title">Minutes</span>
                                            </li>
                                            <li class="recipe-details-item servings">
                                                <img src="/img/fi-rr-users.svg" alt="">
                                                <span class="value">4-6</span><span class="title">Serving</span>
                                            </li>
                                        </ul>
                                    </header>
                                    <p class="description">
                                        There’s no better way to celebrate May being National Strawberry Month than by sharing a
                                        sweet
                                        treat
                                        with your pup!!! Strawberries...</p>
                                    <footer class="content__footer"><a href="#">View Recipe</a></footer>
                                </div>
                            </div>

                            <div class="ft-recipe">
                                <div class="ft-recipe__thumb">
                                    <img src="/img/thumb_rec3.jpg" />
                                </div>
                                <div class="ft-recipe__content">
                                    <header class="content__header">
                                        <div class="row-wrapper">
                                            <h2 class="recipe-title">Pasta flora with berries</h2>
                                            <div class="user-rating"></div>
                                        </div>
                                        <ul class="recipe-details">
                                            <li class="recipe-details-item time">
                                                <img src="/img/fi-rr-time-check.svg" alt="">
                                                <span class="value">20</span><span class="title">Minutes</span>
                                            </li>
                                            <li class="recipe-details-item servings">
                                                <img src="/img/fi-rr-users.svg" alt="">
                                                <span class="value">4-6</span><span class="title">Serving</span>
                                            </li>
                                        </ul>
                                    </header>
                                    <p class="description">
                                        There’s no better way to celebrate May being National Strawberry Month than by sharing a
                                        sweet
                                        treat
                                        with your pup!!! Strawberries...</p>
                                    <footer class="content__footer"><a href="#">View Recipe</a></footer>
                                </div>
                            </div>
                            <div class="ft-recipe">
                                <div class="ft-recipe__thumb">
                                    <img src="/img/thumb_rec1.jpg" />
                                </div>
                                <div class="ft-recipe__content">
                                    <header class="content__header">
                                        <div class="row-wrapper">
                                            <h2 class="recipe-title">Fried Kebbeh</h2>
                                            <div class="user-rating"></div>
                                        </div>
                                        <ul class="recipe-details">
                                            <li class="recipe-details-item time">
                                                <img src="/img/fi-rr-time-check.svg" alt="">
                                                <span class="value">20</span><span class="title">Minutes</span>
                                            </li>
                                            <li class="recipe-details-item servings">
                                                <img src="/img/fi-rr-users.svg" alt="">
                                                <span class="value">4-6</span><span class="title">Serving</span>
                                            </li>
                                        </ul>
                                    </header>
                                    <p class="description">
                                        There’s no better way to celebrate May being National Strawberry Month than by sharing a
                                        sweet
                                        treat
                                        with your pup!!! Strawberries...</p>
                                    <footer class="content__footer"><a href="#">View Recipe</a></footer>
                                </div>
                            </div>

                            <div class="ft-recipe">
                                <div class="ft-recipe__thumb">
                                    <img src="/img/thumb_rec2.jpg" />
                                </div>
                                <div class="ft-recipe__content">
                                    <header class="content__header">
                                        <div class="row-wrapper">
                                            <h2 class="recipe-title">A Greek Mosakaa</h2>
                                            <div class="user-rating"></div>
                                        </div>
                                        <ul class="recipe-details">
                                            <li class="recipe-details-item time">
                                                <img src="/img/fi-rr-time-check.svg" alt="">
                                                <span class="value">20</span><span class="title">Minutes</span>
                                            </li>
                                            <li class="recipe-details-item servings">
                                                <img src="/img/fi-rr-users.svg" alt="">
                                                <span class="value">4-6</span><span class="title">Serving</span>
                                            </li>
                                        </ul>
                                    </header>
                                    <p class="description">
                                        There’s no better way to celebrate May being National Strawberry Month than by sharing a
                                        sweet
                                        treat
                                        with your pup!!! Strawberries...</p>
                                    <footer class="content__footer"><a href="#">View Recipe</a></footer>
                                </div>
                            </div>

                            <div class="ft-recipe">
                                <div class="ft-recipe__thumb">
                                    <img src="/img/thumb_rec3.jpg" />
                                </div>
                                <div class="ft-recipe__content">
                                    <header class="content__header">
                                        <div class="row-wrapper">
                                            <h2 class="recipe-title">Pasta flora with berries</h2>
                                            <div class="user-rating"></div>
                                        </div>
                                        <ul class="recipe-details">
                                            <li class="recipe-details-item time">
                                                <img src="/img/fi-rr-time-check.svg" alt="">
                                                <span class="value">20</span><span class="title">Minutes</span>
                                            </li>
                                            <li class="recipe-details-item servings">
                                                <img src="/img/fi-rr-users.svg" alt="">
                                                <span class="value">4-6</span><span class="title">Serving</span>
                                            </li>
                                        </ul>
                                    </header>
                                    <p class="description">
                                        There’s no better way to celebrate May being National Strawberry Month than by sharing a
                                        sweet
                                        treat
                                        with your pup!!! Strawberries...</p>
                                    <footer class="content__footer"><a href="#">View Recipe</a></footer>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>

@endsection
