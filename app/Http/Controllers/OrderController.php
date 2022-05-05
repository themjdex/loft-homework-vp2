<?php

namespace App\Http\Controllers;

use App\Models\AdminEmail;
use App\Models\Order;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
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
        Mail::to($this->getMailer())->send(new \App\Mail\Order($order));
        return redirect('/');
    }
    function showMyOrders()
    {
        $data = DB::table('products')
            ->join('orders', function ($join) {
                $join->on('products.id', '=', 'orders.product_id')
                    ->where('email', '=', Auth::user()->email);
            })
            ->get();
        return view('orders', ['orders' => $data]);
    }

    public function getMailer()
    {
        return AdminEmail::query()->value('admin_email');
    }
}
