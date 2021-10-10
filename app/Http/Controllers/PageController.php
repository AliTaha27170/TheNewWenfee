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
use App\Models\res_products;
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
    $slideCategories  =  ProductCategory::where('is_homepage',1)->with('products')->get();    
    $slideCategory    =  ProductCategory::where('is_homepage',1)->with('products')->inRandomOrder()->first();   
    
       $slides=Slide::inRandomOrder()->get();
       $recipes=Recipe::orderby('created_at','DESC')->take(3)->get();
       $brands=Brand::inRandomOrder()->get();
       $cookbooks=ProductCategory::where('slug','cook-books')->first();
       $books=Product::where('product_category_id',$cookbooks->id)->get();

       return view('index',compact('slides','books','slideCategories','recipes','cookbooks','brands','slideCategory'));
   }
//Start 
   public function getProducts($id){
    
    if($id  ){
        $products  = Product::where('product_category_id' , $id)->paginate(4);
    }else{
        $prod = Product::all();
        //dd($products);
        // $returnHTML = view("product");
        // $returnHTML=$returnHTML->render();
        
    }
    return view('product')->with(
        [
            "products" => $products
        ]
    );
    
   // return response()->json($products);   
    //return Response::json(['html' => $html]);
}


   
   public function about()
   {
       return view('about');
   }
   public function HowToOrder()
   {
       return view('HowToOrder');
   }
   public function MyOrder()
   {
       return view('MyOrder');
   }
   public function OrderSummary()
   {
       return view('OrderSummary');
   }
   public function Receipt()
   {
       return view('Receipt');
   }
   public function ThankYou()
   {
       return view('ThankYou');
   }
   public function AccountSettings()
   {
       return view('AccountSettings');
   }
   public function Medical()
   {
    $category_parent_id=ProductCategory::get()->first()->parent_id;
    $categories=ProductCategory::where('parent_id',$category_parent_id)->orderBy('order','asc')->get();
    $products = Product::limit(10)->get();
    return view('Medical',compact('categories','products',));
   }
   public function Fav()
   {
    $category_parent_id=ProductCategory::get()->first()->parent_id;
    $categories=ProductCategory::where('parent_id',$category_parent_id)->orderBy('order','asc')->get();

    $likes = auth()->user()->favProducts ;
    return view('Fav',compact('categories','likes',));

   }
   public function ShippingInformation()
   {
       return view('ShippingInformation');
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
           $recipes=Recipe::orderBy('created_at','desc')->paginate(60);

       }

       foreach($recipes as $item)
       {
           if(!($item->processed) and isset($item->products))
           {
               $j=0;
               while (  $j < strlen($item->products) )
               {
                   $code = '';

                   while($item->products[$j] != ',')
                   {
                       $code .=   $item->products[$j] ;
                       $j++;
                       if($j>=strlen($item->products))
                        break;
                   }
                   $j++;
                   $product = Product::where('code','Like', '' .$code. '%')->first();
                   res_products::create([
                    "product_id"   =>   $product->id ,
                    "recipe_id"    =>   $item->id ,
                   ]);
                   $item->update(['processed' => 1]);
               }
           }

       }
          return view('recipes',compact('recipes','recipes_categories'));
      }

      public function recipe($slug)
      {
       $recipe=Recipe::where('slug',$slug)->first();
       $products = Product::limit(10)->get();

         return view('recipe-preview',compact('recipe','products'));
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
// get products || brands

   public function brand($slug){

    try {
        $categories = ProductCategory::where('parent_id','<>',null)->orderBy('order','asc')->get();
        $products   = Product::where('name',$slug)->get();

        return view('viewall',compact('categories','products'));

    } catch (\Throwable $th) {

        return back();
        }


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
            $products=$products->where('is_offer',1)->orderBy('created_at',"ASC");
        }
        elseif(isset($request->frozen)){
            $products=$products->where('is_frozen',1)->orderBy('created_at',"ASC");
        }
        elseif(isset($request->refrigerated)){
            $products=$products->where('is_ref',1)->orderBy('created_at',"ASC");
        }
        elseif(isset($request->refrigerated) && ($request->frozen)){
            $products=$products->where('is_ref',1)->where('is_frozen',1)->orderBy('created_at',"ASC");
        }
        elseif(isset($request->refrigerated) && ($request->offer)){
            $products=$products->where('is_ref',1)->where('is_offer',1)->orderBy('created_at',"ASC");
        }
        elseif(isset($request->frozen) && ($request->offer)){
            $products=$products->where('is_frozen',1)->where('is_offer',1)->orderBy('created_at',"ASC");
        }
        elseif(isset($request->frozen) && ($request->offer) && ($request->refrigerated)){
            $products=$products->where('is_frozen',1)->where('is_offer',1)->where('is_ref',1)->orderBy('created_at',"ASC");
        }
        elseif(isset($request->keyword)){
            $products=$products->where('name','Like', '%' .$request->keyword. '%');
        }
        
        $products=$products->get();





       return view('viewall',compact('categories','products',));
   }
   public function brands()
   {
    $brands=Brand::all();
    $fbrands=Brand::orderBy('name','asc')->get();
    $groups=$fbrands->reduce(function($carry,$brand){
      $first=$brand['name'][0];
      if(!isset($carry[$first])){
          $carry[$first]=[];
      }
      $carry[$first][]=$brand;
      return $carry;
  },[]);
  //dd($groups);
  return view('brands',compact('brands','groups'));
}

// START >>

public function checkout ()
{
    // unset cookies
if (isset($_SERVER['HTTP_COOKIE'])) {
    $cookies = explode(';', $_SERVER['HTTP_COOKIE']);
    foreach($cookies as $cookie) {
        $parts = explode('=', $cookie);
        $name  = trim($parts[0]);
        setcookie($name, '', time()-1000);
        setcookie($name, '', time()-1000, '/');
    }

    return redirect('https://wenfeeusa.americommerce.com/store/shopcart.aspx');
}
}
//END >>








//    public function messagePost(Request $request)
//    {
//     $data = Message::create([
//         'mail' => request('mail'),
//         'message' => request('message')
//     ]);
//     return test;
//    }

}
