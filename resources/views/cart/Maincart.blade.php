@php
use App\Models\Product;
$total =0 ;
$tax  = 0;
$lbs  = 0;
@endphp


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
{{--
<script>
    $.get("{{ route('shipping_cu') }}", function(data, status){
        $('#shipping').text(data.shipping_price);

      });
</script>
    --}}


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
                    <img src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $product->image }}" alt="" class="cart_img">

                    <span class="cd-qty"> price : $ {{ $product->price }}  </span> {!! $product->body !!}

                    <div class="cd-price">Subtotal : ${{ round($product->price * $q ,2) }}</div>

                    @php
                    $total += round($product->price * $q ,2);
                    $lbs += round($product->size ,2 );
                    if($product->tax)
                        $tax += round($product->price * 0.06 ,2);
                    @endphp

                      <a  class="cd-item-remove cd-img-replace"  onclick="add_to_cart_main({{ $product->ac_id }},{{ $product->id }},1);">Remove</a>


                      <div class="product-count" >
                        <button class="button-count no-active"  onclick="cou(this,{{ $product->id }},{{ $product->ac_id }})" id="button{{  $product->id }}"  onmouseleave="add_to_cart_main({{ $product->ac_id }},{{ $product->id }},2);" {{ $q==1 ? "disabled" : '' }}>-</button>
                        <input type="text" readonly class="number-product" id="number-product{{ $product->id }}" value="{{ $q }}">
                        <button class="button-count" onclick="cou2({{ $product->id }},{{ $product->ac_id }})" onmouseleave="add_to_cart_main({{ $product->ac_id }},{{ $product->id }},2);">+</button>
                  </div>
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

                @if ($total!= '0')
                <div class="cd-cart-total">

                    <br>
                    <small>Zip Code :</small>
                    <input type="number" maxlength="6" placeholder="enter your zip code " id="zip" value="{{ isset($_COOKIE['zipCode']) ? $_COOKIE['zipCode'] : '' }}">
                    <br>
                    <br>
                    <hr>
                    <p>Subtotal : <span id="tot">{{ $total }}</span><span>$</span></p>
                    <p>Tax : <span id="tax">{{ $tax }}</span><span>$</span></p>
                    <p>Shipping  <small>{{ $lbs }} LBS </small> :  <span id="shipping">{{ $shipping }}</span><span>$</span></p>
                    <script>
                        $('#totalp').text(parseFloat(( +$('#tot').text() + +$('#shipping').text() + +$('#tax').text()).toFixed(2)) );
                    </script>
                    <p>Total : <span id="totalp"> {{ $total }}</span> <span>$</span> </p>
                </div> <!-- cd-cart-total -->
                @else
                <div class="cd-cart-total">
                  <p>Empty ! <span> </span></p>
                </div> <!-- cd-cart-total -->
                @endif


              <a href="#0" class="checkout-btn" onclick="checkout()">Checkout</a>

              <script>
                $(document).ready(function(){

 //setup before functions
var typingTimer;                //timer identifier
var doneTypingInterval = 1500;  //time in ms (5 seconds)

//on keyup, start the countdown
$('#zip').keyup(function(){
    clearTimeout(typingTimer);
    if ($('#zip').val()) {
        typingTimer = setTimeout(doneTyping, doneTypingInterval);
    }
});

//user is "finished typing," do something
function doneTyping () {
    setCookie('zipCode',$('#zip').val(),30);
    cart();
}
                });
                </script>
              <script>



                //Product counter//
var num;

 function cou(e,id,ac_id){
     id2 = id ;
     id  = '#number-product'+id ;
  num = parseInt($(id).val());
  if (num > 1) {
    $(id).val(num - 1);
  }


}

function cou2(id, ac_id ){
    id2=id;
    id='#number-product'+id ;

  num = parseInt($(id).val());
    $(id).val(num + 1);
  if (num > 0) {
    $('#button'+id2).prop('disabled', false);
  }

};
//Product counter//

              </script>
