<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class MainnCartController extends Controller
{


   // START  INDEX  >>>>>
   
   public function index()
   {
       $products =[];

    foreach ($_COOKIE as $key => $value) {
        if($key[0]=='p')
        {
            $product = Product::find($value);
            array_push($products , $product );
        }

    
   }

   return view('cart.Maincart');
}
   

   // END    INDEX  >>>>>





//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>




   // START  UPDATE  >>>>>
   
   public function update()
   {
       return view('cart.UpdateCart');
       
   }

   // END    UPDATE  >>>>>


}
