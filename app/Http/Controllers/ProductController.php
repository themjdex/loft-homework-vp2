<?php

namespace App\Http\Controllers;

use App\Models\Product;

class ProductController extends Controller
{
    function index()
    {
        $products = Product::all();
        return view('welcome', ['games' => $products]);
    }

    function showGame($id)
    {
        $game = Product::query()->find($id);
        return view('product', ['game' => $game]);
    }
}
