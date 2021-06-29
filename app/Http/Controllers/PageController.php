<?php

namespace App\Http\Controllers;

use App\Models\CookBook;
use App\Models\Product;
use App\Models\ProductCategory;
use App\Models\Recipe;
use App\Models\Slide;
use CategoriesTableSeeder;
use Illuminate\Http\Request;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Facades\Validator;

class PageController extends Controller
{
    public function __construct()
    {
    
        parent::__construct();
    }
   public function landing()
   {
     $slideCategories=ProductCategory::where('is_homepage',1)->get();
       $slides=Slide::all();
       $cookbooks=ProductCategory::where('slug','cook-books')->first();
       $books=Product::where('product_category_id',$cookbooks->id)->get();
       return view('index',compact('slides','books','slideCategories','cookbooks'));
   }

   public function about()
   {
       return view('about');
   }

   public function contact()
   {
       return view('contact');
   }

   public function preview($id)
   {
    $product=Product::where('id',$id)->first();
    $products = Product::where('id','<>',$product->id)->where('product_category_id', $product->product_category_id)->take(6)->inRandomOrder()->get();
    return view('products.show',compact('product','products'));
   }

   public function recipes()
   {
       $recipes=Recipe::orderBy('created_at','desc')->get();
       return view('recipes',compact('recipes'));
   }
   public function recipe()
   {
    //$recipe=Recipe::whereId($id)->first();
        return view('recipe-preview');
      // return view('recipe-preview',compact('recipe'));
   }

   public function category($slug){
    $category_parent_id=ProductCategory::where('slug',$slug)->first()->parent_id;
    $categories=ProductCategory::where('parent_id',$category_parent_id)->orderBy('order','asc')->get();  
    $products = Product::with('category')->whereHas('category', function ($query) use($slug) {
        $query->where('slug',$slug);
    });
    $products=$products->get();
    return view('viewall',compact('categories','products',));
   }

   public function viewall(Request $request)
   {
      
       $categories=ProductCategory::where('parent_id','<>',null)->orderBy('order','asc')->get();  
      
        if(isset($request->slug)){
            $products = Product::with('category')->whereHas('category', function ($query) use($request) {
                $query->where('slug',$request->slug)->where('price','>=',(int)$request->minPrice)->where('price','<=',(int)$request->maxPrice);
            });
        
        }    
        
        else{
            $products=Product::where('is_active',1);
        }

        if(isset($request->minPrice) || $request->maxPrice){
          $products=$products->where('price','>=',(int)$request->minPrice)->where('price','<=',(int)$request->maxPrice);
        }
        if(isset($request->offer)){
            $products=$products->where('is_offer',1);  
        }
        if(isset($request->keyword)){
            $products=$products->where('name','Like', '%' .$request->keyword. '%');  
        }

        $products=$products->get();


    
    

       return view('viewall',compact('categories','products',));
   }

  

}
