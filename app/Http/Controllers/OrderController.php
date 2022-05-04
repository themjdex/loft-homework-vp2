<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class OrderController extends Controller
{
    public function index($id)
    {
        $user = Auth::user();
        return view('checkout', ['email' => $user->email, 'id' => $id]);
    }

    /**
     * @throws \Illuminate\Validation\ValidationException
     */
    function sendOrder(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'email' => 'required'
        ]);

        $order = new Order();
        $order->customer = $request->name;
        $order->product_id = $request->id;
        $order->email = $request->email;

        $order->save();
        Mail::to('themjdex@gmail.com')->send(new \App\Mail\Order($order));
        return redirect('/');
    }
    function showMyOrders()
    {
        $user = Auth::user();
        $res = Order::query()->where('email', $user->email)->get();
        return view('orders', ['orders' => $res]);
    }
}
