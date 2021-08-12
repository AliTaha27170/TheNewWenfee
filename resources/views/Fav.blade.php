@extends('layouts.app')

@section('content')
    <!--<link rel="stylesheet" href="/css/wrunner-default-theme.css">
    <script src="/libs/wrunner/wrunner-native.js"></script>-->
    <div class="product-page">
        <div class="row">
            <div class="col-md-12">
                <h2 id="Fav_Header">Your Favourite Products</h2>

                  <div class="container NumberOfProducts">
            <span><!--{{ $likes->count() }} --> Items</span>
            </div>
                <div class="right-panel">
                    <div class="products">
                        <div class="grid">
                            @if ($likes->count() > 0)
                                @foreach ($likes as $like)

                                <div class="item">
                                    <button class="fav-btn"><a style="color: #e92e2e" href="{{ route('UnLike',$like->product->id) }}"><i class="fas fa-heart"></i></a></button>
                                    <a href="{{ route('show-product', $like->product->id) }}" class="content">
                                        @if ($like->product->is_offer and isset($like->product->discount) )
                                            <p class="sale">{{ $like->product->discount }}% OFF</p>
                                            @elseif ($like->product->is_offer)
                                            <small class="sale">Free Shipping</small>
                                        @endif
                                        <div class="background-image"
                                            style="background-image: url('https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $like->product->image}}')"></div>

                                        <h3>
                                            <span class="brand">{{ $like->product->name }}</span>
                                            <span class="code">#{{ $like->product->code }}</span>
                                        </h3>
                                        <h4 style="height: 150px">{!! $like->product->body  !!}
                                        <span class="NewProduct">NEW</span>
                                        <div class="FrozenProduct"><i class="fas fa-snowflake"></i><span>Frozen</span></div>
                                    </h4>

                                        @if ($like->product->discount)
                                            <p class="price">
                                                <strong>${{ $like->product->price - $like->product->price * ($like->product->discount / 100) }}</strong>
                                                <span><del>${{ $like->product->price }}</del></span>
                                            </p>
                                        @else
                                            <p class="price"><strong>${{ $like->product->price }}</strong></p>
                                        @endif
                                    </a>



                                    <div class="cart-pr">
                                        <div class="cart">
                                            <a  class="add-cart-btn"  onclick="add_to_cart_main({{ $like->product->ac_id }},{{ $like->product->id }});" href="javascript:void(0);">
                                                <i class="fi fi-rr-shopping-cart-add"></i>&nbsp;&nbsp;
                                                Add to cart</a>
                                            <div class="counter">
                                                <button type="button" class="minus-btn"><img
                                                        src="{{ asset('img/minus.svg') }}"></button>
                                                <input readonly name="qty" type="text" value="1" id="qty{{  $like->product->id }}">
                                                <button type="button" class="plus-btn"><img
                                                        src="{{ asset('img/plus.svg') }}"></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                @endforeach

                                @else
                                <center>
                                        <h4>No items ! <br><br></h4> <br><br><br>
                                </center>
                            @endif

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- adding to cart alert -->
    <div class="alert hide">
  <span class="fas fa-exclamation-circle"></span>
  <span class="msg">You added Product to your shopping cart.</span>
  <div class="close-btn">
    <span class="fas fa-times"></span>
  </div>
</div>
<style>
    .alert{
  background: #007b71c6;
  padding: 20px 40px;
  width: 600px;
  position: fixed;
  right: -15px;
  top: 80%;
  border-radius: 4px;
  border-left: 8px solid #007B70;
  overflow: hidden;
  opacity: 0;
  pointer-events: none;
  z-index: 10;
}
</style>
<script>
    $('.add-cart-btn').click(function(){
  $('.alert').addClass("show");
  $('.alert').removeClass("hide");
  $('.alert').addClass("showAlert");
  setTimeout(function(){
    $('.alert').removeClass("show");
    $('.alert').addClass("hide");
  },2000);
});
$('.close-btn').click(function(){
  $('.alert').removeClass("show");
  $('.alert').addClass("hide");
});
</script>
    <!-- adding to cart alert -->
@endsection

@push('styles')
    <style>
        /*Pagination*/
        .pagination-div {
            margin-top: 40px;
        }

        .pagination-div .pagination {
            display: block;
            margin-bottom: 0px;
            list-style-type: none;
            -webkit-box-align: center;
            -ms-flex-align: center;
            align-items: center;
        }

        .pagination-div .pagination li {
            display: inline-block;
            color: #0056b3;
        }

        .pagination-div .pagination li a {
            font-family: "Futura-Bold", sans-serif;
            font-size: 14px;
            background: #ffffff;
            border: 1px solid #ffffff;
            display: inline-block;
            text-align: center;
            height: 30px;
            /* line-height: 26px; */
            font-weight: 500;
            letter-spacing: 1px;
        }

        .pagination-div .pagination li a:hover {
            color: #000;
        }

        .pagination-div .pagination li a i {
            margin: 0px 5px;
        }

        .pagination-div .pagination li a.page-number {
            width: 30px;
            border-radius: 100%;
            color: #0056b3;
        }

        .pagination-div .pagination li a.page-number.current {
            background: #0056b3;
            border: 1px solid #0056b3;
            color: #ffffff;
        }

        /*Pagination*/
            .carousel{
                display: none;
            }

    </style>
@endpush
