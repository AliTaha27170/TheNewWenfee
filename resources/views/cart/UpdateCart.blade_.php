@php
use App\Models\Product;
@endphp


<div class="ViewCart">
    <h3>Cart</h3>
    <button>View Cart</button>
</div>

  <hr>


@php
foreach ($_COOKIE as $key => $value) {

    if($key[0]=='p')
        {
            try
            {
               $product =  Product::find($value);
               $id      =  $product->id
                @endphp

                <div class="Product">
                    <img src="https://wenfee.com/jasmine/thenewwenfee/storage/app/public/{{ $product->image }}" alt="">
                      <div class="NameAndPrice">
                            <a href="#">
                                <h3>{!! $product ->body !!}</h3>
                            </a>
                          <span>Price : {{ $product->price }}$</span>
                          <br>
                          <span>weight : {{ $product->size }} LBS</span>

                          <div class="product-count">
                            <button class="button-count no-active" disabled>-</button>
                            <input type="text" readonly class="number-product" value="1">
                            <button class="button-count">+</button>
                      </div>
                      </div>

               </div>

               <hr>

               <div class="SubTotal">
                <h4>Sub Total :</h4>
                <span> {{ $_COOKIE['q'.$id] * $product->price }}$</span>
              </div>

              <hr>



                @php





            }
           //catch exception
            catch(Exception $e) {

            }
        }

}
@endphp


<div class="Total">
  <h4>Total :</h4>
  <span> 8.99$</span>
</div>

<hr>
<div class="Checkout">
  <button>Checkout</button>
</div>
