<?php

namespace App\Providers;
use App\Models\ContactInfo;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
        view()->composer(['footer', '*'], function ($view) {
            
                   //Change this to the code you would use to get the notifications
                   $contacts=ContactInfo::all();      
                    //dd($about);
                    $view->with('contacts',$contacts);
                });  
    }
}
