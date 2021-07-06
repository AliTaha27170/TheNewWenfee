<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;

class Product extends Model
{
    use HasFactory,Resizable;

    protected $fillable = [
        'ac_id',
        'ac_img_id',
        "in_list" ,
        "price"
    ];
    public function category()
    {
        return $this->belongsTo(ProductCategory::class,'product_category_id');
    }
    public function brand()
    {
        return $this->belongsTo(Brand::class,'brand_id');
    }
}
