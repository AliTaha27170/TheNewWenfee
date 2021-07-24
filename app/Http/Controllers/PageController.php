<?php

namespace App\Http\Controllers;
use App\Models\Brand;
use App\Models\Message;
use App\Models\ContactInfo;
use App\Models\CookBook;
use App\Models\Product;
use App\Models\ProductCategory;
use App\Models\Recipe;
use App\Models\RecipeCategory;
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
       $recipes=Recipe::take(3)->inRandomOrder()->get();
       $brands=Brand::all();
       $cookbooks=ProductCategory::where('slug','cook-books')->first();
       $books=Product::where('product_category_id',$cookbooks->id)->get();
       
       return view('index',compact('slides','books','slideCategories','recipes','cookbooks','brands'));
   }

   public function about()
   {
       return view('about');
   }

   public function contact()
   {
    $contacts=ContactInfo::all();
       return view('contact',compact('contacts'));
   }

   public function preview($id)
   {
    $product=Product::where('id',$id)->first();
    $products = Product::where('id','<>',$product->id)->where('product_category_id', $product->product_category_id)->take(6)->inRandomOrder()->get();
    return view('products.show',compact('product','products'));
   }

   public function recipes($slug=null)
   
      {  
       $recipes_categories=RecipeCategory::all();
   
       if($slug){
          $cat=RecipeCategory::where('slug',$slug)->first()->id;
          $recipes=Recipe::where('recipe_category_id',$cat)->orderBy('created_at','desc')->paginate(6);
   
       } 
       else{
           $recipes=Recipe::orderBy('created_at','desc')->paginate(6);
   
       }
       
          return view('recipes',compact('recipes','recipes_categories'));
      }
   
      public function recipe($slug)
      {
       $recipe=Recipe::where('slug',$slug)->first();
         return view('recipe-preview',compact('recipe'));
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
   public function brand($slug){
    $categories=ProductCategory::where('parent_id','<>',null)->orderBy('order','asc')->get();  
    $products = Product::with('brand')->whereHas('brand', function ($query) use($slug) {
        $query->where('slug',$slug);
    });
    $products=$products->paginate(9);
    return view('viewall',compact('categories','products'));
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
        if(isset($request->brand)){
            $brand=Brand::where('slug',$request->brand)->first()->id;
            $products=$products->where('brand_id',$brand);
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
   public function brands()
   {
      $brands=Brand::all();
         
       return view('brands',compact('brands'));
   }


//    public function messagePost(Request $request) 
//    {
//     $data = Message::create([
//         'mail' => request('mail'),
//         'message' => request('message')
//     ]);
//     return test;
//    }

}
