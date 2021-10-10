@extends('layouts.app')

@section('content')

    <div class="pro-details-page">
        <div class="pro-details-box">
            <div class="row">
                <?php $images = json_decode($product->gallery); ?>
                <div class="col-md-1 product_mob">
                    <div class="slider-nav">
                        <div class="product2"><img src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $product->image}}" width="70px" height="auto"
                                alt=""></div>
                        @if ($images)
                            @if (count($images) > 0)
                                @foreach ($images as $image)
                                    <div class="product2"><img src="{{ Voyager::image($image) }}" width="70px"
                                            height="auto" alt=""></div>
                                @endforeach
                            @endif
                        @endif
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="slider-for">
                        <div class="product2"><img src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $product->image}}" width="250px" height="auto"
                                alt=""></div>
                        @if ($images)
                            @if (count($images) > 0)
                                @foreach ($images as $image)
                                    <div class="product2"><img src="{{ Voyager::image($image) }}" width="250px"
                                            height="auto" alt=""></div>
                                @endforeach
                            @endif
                        @endif
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="about">
                        <h3>
                            <span class="brand">{{ $product->name }}</span>
                        </h3>
                        <h4 style="height: 192px">{!! $product->body  !!}</h4>

                        <ul class="props-list">
                            <li>
                                <img src="/img/hashtag.svg">
                                <p>
                                    <span>Code: </span>
                                    <b>{{ $product->code }}</b>
                                </p>
                            </li>
                            @if ($product->cookbook_author)
                                <li>
                                    <img src="/img/auther.svg">
                                    <p>
                                        <span>Auther: </span>
                                        <b>{{ $product->cookbook_author }}</b>
                                    </p>
                                </li>
                            @endif
                            <li>


                                @if ($product->size==0)
                                <p>
                                    <span>Offer  </span>
                                    <b>Shipping included</b>
                                </p>
                                @else
                                <img src="/img/weight.svg">
                                <p>
                                    <span>Weight: </span>
                                    <b>{{ $product->size }}</b>
                                </p>
                            @endif



                            </li>
                        </ul>

                        @if ($product->discount)
                            <p class="price">
                                <strong>${{ $product->price - $product->price * ($product->discount / 100) }}</strong>
                                <span><del>${{ $product->price }}</del></span>
                            </p>
                        @else
                            <p class="price"><strong>${{ $product->price }}</strong></p>
                        @endif

                        <div class="description">
                            {!! $product->body !!}
                        </div>



                            <div class="cart-pr">
                                <div class="cart">
                                    <a  class="add-cart-btn"  onclick="add_to_cart_main({{ $product->ac_id }},{{ $product->id }});" href="javascript:void(0);">
                                        <i class="fi fi-rr-shopping-cart-add"></i>&nbsp;&nbsp;
                                        Add to cart</a>
                                    <div class="counter">
                                        <button type="button" class="minus-btn"><img
                                                src="{{ asset('img/minus.svg') }}"></button>
                                        <input readonly name="qty" type="text" value="1" id="qty{{  $product->id }}">
                                        <button type="button" class="plus-btn"><img
                                                src="{{ asset('img/plus.svg') }}"></button>
                                    </div>
                                </div>
                            </div>


                        <div class="share-box">
                            <strong>Share The Product</strong>
                            <div class="social">
                                <a href="#"><img src="{{ asset('img/sc/facebook.png') }}"></a>
                                <a href="#"><img src="{{ asset('img/sc/instagram.png') }}"></a>
                                <a href="#"><img src="{{ asset('img/sc/twitter.png') }}"></a>
                            </div>

                        </div>

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
                    @if ($products)
                        @foreach ($products as $prod)
                            <div>
                                <div class="item">
                                    <button class="fav-btn"><i class="fi fi-rr-heart"></i></button>
                                    <a href="{{ route('show-product', $prod->id) }}" class="content">

                                        @if ($prod->is_offer and isset($prod->discount) )
                                        <p class="sale">{{ $prod->discount }}% OFF</p>
                                        @elseif ($prod->is_offer)
                                        <small class="sale">Free Shipping</small>
                                        @endif

                                        <div class="background-image"
                                            style="background-image: url('https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $prod->image}}');"></div>

                                        <h3>
                                            <span class="brand">{{ $prod->name }}</span>
                                            <span class="code">#{{ $prod->code }}</span>
                                        </h3>
                                        <h4 style="height: 192px">{!! $prod->body  !!}</h4>

                                        @if ($prod->discount)
                                            <p class="price">
                                                <strong>${{ $prod->price - $prod->price * ($prod->discount / 100) }}</strong>
                                                <span><del>${{ $prod->price }}</del></span>
                                            </p>
                                        @else
                                            <p class="price"><strong>${{ $prod->price }}</strong></p>
                                        @endif
                                    </a>

                                    <div class="cart-pr">
                                        <div class="cart">
                                            <a
                                            @if($prod->call_for_price)
                                            class="callforprice" href="{{ route('contact') }}"
                                        @elseif($prod->out_of_stock)
                                        class="outofstock"
                                        @else
                                        class="add-cart-btn"  onclick="add_to_cart_main({{ $prod->ac_id }},{{ $prod->id }});" href="javascript:void(0);"
                                        @endif
                                            >
                                            @if($prod->call_for_price)
                                                <span> call for price </span>
                                        @elseif($prod->out_of_stock)
                                             <span> Out of stock </span>
                                        @else
                                        <i class="fi fi-rr-shopping-cart-add"></i>&nbsp;&nbsp;
                                        Add to cart
                                                    @endif


                                            </a>
                                            <div class="counter">
                                                <button type="button" class="minus-btn"><img
                                                        src="{{ asset('img/minus.svg') }}"></button>
                                                <input readonly name="qty" type="text" value="1" id="qty{{  $prod->id }}">
                                                <button type="button" class="plus-btn"><img
                                                        src="{{ asset('img/plus.svg') }}"></button>
                                            </div>
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
