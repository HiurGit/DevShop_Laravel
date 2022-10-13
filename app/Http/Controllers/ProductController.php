<?php

namespace App\Http\Controllers;

use App\Models\Brands;
use App\Models\Category;
use App\Models\Product;
use App\Models\User;
use App\Models\Vendor;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\View;



use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    public function __construct()
    {
        $User =   DB::table('users')->where("is_active",1)->count();
        $Product =DB::table('products')->where("is_active",1)->count();
        $Article = DB::table('articles')->where("is_active",1)->count();
        $Banner = DB::table('banners')->where("is_active",1)->count();
        $Brands = DB::table('brands')->where("is_active",1)->count();
        $Category = DB::table('categories')->where("is_active",1)->count();
        $Contacts = DB::table('contacts') ->count();
        $Vendor = DB::table('vendors')->where("is_active",1)->count();

        View::share('User', $User);
        View::share('Product', $Product);
        View::share('Article', $Article);
        View::share('Banner', $Banner);
        View::share('Brands', $Brands);
        View::share('Contacts', $Contacts);
        View::share('Category', $Category);
        View::share('Vendor', $Vendor);

    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // $data = product::all();

        $data = DB::table('products')
            ->join('categories', 'products.category_id', '=','categories.id' )
            ->join('vendors', 'products.vendor_id', '=', 'vendors.id')
            ->select('products.*', 'categories.name as cate_name','vendors.name as vendor_name' )
            ->get();


        return view('backend.product.index', ['data' => $data] );


    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $product = Product::all();

        $category = Category::all();
        $brand = Brands::all();
        $vendor = Vendor::all();

        // return view('backend.product.create',['category' => $category],['product' => $product],['brand' => $brand],['vendor' => $vendor] );
        return view('backend.product.create')->with('category', $category)->with('product', $product)->with('vendor', $vendor)->with('brand', $brand);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {



        $product = new product();

        $product->name = $request->input('name');
        $product->slug = Str::slug($request->input('name'));


        $product->image = $request->input('image');
        if($request->hasFile('image')){
            $file = $request->file('image');
            $random = Str::random(5);
            $filename= $random.'_'.time().'_'.$file->getClientOriginalName();
            $path_upload= 'upload/product/';
            $file->move($path_upload,$filename);
            $product->image = $path_upload.$filename;

        }

        $product->stock = $request->input('stock');
        $product->price = (int) str::remove(',', $request->input('price'));
        $product->sale = (int) str::remove(',', $request->input('sale'));




        $product->category_id = $request->input('category_id');
        $product->brand_id = $request->input('brand_id');
        $product->vendor_id = $request->input('vendor_id');
        $product->url = $request->input('url');
        $product->color = $request->input('color');
        $product->summary = $request->input('summary');
        $product->description = $request->input('description');
        $product->meta_title = $request->input('meta_title');
        $product->meta_description = $request->input('meta_description');


        $is_hot = 0;
        if($request->has('is_hot')){
            $is_hot = $request->input('is_hot');
        }
        $product->is_hot = $is_hot;


        $position = 0;
        if($request->has('position')){
            $position = $request->input('position');
        }
        $product->position =  $position;

        $is_active = 0;
        if($request->has('is_active')){
            $is_active = $request->input('is_active');
        }
        $product->is_active = $is_active;


        $product->save();
        return redirect()->route('product.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $product = Product::all();
        $model = Product::findOrFail($id);
        $category = Category::all();
        $brand = Brands::all();
        $vendor = Vendor::all();

        // return view('backend.product.create',['category' => $category],['product' => $product],['brand' => $brand],['vendor' => $vendor] );
        return view('backend.product.edit')->with('model', $model)->with('category', $category)->with('product', $product)->with('vendor', $vendor)->with('brand', $brand);


    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {



        $product = product::findOrFail($id);
        $product->name = $request->input('name');
        $product->slug = Str::slug($request->input('name'));


        // @(app_path($product->image));
        $product->image = $request->input('image');
        if($request->hasFile('image'))
        {


            @unlink(public_path($product->image));


            $file = $request->file('image');
            $random = Str::random(5);
            $filename= $random.'_'.time().'_'.$file->getClientOriginalName();
            $path_upload= 'upload/product/';
            $file->move($path_upload,$filename);
            $product->image = $path_upload.$filename;

        }

        $product->stock = $request->input('stock');
        $product->price = (int) str::remove(',', $request->input('price'));
        $product->sale = (int) str::remove(',', $request->input('sale'));


        $product->category_id = $request->input('category_id');
        $product->brand_id = $request->input('brand_id');
        $product->vendor_id = $request->input('vendor_id');
        $product->url = $request->input('url');
        $product->color = $request->input('color');
        $product->summary = $request->input('summary');
        $product->description = $request->input('description');
        $product->meta_title = $request->input('meta_title');
        $product->meta_description = $request->input('meta_description');


        $is_hot = 0;
        if($request->has('is_hot')){
            $is_hot = $request->input('is_hot');
        }
        $product->is_hot = $is_hot;


        $position = 0;
        if($request->has('position')){
            $position = $request->input('position');
        }
        $product->position =  $position;

        $is_active = 0;
        if($request->has('is_active')){
            $is_active = $request->input('is_active');
        }
        $product->is_active = $is_active;



        $product->save();
        return redirect()->route('product.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $product = product::findOrFail($id);
        // xóa ảnh cũ
        @unlink(public_path($product->image));

        product::destroy($id);

        return response()->json([
            'status' => true,
            'msg' => 'Xóa thành công'
        ]);
    }
}
