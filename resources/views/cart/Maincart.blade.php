@php
use App\Models\Product;
$total =0 ;
@endphp

<script>
  total =  '$ '+getCookie('total');
  $('#total').text(total);
 
</script>

<h2> Shopping Cart </h2>
<ul class="cd-cart-items">


@php
foreach ($_COOKIE as $key => $value) {
   
    if($key[0]=='p')
        {
            try
            {
               $product =  Product::find($value);
               $id      =  $product->id;
               $q       =  $_COOKIE['q'.$id];
    
                @endphp
              

                  <li>
                    <img src="https://wenfee.com/strorge/{{ $product->image }}" alt="" class="cart_img">
              
                    <span class="cd-qty"> {{ $q }} x</span> {!! $product->body !!}
                    <div class="cd-price">${{ round($product->price * $q ,2) }}</div>

                    @php
                        $total += round($product->price * $q ,2);
                    @endphp
                    <!-- 
                      <a href="#0" class="cd-item-remove cd-img-replace"  onclick="add_to_cart_main({{ $product->ac_id }},{{ $product->id }},1);">Remove</a>

                     -->
                  </li>
              
        
              



                @php
                    
             

               

            }
           //catch exception
            catch(Exception $e) {
              echo 'Message: ' .$e->getMessage();
            }
        }
        
}
setcookie("total", $total, time() + (86400 * 30), "/");
@endphp


  </ul> <!-- cd-cart-items -->
              
                @if ( isset($_COOKIE['total'])  && ($_COOKIE['total'] != '0'))
                <div class="cd-cart-total">
                  <p>Total <span>${{ $total }}</span></p>
                </div> <!-- cd-cart-total -->
                @else
                <div class="cd-cart-total">
                  <p>Empty ! <span> </span></p>
                </div> <!-- cd-cart-total -->
                @endif
              
            
              <a href="#0" class="checkout-btn" onclick="checkout()">Checkout</a>