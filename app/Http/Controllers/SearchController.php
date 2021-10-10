<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Brand;
use App\Models\ProductCategory;
use Illuminate\Http\Request;
use TCG\Voyager\Models\Category;
use Validator;

class SearchController extends Controller
{
    public function search (Request $request)
    {
        $rules = [
            "Search"    => "required",
        ];

        $validator   =   validator::make($request->all(), $rules);

    
        if(strlen($request['search'])<=4 or 1==1)
{
   
    $products    =  Product::where(
        'name'          , 'Like','%' .$request->search. '%')->orWhere(
        'body'          , 'Like','%' .$request->search. '%'
        )->orWhere(
        'category_name' , 'Like', '%' .$request->search. '%')->take(100)->get();

}
else{
    $products    =  Product::where(
        'name'          ,'like','%'.$request->search)->orWhere(
        'body'          ,'like','%'.$request->search
        )->orWhere(
        'category_name' ,'like','%'.$request->search)->orWhere(
        'code'          , $request->search)->take(100)->get(); 
}
     
        $categories  =  ProductCategory::where('parent_id' , null)->get();

        return view('viewall',compact('categories','products',));


}
public function searchBrand (Request $request)
{
    $rules = [
        "Search"    => "required",
    ];

    $validator   =   validator::make($request->all(), $rules);


    if(strlen($request['search'])<=4 or 1==1)
{
    $categories  =  ProductCategory::where('parent_id' , null)->get();
    $products  =  Product::all();
$brands    =  Brand::where(
    'name'          , 'Like','%' .$request->search. '%')->get();

    }
    return view('brandsearch',compact('brands'));


}

public function test ( )
{

    $products   =  Product::get();
   

    foreach ($products as $item ) {
        $item->category_name = $this->return_name($item->product_category_id);
        $item->save();
    }


}

public function return_name  ( $id )
{
   $category =  ProductCategory::find($id);
   if($category)
    return $category->name;
    
    return "_";

}

}
