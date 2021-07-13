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
                    <div class="product-count">
                            <button class="button-count no-active" disabled>-</button>
                            <input type="text" id="Counter" readonly class="number-product" value="1">
                            <button class="button-count">+</button>
                      </div>
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
              <script>
                //Product counter//
var num;

$('.button-count:first-child').click(function(){
  num = parseInt($('.number-product').val());
  if (num > 1) {
    $('.number-product').val(num - 1);
  }
  if (num == 2) {
    $('.button-count:first-child').prop('disabled', true);
  }
});

$('.button-count:last-child').click(function(){
  num = parseInt($('.number-product').val());
    $('.number-product').val(num + 1);
  if (num > 0) {
    $('.button-count:first-child').prop('disabled', false);
  }

});
//Product counter//
              </script>