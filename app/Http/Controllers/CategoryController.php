<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class CategoryController extends Controller
{
    function index($id)
    {
        $category = DB::table('categories')->where('id', $id)->value('title');
        $data = DB::table('categories')
            ->join('products', function ($join) {
                $join->on('categories.title', '=', 'products.category');
            })
            ->get();
//        dd($data);
        $result = [];
        foreach ($data as $game) {
            if ($game->title == $category) {
                $result[] = ['id' => $game->id, 'name' => $game->name, 'price' => $game->price, 'image' => $game->image, 'category' => $game->category];
            }
        }

        return view('category', ['games' => $result]);
    }
}
