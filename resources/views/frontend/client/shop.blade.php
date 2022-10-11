@extends('frontend.layouts.main')
@section('home')

<div class="page-contain">

<!-- Main content -->
<div id="main-content" class="main-content">

    <!--Block 01: Main slide-->
    <div class="main-slide block-slider">
        <ul class="biolife-carousel nav-none-on-mobile" data-slick='{"arrows": true, "dots": false, "slidesMargin": 0, "slidesToShow": 1, "infinite": true, "speed": 800}' >
            @foreach ($banner_slide as $item )
            <li>
                <div class="slide-contain slider-opt03__layout01">
                    <div class="media">
                        <div class="child-elememt">
                            <a href="#" class="link-to">
                                <img src="{{asset($item->image)}}" width="604" height="580" alt="">
                            </a>
                        </div>
                    </div>
                    {{-- <div class="text-content">
                        <i class="first-line">Pomegranate</i>
                        <h3 class="second-line">Vegetables 100% Organic</h3>
                        <p class="third-line">A blend of freshly squeezed green apple & fruits</p>
                        <p class="buttons">
                            <a href="#" class="btn btn-bold">Shop now</a>
                            <a href="#" class="btn btn-thin">View lookbook</a>
                        </p>
                    </div> --}}
                </div>
            </li>
            @endforeach


        </ul>
    </div>
    {{--  Block 02    --}}

    {{--  Block 03  --}}
    <div class="wrap-category xs-margin-top-80px sm-margin-top-50px">
        <div class="container">
            <div class="biolife-title-box style-02 xs-margin-bottom-33px">

                <h3 class="main-title">Quảng cáo</h3>
             </div>

            <ul class="biolife-carousel nav-center-bold nav-none-on-mobile" data-slick='{"arrows":true,"dots":false,"infinite":false,"speed":400,"slidesMargin":30,"slidesToShow":4, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 3}},{"breakpoint":992, "settings":{ "slidesToShow": 3}},{"breakpoint":768, "settings":{ "slidesToShow": 2}}, {"breakpoint":500, "settings":{ "slidesToShow": 1}}]}'>
                @foreach ($thumb as $item )
                <li>
                    <div class="biolife-cat-box-item">
                        <div class="cat-thumb">

                                <img src="{{asset($item->image)}}" width="277" height="185" alt="">

                        </div>
                        <a class="cat-info" href="#">
                            <h4 class="cat-name">Thực phẩm sạch</h4>
                            <span class="cat-number">(Xin mời)</span>
                        </a>
                    </div>
                </li>
                @endforeach
            </ul>

            <div class="biolife-service type01 biolife-service__type01 sm-margin-top-25px xs-margin-top-65px">
                <ul class="services-list">
                    <li>
                        <div class="service-inner">
                            <span class="number">1</span>
                            <span class="biolife-icon icon-beer"></span>
                            <span class="srv-name" href="#">SẢN PHẨM ĐẦY ĐỦ TEM</span>
                        </div>
                    </li>
                    <li>
                        <div class="service-inner">
                            <span class="number">2</span>
                            <span class="biolife-icon icon-schedule"></span>
                            <span class="srv-name" href="#">đặt và giao hàng đúng hẹn</span>
                        </div>
                    </li>
                    <li>
                        <div class="service-inner">
                            <span class="number">3</span>
                            <span class="biolife-icon icon-car"></span>
                            <span class="srv-name" href="#">Miễn phí vận chuyển nội thành</span>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>


    <!--Block 03: Product Tab-->
    <div class="product-tab z-index-20 sm-margin-top-193px xs-margin-top-30px">
        <div class="container">
            <div class="biolife-title-box">

                <h3 class="main-title">SẢN PHẨM MỚI</h3>
            </div>
            <div class="biolife-tab biolife-tab-contain sm-margin-top-34px">

                <div class="tab-head tab-head__icon-top-layout icon-top-layout">
                    <ul class="tabs md-margin-bottom-35-im xs-margin-bottom-40-im">
                        @foreach ($list as $key => $item)
                        <li class="tab-element @if ($key == 0) active @endif">
                          <a href="#{{ $item['category']->id }}" class="tab-link "><span class="biolife-icon icon-lemon"></span>{{ $item['category']->name }}</a>
                      </li>
                      @endforeach


                    </ul>
                </div>

                <div class="tab-content">
                    @foreach ($list as $key =>$item)
                    <div id="{{ $item['category']->id }}" class="tab-contain @if ($key == 0) active @endif">
                        <ul class="products-list biolife-carousel nav-center-02 nav-none-on-mobile eq-height-contain" data-slick='{"rows":2 ,"arrows":true,"dots":false,"infinite":true,"speed":400,"slidesMargin":10,"slidesToShow":4, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 4}},{"breakpoint":992, "settings":{ "slidesToShow": 3, "slidesMargin":25 }},{"breakpoint":768, "settings":{ "slidesToShow": 2, "slidesMargin":15}}]}'>
                            @foreach ($item['products'] as $product)
                            <li class="product-item">
                                <div class="contain-product layout-default">
                                    <div class="product-thumb">
                                        <a href="{{route('detail-Sanpham',['slug'=>$product->slug])}}" class="link-to-product">

                                            @if ( file_exists($product->image)))
                                            <img src=" {{asset($product->image)}}" alt="dd" width="270" height="270" class="product-thumnail">
                                            @else
                                            <img src="  {{ asset('upload/404.jpg' )}}" width="270" height="270" class="product-thumnail">
                                            @endif
                                        </a>
                                        {{-- <a class="lookup btn_call_quickview" href="#"><i class="biolife-icon icon-search"></i></a> --}}
                                    </div>
                                    <div class="info">
                                        <b class="categories">Vegetables</b>
                                        <h4 class="product-title"><a href="{{route('detail-Sanpham',['slug'=>$product->slug])}}" class="pr-name">{{ $product->name }}</a></h4>
                                        <div class="price ">
                                            <ins><span class="price-amount"><span class="currencySymbol"></span>{{ number_format($product->sale, 0) }} đ</span></ins>
                                            <del><span class="price-amount"><span class="currencySymbol"></span>{{ number_format($product->price, 0) }}</span></del>
                                        </div>
                                        <div class="slide-down-box">

                                            <div class="buttons">

                                                <form action="{{ route('cart.store') }}" method="POST" enctype="multipart/form-data">
                                                    @csrf

                                                <input type="hidden" value="{{ $product->id }}" name="id">
                                                <input type="hidden" value="{{ $product->name }}" name="name">
                                                <input type="hidden" value="{{ $product->sale }}" name="sale">
                                                <input type="hidden" value="{{ $product->image }}"  name="image">
                                                <input type="hidden" name="quantity" value="1">



                                                <button class="btn add-to-cart-btn" style="   margin: 0;
                                                    position: absolute;
                                                    top: 76%;
                                                    left: 50%;

                                                    transform: translate(-50%, -50%);"> </i>Thêm vào giỏ hàng</button>
                                            </form>


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            @endforeach


                        </ul>
                    </div>

                    @endforeach


                </div>
            </div>
        </div>
    </div>

    <!--Block 04: Banner Promotion 01 -->
    <div class="banner-promotion-01 xs-margin-top-50px sm-margin-top-11px">
        <div class="biolife-banner promotion biolife-banner__promotion">
            <div class="banner-contain">
                <div class="media background-biolife-banner__promotion">
                    <div class="img-moving position-1">
                        <img src="{{ asset('frontend')}}/assets/images/home-03/img-moving-pst-1.png" width="149" height="139" alt="img msv">
                    </div>
                    <div class="img-moving position-2">
                        <img src="{{ asset('frontend')}}/assets/images/home-03/img-moving-pst-2.png" width="185" height="265" alt="img msv">
                    </div>
                    <div class="img-moving position-3">
                        <img src="{{ asset('frontend')}}/assets/images/home-03/img-moving-pst-3-cut.png" width="384" height="151" alt="img msv">
                    </div>
                    <div class="img-moving position-4">
                        <img src="{{ asset('frontend')}}/assets/images/home-03/img-moving-pst-4.png" width="198" height="269" alt="img msv">
                    </div>
                </div>
                <div class="text-content">
                    <div class="container text-wrap">
                        <img src="{{ asset($setting->image)}}" height="250" alt="img msv">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--Block 05: Banner Promotion 02-->
    <div class="banner-promotion-02 z-index-20">
        <div class="biolife-banner promotion2 biolife-banner__promotion2">
            <div class="banner-contain">
                <div class="container">
                    <div class="media"></div>
                    <div class="text-content">
                        <b class="first-line">Món ngon mỗi ngày</b>
                        <span class="second-line"> <i> Ẩm thực - Thực phẩm</i></span>
                    </br>
                        {{--  <p class="third-line">Food Heaven Made Easy sounds like the name of an amazingly delicious food delivery service, but don't be fooled. The blog is actually a compilation of recipes, cooking videos, and nutrition tips.</p>  --}}
                        <p class="buttons">
                            <a href="{{ route('tintuc') }}" class="btn btn-bold">Xem tin tức</a>

                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--Block 06: Products-->
    <div class="container z-index-20 xs-margin-top-80px sm-margin-top-0">
        <div class="row">

            <div class="col-lg-4 sm-margin-top-80px ">
                <div class="row">
                    @foreach ($first_hot_product as $item)
                        <div class="col-lg-12 col-md-4 col-sm-4 col-xs-12">
                            <div class="biolife-banner style-05 biolife-banner__style-05">
                                <div class="banner-contain">
                                    <div class="media">

                                        @if ( file_exists($item->image))
                                        <img src=" {{asset($item->image)}}" alt="dd" width="197" height="230" class="product-thumnail">
                                        @else
                                        <img src="  {{ asset('upload/404.jpg' )}}" width="270" height="270" class="product-thumnail">
                                        @endif
                                    </div>
                                    <div class="text-content">
                                        <a href="{{route('detail-Sanpham',['slug'=>$item->slug])}}" >    <b class="text1">{{ $item->name }}</b></a>

                                        <b class="text-pr"><span>Giá: </span>{{ number_format($item->sale, 0) }}đ</b>

                                        <form action="{{ route('cart.store') }}" method="POST" enctype="multipart/form-data">
                                            @csrf

                                        <input type="hidden" value="{{ $item->id }}" name="id">
                                        <input type="hidden" value="{{ $item->name }}" name="name">
                                        <input type="hidden" value="{{ $item->sale }}" name="sale">
                                        <input type="hidden" value="{{ $item->image }}"  name="image">
                                        <input type="hidden" name="quantity" value="1">



                                        <button href="#" class="btn btn-shopnow">shop now</button>                                    </form>


                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach

                </div>
            </div>

            <div class="col-lg-8 sm-margin-top-84px">
                <div class="advance-product-box">
                    <div class="biolife-title-box bold-style biolife-title-box__bold-style mobile-tiny lg-margin-bottom-26px-im">
                        <h3 class="title">Hot Products</h3>
                    </div>
                    <ul class="products-list biolife-carousel nav-top-right nav-main-color nav-none-on-mobile eq-height-contain" data-slick='{"rows":2 ,"arrows":true,"dots":false,"infinite":true,"speed":400,"slidesMargin":0,"slidesToShow":3, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 4}},{"breakpoint":992, "settings":{ "slidesToShow": 3, "slidesMargin": 20}},{"breakpoint":768, "settings":{ "slidesToShow": 2, "slidesMargin": 15}}]}'>
                        @foreach ($hot_product as $item)


                        <li class="product-item">
                            <div class="contain-product layout-default">
                                <div class="product-thumb">
                                    <a href="{{route('detail-Sanpham',['slug'=>$item->slug])}}" class="link-to-product">

                                        @if ( file_exists($item->image))
                                        <img src=" {{asset($item->image)}}" alt="dd" width="270" height="270" class="product-thumnail">
                                        @else
                                        <img src="  {{ asset('upload/404.jpg' )}}" width="270" height="270" class="product-thumnail">
                                        @endif
                                    </a>
                                    {{-- <a class="lookup btn_call_quickview" href="#"><i class="biolife-icon icon-search"></i></a> --}}
                                </div>
                                <div class="info">
                                    <b class="categories">Vegetables</b>
                                    <h4 class="product-title"><a href="{{route('detail-Sanpham',['slug'=>$item->slug])}}" class="pr-name">{{$item->name }}</a></h4>
                                    <div class="price ">
                                        <ins><span class="price-amount"><span class="currencySymbol"></span>{{ number_format($item->sale, 0) }} đ</span></ins>
                                        <del><span class="price-amount"><span class="currencySymbol"></span>{{ number_format($item->price, 0) }}</span></del>

                                    </div>
                                    <div class="slide-down-box">

                                        <div class="buttons">

                                            <form action="{{ route('cart.store') }}" method="POST" enctype="multipart/form-data">
                                                @csrf

                                            <input type="hidden" value="{{ $item->id }}" name="id">
                                            <input type="hidden" value="{{ $item->name }}" name="name">
                                            <input type="hidden" value="{{ $item->sale }}" name="sale">
                                            <input type="hidden" value="{{ $item->image }}"  name="image">
                                            <input type="hidden" name="quantity" value="1">



                                            <button class="btn add-to-cart-btn"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i>Thêm vào giỏ hàng</button>
                                        </form>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        @endforeach
                    </ul>
                </div>
            </div>

        </div>
    </div>



    <!--Block 08: Blog Posts-->
    <div class="blog-posts sm-margin-top-93px sm-padding-top-72px xs-padding-bottom-50px">
        <div class="container">
            <div class="biolife-title-box">

                <h3 class="main-title">Tin tức</h3>
            </div>
            <ul class="biolife-carousel nav-center nav-none-on-mobile xs-margin-top-36px" data-slick='{"rows":1,"arrows":true,"dots":false,"infinite":false,"speed":400,"slidesMargin":30,"slidesToShow":3, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 3}},{"breakpoint":992, "settings":{ "slidesToShow": 2}},{"breakpoint":768, "settings":{ "slidesToShow": 2}},{"breakpoint":600, "settings":{ "slidesToShow": 1}}]}'>
                @foreach ($article as $key => $item )
                <li>
                    <div class="post-item effect-01 style-bottom-info layout-02 ">
                        <div class="thumbnail">

                            @if ( file_exists($item->image))
                            <img src=" {{asset($item->image)}}" alt="dd" width="370" height="270"  >
                            @else
                            <img src="  {{ asset('upload/404.jpg' )}}" width="370" height="270" >
                            @endif
                        </div>
                        <div class="post-content">
                            <h4 class="post-name"><a href="{{route('detail-Tintuc',['slug'=>$item->slug])}}" class="linktopost">{{Str::limit( $item->title,43)  }}</a></h4>
                            <div class="post-meta">


                            </div>
                            <p class="excerpt">{{Str::limit($item->summary,80)  }}</p>
                            <div class="group-buttons">
                                <a href="{{route('detail-Tintuc',['slug'=>$item->slug])}}" class="btn readmore">Xem thêm</a>
                            </div>
                        </div>
                    </div>
                </li>
        @endforeach
            </ul>
        </div>
    </div>

</div>

</div>
@endsection
