<?php

namespace App\Http\Controllers;

use App\Models\AdminEmail;
use App\Models\Category;
use App\Models\Order;
use App\Models\Product;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    function index()
    {
        $categories = Category::all();
        $products = Product::all();
        $orders = Order::all();
        $email = AdminEmail::query()->value('admin_email');

        return view('admin', ['categories' => $categories, 'products' => $products, 'orders' => $orders, 'adminEmail' => $email]);
    }

    function editCategory($id)
    {
        return view('admin.editcat', ['id' => $id]);
    }

    function deleteCategory($id)
    {
        Category::query()->where('id', $id)->delete();
        return redirect('/admin/');
    }

    function addNewCategory()
    {
        return view('admin.addnewcategory');
    }

    function saveCategory(Request $request)
    {
        $id = $request->get('id');
        $newTitle = $request->get('new_title');
        $newDesc = $request->get('new_desc');
        $request->validate([
            'new_title' => ['required', 'string'],
            'new_desc' => ['required', 'string']]);

        Category::query()->where('id', $id)->update(['title' => $newTitle, 'description' => $newDesc]);
        return redirect('/admin');
    }

    function saveNewCategory(Request $request)
    {
        $newTitle = $request->get('new_title');
        $newDesc = $request->get('new_desc');

        $request->validate([
            'new_title' => 'required',
            'new_desc' => 'required']);

        Category::query()->insert(['title' => $newTitle, 'description' => $newDesc]);

        return redirect('/admin');
    }

    function editProduct($id)
    {
        return view('admin.editprod', ['id' => $id]);
    }

    function addNewProduct()
    {
        return view('admin.addnewproduct');
    }
    function deleteProduct($id)
    {
        Product::query()->where('id', $id)->delete();
        return redirect('/admin');
    }

    function saveProduct(Request $request)
    {
        $id = $request->get('id');
        $newName = $request->get('new_name');
        $newPrice = $request->get('new_price');
        $newCategory = $request->get('new_cat');
        $newAnnotation = $request->get('new_anno');

        $request->validate([
            'new_name' => ['required', 'string'],
            'new_price' => ['required', 'numeric'],
            'new_cat' => ['required', 'string'],
            'new_anno' => ['required', 'string']]);

        Product::query()->where('id', $id)->update(['name' => $newName, 'price' => $newPrice, 'category' => $newCategory, 'annotation' => $newAnnotation]);

        return redirect('/admin');
    }

    function saveNewProduct(Request $request)
    {
        $newName = $request->get('new_name');
        $newPrice = $request->get('new_price');
        $newCategory = $request->get('new_cat');
        $newAnnotation = $request->get('new_anno');

        $request->validate([
            'new_name' => ['required', 'string'],
            'new_price' => ['required', 'numeric'],
            'new_cat' => ['required', 'string'],
            'new_anno' => ['required', 'string']]);

        Product::query()->insert(['name' => $newName, 'price' => $newPrice, 'category' => $newCategory, 'annotation' => $newAnnotation]);

        return redirect('/admin');
    }

    function changeEmail(Request $request)
    {
        $newEmail = $request->get('new_email');
        $request->validate(['new_email' => ['required', 'string', 'email', 'max:255']]);
        AdminEmail::query()->update(['admin_email' => $newEmail]);
        return redirect('/admin/');
    }
}
