<?php
namespace App\hellpers;

use App\Models\like;

class like_
{
     static public function check($id)
    {
            
       return count (like::where('user_id',auth()->user()->id)->where('product_id',$id)->get());
    
    }
}


?>