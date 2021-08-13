<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Recipe extends Model
{
    use HasFactory;
    protected $guarded=[];
    public function cat()
    {
        return $this->belongsTo(RecipeCategory::class,'recipe_category_id');
    }
<<<<<<< HEAD
    
=======


    public function res_products()
    {
        return $this->hasMany(res_products::class, 'recipe_id', 'id');
    }

>>>>>>> cb70c064f9b0d3d9df5d22523ee685429c7dab7d
}
