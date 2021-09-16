<?php

namespace App\Providers;
use App\Models\ContactInfo;
use Carbon\Carbon;
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
                   $today = Carbon::now()->subDays(7);
                   
                    //dd($about);
                    $view->with('contacts',$contacts)->with('today',$today);
                });  
    }
}
