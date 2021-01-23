<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class TravelPackage extends Model
{
    use SoftDeletes;



    protected $fillable =[
        'title','slug','location','about','featured_event','languange','foods','departure_date','duration','type','price'
    ];

    protected $hidden =[

    ];

    public function galleries(){
        return $this->hasMany(Gallery::class,'travel_packages_id', 'id');
    }
}
