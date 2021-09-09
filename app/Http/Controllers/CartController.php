<?php

namespace App\Http\Controllers;

use App\hellpers\Ac_api;
use App\Models\Order;
use App\Models\Product;
use Exception;
use Illuminate\Http\Request;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Validator;

class CartController extends Controller
{


   // START  Maincart  >>>>>

   public function Maincart()
   {
       $products =[];

    foreach ($_COOKIE as $key => $value) {
        if($key[0]=='p')
        {
            $product = Product::find($value);
            array_push($products , $product );
        }


   }

   $arr =$this->shipping_total_and_isOffer();

   return view('cart.Maincart')->with(['shipping' => $arr['shipping_price']]);
}


   // END    Maincart  >>>>>

    //START index >>>>>
    public function index()
    {
        $this->RefreashItems();

        // ckeck if there Active order
        $order = Order::where('active', 1)->first();

        if (!isset($order)) {
            $user_id =  null;
            $em_data =  "{}";
            $em_type =  "carts";
            $method  =  "POST";
            $ac_id   =   json_decode(Ac_api::server($em_type, $em_data, $method), true)['id'] ;

            if (isset(auth()->user()->id))
                $user_id = auth()->user()->id;

            $order =  Order::create([
                "ac_id"     => $ac_id,
                "user_id"   => $user_id,
            ]);
        }



        //else create new (with americommerce )

        //refreash cart (delete and add items )




        $arr =$this->shipping_total_and_isOffer();
        return view('cart')->with(
            [
                 "cart_id" => $order->ac_id ,
                 "offer"   =>  $arr['offer'],
                 "free"    =>  $arr['free'],
            ]       );
                }
    //END  index >>>>>



    public function RefreashItems()
    {


        $order = Order::where('active', 1)->first();
        if (!isset($order)) {

            $this->index();
            return $this->RefreashItems();
        }
        $em_data    =  "{}";
        $em_type    =  "carts/" . $order->ac_id. "/items";
        $method     =  "DELETE";
        $response   =  Ac_api::server($em_type, $em_data, $method);

        $this->order_products_add($order->ac_id);




    }

// START shipping  >>>>>>>
    public function shipping_total_and_isOffer(){

        $order = Order::where('active', 1)->first();
        if (!isset($order)) {

           $this->index();
           $this->shipping_total_and_isOffer();
        }

        $offer      =   0 ;
        $free       =   0 ;
        $em_data    =  "{}";
        $zipCode    = isset($_COOKIE['zipCode']) ? $_COOKIE['zipCode'] : 00000;
        $em_type    =  "carts/" . $order->ac_id. "/shipping?city=Round+Rock&state=TX&postal_code=".$zipCode."&country=US";
        $method     =  "GET";
        $response   =  Ac_api::server($em_type, $em_data, $method);

        $response = json_decode($response, true);
        $a = array();

        for($i=0; $i<count($response['rates']) ;$i++ )
        {
            // if isset offer shipping or not
            if( $response['rates'][$i]['identifier'] == "Custom;4;Offer | Free shipping")
                $offer = 1;

            if( $response['rates'][$i]['identifier'] == "Custom;3;Free Shiping")
                $free = 1;


            if( $response['rates'][$i]['description'] != "pick up" )
            array_push($a,$response['rates'][$i]['total_charges']);
        }

        $arr = [
            "shipping_price" => count($a) ? min($a) : 0,
            "offer"          => $offer ,
            "free"           => $free  ,
        ];
        return ($arr)  ;
    }
// END  shipping  >>>>>>>



    //START ORDER >>>>>
    public function order($cart_id)
    {
       $this->order_products($cart_id);
    }
    //END ORDER >>>>>

        //START ORDER >>>>>
        public function place_order($cart_id,Request $request)
        {

            dd($request);

        }
        //END ORDER >>>>>


/**
 *            "identifier": "Custom;1;Ground Shipping (Wenfee - UPS - USPS)",
            "identifier": "Custom;6;pick up",
            "identifier": "Custom;4;Offer | Free shipping",
            "identifier": "Custom;1;Ground Shipping (Wenfee - UPS - USPS)",
            "identifier": "Custom;3;Free Shiping",

 *
 */

    //START  order_products >>>>>
    public function order_products_add($cart_id)
    {
        // ADD All products to cart
        foreach ($_COOKIE as $key => $value) {

            if ($key[0] == 'p') {
                try {
                    $product  =  Product::find($value);
                    $id       =  $product->id;
                    $ac_id    =  $product->ac_id;
                    $quantity =  $_COOKIE['q' . $id];


                    $em_data =
                        '{
        "items": [
            {
                "product_id": ' . $ac_id . ',
                "quantity": '  . $quantity . '
            }
        ]
    }';

                    $em_type =  "carts/" . $cart_id . "/items";
                    $method  =  "POST";
                    Ac_api::server($em_type, $em_data, $method);
                }
                //catch exception
                catch (Exception $e) {
                }
            }
        }
    }
    //END  order_products >>>>>




    public function store(Product $product, Request $request)
    {

        $duplicates = Cart::search(function ($cartItem, $rowId) use ($product) {
            return $cartItem->id === $product->id;
        });

        if ($duplicates->isNotEmpty()) {
            return redirect()->route('landing-page')->with('success', 'Item is already in your cart!');
        }

        if ($product->discount) {
            $new_price = $product->price - ($product->price * ($product->discount / 100));
            Cart::add($product->id, $product->name, $request->qty, $new_price)
                ->associate('App\Models\Product');
        } else {
            Cart::add($product->id, $product->name, $request->qty, $product->price)
                ->associate('App\Models\Product');
        }


        return redirect()->back()->with('success', 'Item was added to your cart!');
    }

    public function destroy($id)
    {

        Cart::remove($id);

        return redirect()->back()->with('success', 'Item has been removed from cart');
    }

    public function saveLater($id)
    {

        $item = Cart::get($id);

        Cart::remove($id);

        $dubl = Cart::instance('saveForLater')->search(function ($cartItem, $rowId) use ($id) {
            return $cartItem->id === $id;
        });

        if ($dubl->isNotEmpty()) {
            return redirect()->back()->with('success', 'Item is save for later');
        }

        Cart::instance('saveForLater')->add($item->id, $item->name, 1, $item->price)->associate('App\Product');

        return redirect()->back()->with('success', 'Item has been saved for later');
    }

    public function update(Request $request, $id)
    {

        //  $validator = Validator::make($request->all(), [
        //      'quantity' => 'required|numeric|between: 1,5'
        //  ]);

        //  if ($validator->fails()) {
        //      session()->flash('errors','Quantity must be between 1 and 5');
        //      return response()->json(['success' => false]);
        //  }
        //dd($id);
        Cart::update($id, $request->quantity);

        session()->flash('success', 'Quantity has been updated');

        return response()->json(['success' => true]);
    }

}
