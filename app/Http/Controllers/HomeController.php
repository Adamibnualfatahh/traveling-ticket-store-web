<?php

namespace App\Http\Controllers;

use App\Models\TravelPackage as ModelsTravelPackage;
use App\models\TravelPackage;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index (request $request)
    {
        $items = TravelPackage::with(['galleries'])->get();

        return view('pages.home' ,[
             'items' => $items
        ]);
           
    }
}
