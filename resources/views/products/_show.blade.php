@extends('layouts.app')

@section('content')

<div class="pro-details-page">
    <div class="pro-details-box">
        <div class="row">
            <?php $images = json_decode($product->gallery); ?>
            <div class="col-md-1">
                <div class="slider-nav">
                    <div class="product2"><img src="{{ Voyager::image($product->image) }}" width="70px" height="auto" alt=""></div>
                    @if($images)
                    @if(count($images) > 0)
                    @foreach($images as $image)
                    <div class="product2"><img src="{{ Voyager::image( $image) }}" width="70px" height="auto" alt=""></div>
                    @endforeach
                    @endif
                    @endif
                </div>
            </div>
            <div class="col-md-5">
                <div class="slider-for">
                    <div class="product2"><img src="{{ Voyager::image($product->image) }}" width="250px" height="auto" alt=""></div>
                    @if($images)
                    @if(count($images) > 0)
                    @foreach($images as $image)
                    <div class="product2"><img src="{{ Voyager::image( $image) }}" width="250px" height="auto" alt=""></div>
                    @endforeach
                    @endif
                    @endif                  
                </div>
            </div>
            <div class="col-md-6">
                <div class="about">
                    <h2 style="font-weight:bolder;">{{$product->name}}</h2>
                    <p class="price">$ {{$product->price}} &nbsp;&nbsp;&nbsp;<small style="color: #999;"><del>$20.03</del></small></p>
                    <p>
                        {!!$product->body!!}
                    </p>

                    <div class="social">
                        <a href="#"><img src="{{asset('img/facebook.svg')}}"></a>
                        <a href="#"><img src="{{asset('img/twitter.svg')}}" /></a>
                        <a href="#"><img src="{{asset('img/instagram.svg')}}" /></a>
                        <a href="#"><img src="{{asset('img/pinterest.svg')}}" /></a>
                        <a href="#"><img src="{{asset('img/google-plus.svg')}}" /></a>
                    </div>
                    <form action="{{route('cart.store',$product)}}" method="POST">
                        @csrf
                        <div class="cart-pr">
                            <div class="cart">
                                <button type="submit" href="#" class="add-cart-btn"><img src="{{asset('img/shopping-cart2.svg')}}" />Add to
                                    cart</button>
                                <div class="counter">
                                    <button type="button"  class="minus-btn"><img src="{{asset('img/minus.svg')}}"></button>
                                    <input readonly name="qty" type="text" value="1">
                                    <button type="button"  class="plus-btn"><img src="{{asset('img/plus.svg')}}"></button>
                                </div>
                            </div>
                        </div>
                        </form>
                    <p class="display" style="display: none;">thank you</p>
                </div>
            </div>
        </div>
    </div>

    <section class="products">
        <div class="heading">
            <h3>Related Products</h3>
        </div>
        <br>
        <div class="products-slider-pr">
            <div class="products-slider">
@if($products)
@foreach ($products as $prod)
<div>
    <div class="item">
        <p class="sale">17%</p>
        <button class="fav-btn"><img src="{{asset('img/like.svg')}}" alt=""></button>
    <div class="background-image" style="background-image: url('{{Voyager::image($prod->image)}}');"></div>
    <h4>{{$prod->name}}</h4>
        <div class="stock">
            <img src="{{asset('img/check.svg')}}" />
        <p>In Stock - {{$prod->size}}Kg</p>
        </div>
        <p class="price">
            {{-- <span><del>$18.00</del></span> --}}
        <strong>${{$prod->price}}</strong>
        </p>
        <form action="{{route('cart.store',$prod)}}" method="POST">
        <div class="cart-pr">
            <div class="cart">
            
                @csrf
                <button type="submit" class="add-cart-btn"><img src="{{asset('img/shopping-cart2.svg')}}" />Add to
                    cart</button>
                <div class="counter">
                    <button type="button" class="minus-btn"><img src="{{asset('img/minus.svg')}}"></button>
                    <input readonly name="qty" type="text" value="1">
                    <button type="button" class="plus-btn"><img src="{{asset('img/plus.svg')}}"></button>
                </div>
            
            </div>
        </div>
    </form>
        <div class="overflow">
            <div class="content">
            <a href="{{route('show-product',$prod->slug)}}">
                    <div class="img">
                        <span></span>
                    </div>
                    <p>View Details</p>
                </a>
            </div>
        </div>
    </div>
</div>

@endforeach
@endif
            </div>
        </div>
    </section>
</div>
@endsection