<?php

namespace App\Http\Controllers;

use App\Models\Users;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\View;



class UsersController extends Controller
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
        $data = Users::paginate(10);
        return view('backend.users.index', ['data' => $data]);


    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.users.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {



        $users = new users();
        $users->name = $request->input('name');

        $users->email = $request->input('email');

        $users->password = bcrypt($request->input('password')) ;

        $users->avatar = $request->input('avatar');
        if($request->hasFile('avatar')){
            $file = $request->file('avatar');
            $random = Str::random(5);
            $filename= $random.'_'.time().'_'.$file->getClientOriginalName();
            $path_upload= 'upload/users/';
            $file->move($path_upload,$filename);
            $users->avatar = $path_upload.$filename;

        }

        $users->role_id = $request->input('role_id');


        $is_active = 0;
        if($request->has('is_active')){
            $is_active = $request->input('is_active');
        }
        $users->is_active = $is_active;


        $users->save();
        return redirect()->route('users.index');
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

        $model = users::findOrFail($id);
        return view('backend.users.edit', ['model' => $model]);
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



        $users = users::findOrFail($id);
        $users->name = $request->input('name');

        $users->email = $request->input('email');
        if(!empty($request->input('password'))){
            $users->password = bcrypt($request->input('password')) ;
        }

        @unlink(public_path($users->avatar));
        $users->avatar = $request->input('avatar');

        if($request->hasFile('avatar')){

            $file = $request->file('avatar');
            $random = Str::random(5);
            $filename= $random.'_'.time().'_'.$file->getClientOriginalName();
            $path_upload= 'upload/users/';
            $file->move($path_upload,$filename);
            $users->avatar = $path_upload.$filename;

        }

        $users->role_id = $request->input('role_id');


        $is_active = 0;
        if($request->has('is_active')){
            $is_active = $request->input('is_active');
        }
        $users->is_active = $is_active;










        $users->save();
        return redirect()->route('users.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $users = users::findOrFail($id);
        // xóa ảnh cũ
        @unlink(public_path($users->avatar));

        users::destroy($id);

        return response()->json([
            'status' => true,
            'msg' => 'Xóa thành công'
        ]);
    }
}
