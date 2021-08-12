<?php



use Illuminate\Support\Facades\Route;

use App\Http\Controllers\CartController;

use App\Http\Controllers\LikeController;

use App\Http\Controllers\MainnCartController;

use App\Http\Controllers\PageController;

use App\Http\Controllers\SearchController;

use App\Models\Product;

use Composer\DependencyResolver\Request;



/*

|--------------------------------------------------------------------------

| Web Routes

|--------------------------------------------------------------------------

|

| Here is where you can register web routes for your application. These

| routes are loaded by the RouteServiceProvider within a group which

| contains the "web" middleware group. Now create something great!

|

*/



Route::get('/',                       [App\Http\Controllers\PageController::class, 'landing'])->name('landing-page');

Route::get('/about',                    [App\Http\Controllers\PageController::class, 'about'])->name('about');

Route::get('/HowToOrder',                    [App\Http\Controllers\PageController::class, 'HowToOrder'])->name('HowToOrder');

Route::get('/Medical',                    [App\Http\Controllers\PageController::class, 'Medical'])->name('Medical');

Route::get('/Fav',                    [App\Http\Controllers\PageController::class, 'Fav'])->name('Fav')->middleware('auth');

Route::get('/ShippingInformation',                    [App\Http\Controllers\PageController::class, 'ShippingInformation'])->name('ShippingInformation');

Route::get('/contact',                    [App\Http\Controllers\PageController::class, 'contact'])->name('contact');

Route::post('/contact', [App\Http\Controllers\ContactUsFormController::class, 'ContactUsForm'])->name('contact.store');

Route::get('/recipes/{slug?}',        [App\Http\Controllers\PageController::class, 'recipes'])->name('recipes');

Route::get('/recipe/preview/{slug}',  [App\Http\Controllers\PageController::class, 'recipe'])->name('recipe-preview');

Route::get('/profile',                [App\Http\Controllers\ProfileController::class, 'profile'])->name('profile');

Route::post('/profile/update',        [App\Http\Controllers\ProfileController::class, 'editProfile'])->name('update-profile');

Route::get('/brands',                 [App\Http\Controllers\PageController::class, 'brands'])->name('brands');

Route::get('/brand/{slug}',             [App\Http\Controllers\PageController::class, 'brand'])->name('brand');

Route::get('/all',                    [App\Http\Controllers\PageController::class, 'viewall'])->name('viewall');

Route::get('/category/{slug}',        [App\Http\Controllers\PageController::class, 'category'])->name('view-category');

Route::get('/product/{slug}',         [App\Http\Controllers\PageController::class, 'preview'])->name('show-product');

Route::get('/cash/checkout',          [App\Http\Controllers\CheckoutController::class, 'checkout'])->name('checkout');

Route::post('/store/order',           [App\Http\Controllers\CheckoutController::class, 'store'])->name('store.order');

Route::get('/logout', [App\Http\Controllers\Auth\LoginController::class,'destroy']);







Route::group(['prefix' => 'cart'], function () {

    Route::get('/', [CartController::class, 'index'])->name('cart.index');

    Route::post('/store/{product}', [CartController::class, 'store'])->name('cart.store');

    Route::patch('/update/{product}', [CartController::class, 'update'])->name('cart.update');

    Route::delete('/delete/{product}', [CartController::class, 'destroy'])->name('cart.destroy');

    Route::post('/switchToSaveForLater/{product}', [CartController::class, 'switchToSaveForLater'])->name('cart.switchToSaveForLater');

});





Route::group(['prefix' => 'admin'], function () {

    Voyager::routes();

});



Auth::routes();



Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');





//search



Route::post('search',[SearchController::class, 'search'])->name('magic_search');



Route::post('brand/search',[SearchController::class, 'searchBrand'])->name('brand_search');


//get products 

Route::get("products_list",function ()

{

    

    $products=Product::where('in_list', 1)->orderBy("category_name")->paginate(500);

    return view('productsTable',with([

        "products" =>$products

    ]));



});

//get products 





Route::group(["middleware"=>"auth"],function(){





Route::get("mange_products",function ()

{

    

    $products=Product::where('in_list', 1)->orderBy("category_name")->paginate(250);

    return view('productsTableAdmin',with([

        "products" =>$products

    ]));



});





Route::get('updateProduct/{id}',function(Request $request,$id){



    Product::find($id)->update([

        "price" => $_REQUEST['price']

    ]);



})->name('uProduct');







Route::get('deleteProduct/{id}',function($id){



    Product::find($id)->update([

        "in_list" => 0

    ]);

    return back();



})->name('dProduct');





});



// Cart with ameriecommerce

Route::get('maincart/{id}/{q}' , [MainnCartController::class   , 'update']);

Route::get('maincart'          , [MainnCartController::class   , 'index' ])->name('maincart');



//FAV products

Route::get('like/{id}'   , [LikeController::class , 'Like'])->name('Like');

Route::get('unLike/{id}' , [LikeController::class , 'UnLike'])->name('UnLike');





Route::get('checkout222'   , [PageController::class , 'checkout'])->name('checkout');

Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('cache:clear');
    // return what you want
});


//Clear Cache facade value:
Route::get('/clear-cache', function() {
    $exitCode = Artisan::call('cache:clear');
    return '<h1>Cache facade value cleared</h1>';
});

//Reoptimized class loader:
Route::get('/optimize', function() {
    $exitCode = Artisan::call('optimize');
    return '<h1>Reoptimized class loader</h1>';
});

//Route cache:
Route::get('/route-cache', function() {
    $exitCode = Artisan::call('route:cache');
    return '<h1>Routes cached</h1>';
});

//Clear Route cache:
Route::get('/route-clear', function() {
    $exitCode = Artisan::call('route:clear');
    return '<h1>Route cache cleared</h1>';
});

//Clear View cache:
Route::get('/view-clear', function() {
    $exitCode = Artisan::call('view:clear');
    return '<h1>View cache cleared</h1>';
});

//Clear Config cache:
Route::get('/config-cache', function() {
    $exitCode = Artisan::call('config:cache');
    return '<h1>Clear Config cleared</h1>';
});