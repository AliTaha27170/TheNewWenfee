<div class="products">
    <div class="grid">
        @if ($products->count() > 0)
            @foreach ($products as $prod)
            <div class="item">
                <a  class="fav-btn"><i class="{{ (isset(auth()->user()->id) and like_::check($prod->id)) ? ' fas fa-heart ' : 'fi fi-rr-heart' }}"

                    @if (isset(auth()->user()->id) and like_::check($item->id))
                    onclick="unLike(this,{{ $prod->id }})"
                    @else
                    onclick="like(this,{{ $prod->id }})"


                    @endif

                    ></i><!--class="fas fa-heart"--></a>                                    <a href="{{ route('show-product', $prod->id) }}" class="content">
                    @if ($prod->is_offer and isset($prod->discount) )
                        <p class="sale">{{ $prod->discount }}% OFF</p>
                        @elseif ($prod->is_offer)
                        <small class="sale">Free Shipping</small>
                    @endif
                    <div class="background-image"
                        style="background-image: url('https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $prod->image}}')"></div>

                    <h3>
                        <span class="brand">{{ $prod->name }}</span>
                        <span class="code">#{{ $prod->code }}</span>
                    </h3>
                    <h4 style="height: 192px">{!! $prod->body  !!}
                            @if($prod->created_at > $today)
                            
                            <span class="NewProduct">NEW</span>
                            @endif
         @if ($prod->is_frozen)
         
            <div class="FrozenProduct"><i class="fas fa-snowflake"></i><span>Frozen</span></div>
        @endif

        @if ($prod->is_ref)
        
             <div class="RefrigeratedProduct"><i class="fas fa-temperature-low"></i><span>Refrigerated</span></div>
        @endif
                </h4>

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
                    @elseif($prod->out_stock)
                    class="outofstock"
                    @else
                    class="add-cart-btn"  onclick="add_to_cart_main({{ $prod->ac_id }},{{ $prod->id }});" href="javascript:void(0);"
                    @endif
                        >
                        @if($prod->call)
                            <span> call for price </span>
                    @elseif($prod->out_stock)
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
            @endforeach

        @endif

    </div>

</div>
</div>
</div>
</div>