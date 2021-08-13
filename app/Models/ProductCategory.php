<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Resizable;

class ProductCategory extends Model
{
    use HasFactory, Resizable;

    protected $fillable = [
        'ac_id',
        'category_name'
 
    ];
     public function products()
    {
        return $this->hasMany(Product::class);
    }
    
    
        public function children()
    {
        return $this->hasMany(self::class, 'parent_id');
    }

    public function parent()
    {
        return $this->hasMany(self::class, 'id', 'parent_id');
    }
}
