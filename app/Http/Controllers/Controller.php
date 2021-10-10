<?php

namespace App\Http\Controllers;
use View;

use App\Models\ProductCategory;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function __construct()
    {
        ini_set('max_execution_time', 300);
        
        $cats=ProductCategory::whereNull('parent_id')->with('children')->orderBy('order','asc')->get();   
        
        View::share('cats', $cats);
    
    }

}
