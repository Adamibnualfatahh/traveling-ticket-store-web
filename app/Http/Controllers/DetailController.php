<?php

namespace App\Http\Controllers;
use App\Models\TravelPackage as ModelsTravelPackage;
use App\Models\TravelPackage;
use Illuminate\Http\Request;

class DetailController extends Controller
{
    public function index (request $request,$slug)
    {
        $item = TravelPackage::with(['galleries'])
        ->where('slug',$slug)
        ->firstOrFail();
        return view('pages.detail' ,[
            'item' => $item
        ]);
    }
}
