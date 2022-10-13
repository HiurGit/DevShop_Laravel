<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\vendor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Str;



class VendorController extends Controller
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
        $data = vendor::paginate(10);
        return view('backend.vendor.index', ['data' => $data]);


    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data = vendor::all();
        return view('backend.vendor.create', ['data' => $data]);

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate([
            'name' => 'required|max:255',

            'position' => 'required|max:255',
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:10000',
            //'target' => 'required',
            //'description' => 'required',
        ],[
            'name.required' => 'Bạn cần phải nhập vào tên',

            'image.image' => 'File ảnh phải có dạng jpeg,png,jpg,gif,svg',
            'position.required' => 'Bạn cần phải nhập vị trí',
            //'target.required' => 'Bạn cần phải target',
            //'description.required' => 'Bạn cần phải nhập vào mô tả',
        ]);

        $vendor = new vendor();
        $vendor->name = $request->input('name');
        $vendor->slug = Str::slug($request->input('name'));
        $vendor->email = $request->input('email');
        $vendor->phone = $request->input('phone');
        $vendor->website = $request->input('website');
        $vendor->address = $request->input('address');


        $vendor->image = $request->input('image');
        if($request->hasFile('image')){
            $file = $request->file('image');
            $random = Str::random(5);
            $filename= $random.'_'.time().'_'.$file->getClientOriginalName();
            $path_upload= 'upload/vendor/';
            $file->move($path_upload,$filename);
            $vendor->image = $path_upload.$filename;

        }




        $position = 0;
        if($request->has('position')){
            $position = $request->input('position');
        }
        $vendor->position =  $position;

        $is_active = 0;
        if($request->has('is_active')){
            $is_active = $request->input('is_active');
        }
        $vendor->is_active = $is_active;


        $vendor->save();
        return redirect()->route('vendor.index');
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
        $data = vendor::all();
        $model = vendor::findOrFail($id);
        return view('backend.vendor.edit', ['model' => $model],['data' => $data]);
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



        $vendor = vendor::findOrFail($id);
        $vendor->name = $request->input('name');
        $vendor->slug = Str::slug($request->input('name'));
        $vendor->email = $request->input('email');
        $vendor->phone = $request->input('phone');
        $vendor->website = $request->input('website');
        $vendor->address = $request->input('address');

        // @(app_path($vendor->image));

        if($request->hasFile('image'))
        {

            $vendor->image = $request->input('image');
            @unlink(public_path($vendor->image));


            $file = $request->file('image');
            $random = Str::random(5);
            $filename= $random.'_'.time().'_'.$file->getClientOriginalName();
            $path_upload= 'upload/vendor/';
            $file->move($path_upload,$filename);
            $vendor->image = $path_upload.$filename;

        }



        $position = 0;
        if($request->has('position')){
            $position = $request->input('position');
        }
        $vendor->position =  $position;

        $is_active = 0;
        if($request->has('is_active')){
            $is_active = $request->input('is_active');
        }
        $vendor->is_active = $is_active;


        $vendor->save();
        return redirect()->route('vendor.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $vendor = vendor::findOrFail($id);
        // xóa ảnh cũ
        $checkExitsProduct = Product::where('vendor_id', $id)->first();

        if ($checkExitsProduct != null) {
            return response()->json([
                'status' => false,
                'msg' => 'Xóa không thành công do, tồn tại một hoặc nhiều sản phẩm đang được thêm cho nhà cung cấp này này '
            ]);
        }




        @unlink(public_path($vendor->image));

        vendor::destroy($id);

        return response()->json([
            'status' => true,
            'msg' => 'Xóa thành công'
        ]);
    }
}
