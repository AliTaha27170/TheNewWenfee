<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class res_products extends Model
{
    use HasFactory;

    protected $fillable = [
        'recipe_id' ,
        'product_id',
    ];


    public function product()
    {
        return $this->belongsTo( product::class , 'product_id' );
    }

}
