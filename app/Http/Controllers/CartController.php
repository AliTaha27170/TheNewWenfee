<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Validator;

class CartController extends Controller
{
    public function index(){
        return view('cart');
    }
public function store(Product $product,Request $request)
{
     
    $duplicates = Cart::search(function ($cartItem, $rowId) use ($product) {
        return $cartItem->id === $product->id;
    });

    if ($duplicates->isNotEmpty()) {
        return redirect()->route('landing-page')->with('success', 'Item is already in your cart!');
    }

    if($product->discount){
     $new_price=$product->price - ($product->price * ($product->discount / 100));
     Cart::add($product->id, $product->name, $request->qty, $new_price)
     ->associate('App\Models\Product');
    }
    else{
        Cart::add($product->id, $product->name, $request->qty, $product->price)
        ->associate('App\Models\Product');
    }


    return redirect()->back()->with('success', 'Item was added to your cart!');
}

    public function destroy($id) {
 
     Cart::remove($id);
 
     return redirect()->back()->with('success','Item has been removed from cart');
 
 }
 
 public function saveLater($id) {
 
     $item = Cart::get($id);
 
     Cart::remove($id);
 
     $dubl = Cart::instance('saveForLater')->search(function ($cartItem, $rowId) use ($id) {
         return $cartItem->id === $id;
     });
 
     if ($dubl->isNotEmpty()) {
         return redirect()->back()->with('success','Item is save for later');
     }
 
     Cart::instance('saveForLater')->add($item->id, $item->name, 1, $item->price)->associate('App\Product');
 
     return redirect()->back()->with('success','Item has been saved for later');
 
 }
 
 public function update(Request $request, $id){
 
    //  $validator = Validator::make($request->all(), [
    //      'quantity' => 'required|numeric|between: 1,5'
    //  ]);
 
    //  if ($validator->fails()) {
    //      session()->flash('errors','Quantity must be between 1 and 5');
    //      return response()->json(['success' => false]);
    //  }
 //dd($id);
     Cart::update($id, $request->quantity);
 
     session()->flash('success','Quantity has been updated');
 
     return response()->json(['success' => true]);
 
 }
}
