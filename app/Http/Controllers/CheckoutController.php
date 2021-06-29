<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\OrderProduct;
use Illuminate\Http\Request;
use Gloudemans\Shoppingcart\Facades\Cart;


class CheckoutController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
        parent::__construct();
    }

    public function checkout()
    {
        return view('cash-checkout');
    }


    public function store(Request $request)
    {
        $request->validate([

            'closest_address' => 'required',
            'city' => 'required',
            'state' => 'required',
            'zipcode' => 'required',
        ]);
        // Insert into orders table
        $order = Order::create([
            'user_id' =>  auth()->user()->id,
            'billing_email' => auth()->user()->email,
            'billing_name' => auth()->user()->name,
            'billing_address' => auth()->user()->address ?? null,
            'closest_address' => $request->closest_address,
            'billing_phone' => auth()->user()->phone,
            'billing_city' => $request->city,
            'billing_state' => $request->state,
            'billing_postalcode' => $request->zipcode,
            'billing_subtotal' => Cart::subtotal(),
            'billing_tax' => Cart::tax(),
            'billing_total' => Cart::total() + 11.99,
            'shipped' => false,
            'payment_gateway' => 'cash'

        ]);

        // Insert into order_product table
        foreach (Cart::content() as $item) {
            OrderProduct::create([
                'order_id' => $order->id,
                'product_id' => $item->model->id,
                'quantity' => $item->qty,
            ]);
        }

        Cart::instance('default')->destroy();

        return redirect()->route('landing-page')->with('success', 'Thank you! Your payment has been successfully accepted!');
    }
}
