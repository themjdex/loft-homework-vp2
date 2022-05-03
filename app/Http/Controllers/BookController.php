<?php

namespace App\Http\Controllers;

use App\Models\Book;
use Illuminate\Http\Request;
use Barryvdh\Debugbar\Facades\Debugbar;

class BookController extends Controller
{
    function index(Request $request)
    {
        Debugbar::info($request);
        Debugbar::error('Error!');
        Debugbar::warning('Watch out…');
        Debugbar::addMessage('Another message', 'mylabel');
        $books = Book::all();
        return view('books.list', ['books' => $books]);
    }
}
