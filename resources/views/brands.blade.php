@extends('layouts.app')

@section('content')
    <link rel="stylesheet" type="text/css" media="all"
        href="https://www.terminalx.com/pub/static/version1581550074/_cache/merged-1581550074/83fc09b07a60fa1ee5e912888d4d1078.min.css" />
    <link rel="stylesheet" type="text/css" media="screen and (min-width: 768px)"
        href="https://www.terminalx.com/pub/static/version1581550074/frontend/Idus/terminalx/he_IL/css/styles-l.min.css" />
    <link rel="stylesheet" type="text/css" media="print"
        href="https://www.terminalx.com/pub/static/version1581550074/frontend/Idus/terminalx/he_IL/css/print.min.css" />
    <link rel="stylesheet" type="text/css" media="all" href="/pub/idus/style.css" />

    <div class="page-main page-brands">
        <div class="page-head-banner page-head-banner-layout-text">

            <h1 class="page-head-banner-title page-title" id="page-title-heading"
                aria-labelledby="page-title-heading toolbar-amount">
                <span class="base" data-ui-id="page-title-wrapper">BRANDS</span>
            </h1>

        </div>
        <!--   <ul class="brand-letters"></ul> -->
        {{--
        <form class="d-flex" action="{{ route('brand_search') }}" method="POST" id="Navbar_Search" hidden>
            @csrf
            <input class="form-control me-2" type="search" placeholder="Search" name="search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit"><i class="fas fa-search"></i></button>
        </form>
         --}}
        @foreach ($groups as $letter => $group)
            <div class="CustomLetter">
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






    <!-- <section class="products">
      <div class="heading">
          <h3>Related Products</h3>
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
    </section> -->





    <style>
        .page-brands {
            padding-bottom: 30px;
        }

        .page-brands ul.brands_list {
            margin: 0;
            font-size: 0;
            padding: 0;
            text-align: center;
            display: flex;
            align-content: center;
            flex-wrap: wrap;
            align-items: stretch;
            justify-content: center;
        }

        .page-brands ul.brands_list .brands-messages {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .page-brands ul.brands_list .brands-messages p {
            font-size: 32px;
            margin-bottom: 24px;
        }

        .page-brands button.btn-grey:not(.primary) {
            background: #ececec;
            color: #000000;
            border-color: #ececec;
        }

        .page-brands button.btn-grey:not(.primary):hover,
        .page-brands button.btn-grey:not(.primary):focus,
        .page-brands button.btn-grey:not(.primary):active {
            background: #c6c6c6 !important;
            color: #000000;
            border-color: #c6c6c6 !important;
        }

        .page-brands .search_questions_wrap {
            margin-bottom: 70px;
            text-align: center;
            min-width: 400px;
            width: 400px;
            max-width: 100% !important;
            display: inline-block;
            vertical-align: middle;
            position: relative;
        }

        @media only screen and (max-width: 600px) {
            .page-brands .search_questions_wrap {
                min-width: initial;
                margin-bottom: 8px;
            }
        }

        .page-brands .search_questions_wrap::after {
            display: none;
        }

        .page-brands .search_questions_wrap button.btn-grey {
            position: absolute;
            top: 0;
            bottom: 0;
            right: calc(100% + 15px);
            width: 120px;
            margin: auto;
            opacity: 0;
            display: none;
            justify-content: center;
            align-items: center;
            flex-wrap: nowrap;
            color: #000;
            height: 40px;
        }

        @media only screen and (max-width: 700px) {
            .page-brands .search_questions_wrap button.btn-grey {
                width: auto;
            }
        }

        @media only screen and (max-width: 600px) {
            .page-brands .search_questions_wrap button.btn-grey {
                display: none !important;
            }
        }

        .page-brands .search_questions_wrap button.btn-grey.active {
            display: inline-flex;
            opacity: 1;
        }

        .page-brands .search_questions_wrap button.btn-grey svg {
            margin-left: 8px;
            width: 18px;
            height: 18px;
            display: block;
        }

        @media only screen and (max-width: 700px) {
            .page-brands .search_questions_wrap button.btn-grey svg {
                margin-left: 0;
            }
        }

        .page-brands .search_questions_wrap button.btn-grey span {
            white-space: nowrap;
            display: inline-flex;
            justify-content: center;
            align-items: center;
            flex-wrap: nowrap;
        }

        @media only screen and (max-width: 700px) {
            .page-brands .search_questions_wrap button.btn-grey span {
                display: none;
            }
        }

        .page-brands .search_questions_wrap svg.icon {
            right: 10px;
            left: initial;
            position: absolute;
            bottom: 0;
            top: 0;
            margin: auto;
        }

        .page-brands .search_questions_wrap>input.input-text {
            box-sizing: border-box;
            text-align: center;
            border-radius: 8px;
            width: 100%;
            background: #ffffff;
            border: 1px solid #d5d9de;
            color: rgba(0, 0, 0, 0.4);
            font-size: 16px;
            direction: rtl;
            padding: 5px 40px 5px 20px;
            padding-right: 40px;
            min-height: 40px;
            color: #000000;
            font-weight: 500;
            font-size: 16px;
            text-overflow: ellipsis;
        }

        .page-brands .search_questions_wrap>input.input-text:placeholder {
            font-weight: normal;
        }

        .page-brands .search_questions_wrap>input.input-text::-webkit-input-placeholder {
            /* Chrome/Opera/Safari */
            font-weight: normal;
        }

        .page-brands .search_questions_wrap>input.input-text::-moz-placeholder {
            /* Firefox 19+ */
            font-weight: normal;
        }

        .page-brands .search_questions_wrap>input.input-text:-ms-input-placeholder {
            /* IE 10+ */
            font-weight: normal;
        }

        .page-brands .search_questions_wrap>input.input-text:-moz-placeholder {
            /* Firefox 18- */
            font-weight: normal;
        }

        .page-brands .search_questions_wrap>input.input-text:hover,
        .page-brands .search_questions_wrap>input.input-text:focus,
        .page-brands .search_questions_wrap>input.input-text:active {
            border: 1px solid #007b70;
        }

        .page-brands .search_questions_wrap>input.input-text:focus {
            box-shadow: 0px 4px 16px rgba(0, 0, 0, 0.1) !important;
        }

        @media only screen and (max-width: 600px) {
            .page-brands .search_questions_wrap>input.input-text {
                padding-right: 35px;
                overflow: hidden;
            }
        }

        .page-brands li.brand_item {
            text-align: center;
            position: relative;
            width: calc(20% - 32px);
            vertical-align: middle;
            box-sizing: border-box;
            text-transform: uppercase;
            margin: 16px;
            border: 1px solid rgba(213, 217, 222, 0.6);
            display: inline-flex;
            justify-content: stretch;
            align-items: stretch;
            -webkit-transition: all 1s cubic-bezier(0.02, 0.01, 0.47, 1);
            -moz-transition: all 1s cubic-bezier(0.02, 0.01, 0.47, 1);
            transition: all 1s cubic-bezier(0.02, 0.01, 0.47, 1);
        }

        @media only screen and (max-width: 600px) {
            .page-brands li.brand_item {
                margin: 8px;
            }
        }

        .page-brands li.brand_item:hover,
        .page-brands li.brand_item:focus,
        .page-brands li.brand_item:active {
            border: 1px solid #007B70;
            box-sizing: border-box;
            box-shadow: 0px 4px 16px rgba(0, 0, 0, 0.1);
        }

        .page-brands h2.brand_logo {
            font-weight: 300;
            line-height: 1.1;
            font-size: 3rem;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: stretch;
            align-items: stretch;
            width: 100%;
        }

        .page-brands h2.brand_logo a {
            padding: 15px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .page-brands img.brand_logo {
            max-height: 8rem;
            width: auto;
            max-width: 100%;
        }

        @media only screen and (max-width: 900px) {
            .page-brands ul.brands_list li.brand_item {
                width: calc(33.3% - 32px);
            }
        }

        @media only screen and (max-width: 600px) {
            .page-brands ul.brands_list li.brand_item {
                width: calc(50% - 16px);
            }
        }

        @keyframes bounceInRight {

            from,
            60%,
            75%,
            90%,
            to {
                -webkit-animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
                animation-timing-function: cubic-bezier(0.215, 0.61, 0.355, 1);
            }

            from {
                opacity: 0;
                -webkit-transform: translate3d(3000px, 0, 0);
                transform: translate3d(3000px, 0, 0);
            }

            60% {
                opacity: 1;
                -webkit-transform: translate3d(-25px, 0, 0);
                transform: translate3d(-25px, 0, 0);
            }

            75% {
                -webkit-transform: translate3d(10px, 0, 0);
                transform: translate3d(10px, 0, 0);
            }

            90% {
                -webkit-transform: translate3d(-5px, 0, 0);
                transform: translate3d(-5px, 0, 0);
            }

            to {
                -webkit-transform: translate3d(0, 0, 0);
                transform: translate3d(0, 0, 0);
            }
        }

        .page-brands .bounceInRight {
            -webkit-animation-name: bounceInRight;
            animation-name: bounceInRight;
            -webkit-animation-duration: 0.35s;
            animation-duration: 0.35s;
            -webkit-animation-fill-mode: both;
            animation-fill-mode: both;
        }

        .page-brands .animated {
            -webkit-animation-duration: 0.35s;
            animation-duration: 0.35s;
            -webkit-animation-fill-mode: both;
            animation-fill-mode: both;
        }

        @-webkit-keyframes bounceOutLeft {
            20% {
                opacity: 1;
                -webkit-transform: translate3d(20px, 0, 0);
                transform: translate3d(20px, 0, 0);
            }

            to {
                opacity: 0;
                -webkit-transform: translate3d(-2000px, 0, 0);
                transform: translate3d(-2000px, 0, 0);
            }
        }

        @keyframes bounceOutLeft {
            20% {
                opacity: 1;
                -webkit-transform: translate3d(20px, 0, 0);
                transform: translate3d(20px, 0, 0);
            }

            to {
                opacity: 0;
                -webkit-transform: translate3d(-2000px, 0, 0);
                transform: translate3d(-2000px, 0, 0);
            }
        }

        .page-brands .bounceOutLeft {
            -webkit-animation-name: bounceOutLeft;
            animation-name: bounceOutLeft;
            -webkit-animation-duration: 0.35s;
            animation-duration: 0.35s;
            -webkit-animation-fill-mode: both;
            animation-fill-mode: both;
        }

        .page-brands .page-head-banner.page-head-banner-layout-text {
            display: block !important;
        }

        .page-brands__search {
            text-align: center;
            padding: 0 8px;
            height: 25px;
        }

        .page-head-banner-title,
        .page-head-banner-desc {
            padding: 2rem 0 0;
            margin: 0;
            text-align: center;
            font-family: 'Poppins';
            color: #007B70;
            font-weight: bold;
        }

        .CustomLetter {
            position: relative;
            margin-top: 20px;
        }

        .CustomLetter h2 {
            background-color: #fff;
            margin-bottom: 0;
            display: inline-block;
            z-index: 9;
            padding-bottom: 5px;
            padding-right: 25px;
        }

        .CustomLetter::after {
            position: absolute;
            bottom: 12px;
            right: 0;
            height: 1px;
            width: 100%;
            content: '';
            background-color: #e7e7e7;
            z-index: -1;
        }

    </style>

@endsection
