<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Gallery extends Model
{
    use SoftDeletes;



    protected $fillable =[
        'travel_packages_id','image',
    ];

    protected $hidden =[

    ];

    public function travel_package(){
        return $this->belongsTo(TravelPackage::class,'travel_packages_id', 'id');
    }
}