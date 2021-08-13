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
    
}
