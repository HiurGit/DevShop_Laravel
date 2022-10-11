<?php

namespace App\Http\Controllers;


use App\Models\Article;
use App\Models\Category;
use App\Models\Product;
use App\Models\Setting;
use App\Models\Banner;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\View;

class CartController extends Controller
{
    public function __construct()
    {
        $this->category = Category::where(['is_active' => 1])->get();
        $setting = Setting::first();

        View::share('setting', $setting);
        View::share('category', $this->category);



    }
    public function cartList()
    {
        $cartItems = \Cart::getContent();

        return view('frontend.client.cart', compact('cartItems'));
    }


    public function addToCart(Request $request)
    {

        \Cart::add([
            'id' => $request->id,
            'name' => $request->name,
            'price' => $request->sale,
            'quantity' => $request->quantity,
            'attributes' => array(
                'image' => $request->image,
            )
        ]);
        // session()->flash('success', 'Thêm sản phẩm thành công !');

        return redirect()->route('cart.list');
    }

    public function updateCart(Request $request)
    {
        \Cart::update(
            $request->id,
            [
                'quantity' => [
                    'relative' => false,
                    'value' => $request->quantity
                ],
            ]
        );

        // session()->flash('success', 'Cập nhật thành công !');

        return redirect()->route('cart.list');
    }

    public function removeCart(Request $request)
    {
        \Cart::remove($request->id);

        // session()->flash('success', 'Xóa thành công !');

        return redirect()->route('cart.list');
    }

    public function removeToCart(Request $request)
    {
        $id = $request->id;

        if(!empty($id)){
            \Cart::remove($id);
            $cartItems = \Cart::getContent();
            $total = \Cart::getTotal();
            return view('frontend.client.cart_sub',compact('cartItems','total'));
        }


        // session()->flash('success', 'Xóa tất cả thành công !');

        return redirect()->route('cart.list');
    }
    public function updateToCart(Request $request)
    {

        $product_id =(int) $request->input('id');
        $qty =(int) $request->input('qty');


        \Cart::update($product_id, array(
            'quantity' => array(
                'relative' => false,
                'value' => $qty
            ),
          ));
          $cartItems = \Cart::getContent();
          $total = \Cart::getTotal();
          return view('frontend.client.cart_sub',compact('cartItems','total'));


    }
    public function clearAllCart()
    {
        \Cart::clear();

        // session()->flash('success', 'Xóa tất cả thành công !');

        return redirect()->route('cart.list');
    }
}
