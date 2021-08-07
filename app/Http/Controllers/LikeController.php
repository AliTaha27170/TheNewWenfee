<?php

namespace App\Http\Controllers;

use App\Models\like;
use Illuminate\Http\Request;

class LikeController extends Controller
{

/** START like */    
    public function Like ($id)
    {

        like::create(
            [
                "user_id"    => auth()->user()->id ,
                "product_id" => $id 
            ]
            );
            return back();

    }
/** END like */   


/** START  UnLike */    
    public function UnLike ($id)
    {
        Like::where('product_id',$id)->where('user_id',auth()->user()->id)->delete();
        return back();
    }
/** END UnLike */   

}
