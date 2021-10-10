<div class="products">
    <div class="grid">
            @foreach ($products as  $prod)
                <div  class="{{ $prod->slug }} filter-item" value="{{$prod->id}}">
                    <div class="item">
                        <a  class="fav-btn"><i class="{{ (isset(auth()->user()->id) and like_::check($prod->id)) ? ' fas fa-heart ' : 'fi fi-rr-heart' }}"

                            @if (isset(auth()->user()->id) and like_::check($item->id))
                            onclick="unLike(this,{{ $prod->id }})"
                            @else
                            onclick="like(this,{{ $prod->id }})"

                            @endif

                            ></i><!--class="fas fa-heart"--></a>
                            @if($prod->is_ref)
                        <div class="RefrigeratedProduct"><i class="fas fa-refrigerator"></i></div>
                        @endif
                        <a href="{{ route('show-product', $prod->id) }}" class="content">
                            @if ($prod->is_offer)
                                <p class="sale">{{ $prod->discount }}% OFF</p>
                            @endif
                            <div class="background-image"
                                style="background-image: url('https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $prod->image}}');"></div>

                            <h3>
                                <span class="brand">{{ $prod->name }}</span>
                                <span class="code">#{{ $prod->code }}</span>
                            </h3>


                            <h4 style="height: 192px">{!! $prod->body !!}</h4>
                            <span class="NewProduct">NEW</span>
                            <div class="FrozenProduct"><i class="fas fa-snowflake"></i><span>Frozen</span></div>
                            <div class="RefrigeratedProduct"><i class="fas fa-temperature-low"></i><span>Refrigerated</span></div>
                            @if ($prod->discount)
                                <p class="price">
                                    <strong>${{ $prod->price - $prod->price * ($prod->discount / 100) }}</strong>
                                    <span><del>${{ $prod->price }}</del></span>
                                </p>
                            @else
                                <p class="price"><strong>${{ $prod->price }}</strong></p>
                            @endif
                        </a>
@if(!$prod->out_stock)
                        <div class="cart-pr">
                            <div class="cart">
                                <a  class="add-cart-btn"  onclick="add_to_cart_main({{ $prod->ac_id }},{{ $prod->id }});" href="javascript:void(0);">
                                    <i class="fi fi-rr-shopping-cart-add"></i>&nbsp;&nbsp;
                                    Add to cart</a>
                                <div class="counter">
                                    <button type="button" class="minus-btn"><img
                                            src="{{ asset('img/minus.svg') }}"></button>
                                    <input readonly name="qty" type="text" value="1" id="qty{{  $prod->id }}">
                                    <button type="button" class="plus-btn"><img
                                            src="{{ asset('img/plus.svg') }}"></button>
                                </div>
                            </div>
                        </div>
                        @endif
                    </div>
                </div>
               
            @endforeach
            
    </div>

</div>
