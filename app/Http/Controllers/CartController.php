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

    //START index >>>>>
    public function index()
    {

        // ckeck if there Active order
        $order = Order::where('active', 1)->first();
        if (!isset($order)) {
            $user_id =  null;
            $em_data =  "{}";
            $em_type =  "carts";
            $method  =  "POST";
            $ac_id   =  Ac_api::server($em_type, $em_data, $method);

            if (isset(auth()->user()->id))
                $user_id = auth()->user()->id;

            $order =  Order::create([
                "ac_id"     => $ac_id,
                "user_id"   => $user_id,
            ]);
        }


        //else create new (with americommerce )

        return view('cart');
    }
    //END  index >>>>>





    //START ORDER >>>>>
    public function order($cart_id)
    {
       $this->order_products($cart_id);

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
    public function order_products($cart_id)
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
