<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pcategory extends Model
{
    protected $fillable = ['name', 'language_id', 'status', 'slug', 'image', 'is_feature', 'tax'];

    public function products()
    {
        return $this->hasMany('App\Models\Product', 'category_id', 'id');
    }

    public function language()
    {
        return $this->belongsTo('App\Models\Language');
    }

    public function subcategories()
    {
        return $this->hasMany(PsubCategory::class, 'category_id');
    }
}
