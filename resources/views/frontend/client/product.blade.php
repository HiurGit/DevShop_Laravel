@extends('frontend.layouts.main')
@section('home')

<div id="main-content" class="main-content">

<div class="hero-section hero-background">
        <h1 class="page-title">Sản phảm</h1>
    </div>

    <!--Navigation section-->
    <div class="container">
        <nav class="biolife-nav">

        </nav>
    </div>
    <div class="page-contain category-page left-sidebar">
        <div class="container">
            <div class="row">
                <!-- Main content -->
                <div id="main-content" class="main-content col-lg-9 col-md-8 col-sm-12 col-xs-12">

                    <div class="block-item recently-products-cat md-margin-bottom-39">
                        <ul class="products-list biolife-carousel nav-center-02 nav-none-on-mobile" data-slick='{"rows":1,"arrows":true,"dots":false,"infinite":false,"speed":400,"slidesMargin":0,"slidesToShow":5, "responsive":[{"breakpoint":1200, "settings":{ "slidesToShow": 3}},{"breakpoint":992, "settings":{ "slidesToShow": 3, "slidesMargin":30}},{"breakpoint":768, "settings":{ "slidesToShow": 2, "slidesMargin":10}}]}' >
                            @foreach ($products_last as $item )

                            <li class="product-item">
                                <div class="contain-product layout-02">
                                    <div class="product-thumb">
                                        <a href="{{route('detail-Sanpham',['slug'=>$item->slug])}}" class="link-to-product">
                                            @if ( file_exists($item->image))
                                            <img src="{{asset($item->image)}}" alt="dd" width="160" height="160" class="product-thumnail">
                                            @else
                                            <img src="  {{ asset('upload/404.jpg' )}}" width="270" height="270" class="product-thumnail">
                                            @endif

                                        </a>
                                    </div>
                                    <div class="info">
                                        <b class="categories">{{$item->cate}}</b>
                                        <h4 class="product-title"><a href="{{route('detail-Sanpham',['slug'=>$item->slug])}}" class="pr-name">{{ Str::limit($item->name, 15)}}</a></h4>
                                        <div class="price">
                                            <ins><span class="price-amount"><span class="currencySymbol"></span>{{ number_format($item->sale, 0) }} đ</span></ins>
                                            <del><span class="price-amount"><span class="currencySymbol"></span>{{ number_format($item->price, 0) }}</span></del>

                                        </div>
                                    </div>
                                </div>
                            </li>
                            @endforeach

                        </ul>
                    </div>

                    <div class="product-category grid-style">

                        <div id="top-functions-area" class="top-functions-area" >
                            <div class="flt-item to-left group-on-mobile">
                                <!-- <span class="flt-title">Refine</span>
                                <a href="#" class="icon-for-mobile">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </a> -->
                                <!-- <div class="wrap-selectors">
                                    <form action="#" name="frm-refine" method="get">
                                        <span class="title-for-mobile">Refine Products By</span>
                                        <div data-title="Price:" class="selector-item">
                                            <select name="price" class="selector">
                                                <option value="all">Price</option>
                                                <option value="class-1st">Less than 5$</option>
                                                <option value="class-2nd">$5-10$</option>
                                                <option value="class-3rd">$10-20$</option>
                                                <option value="class-4th">$20-45$</option>
                                                <option value="class-5th">$45-100$</option>
                                                <option value="class-6th">$100-150$</option>
                                                <option value="class-7th">More than 150$</option>
                                            </select>
                                        </div>
                                        <div data-title="Brand:" class="selector-item">
                                            <select name="brad" class="selector">
                                                <option value="all">Top brands</option>
                                                <option value="br2">Brand first</option>
                                                <option value="br3">Brand second</option>
                                                <option value="br4">Brand third</option>
                                                <option value="br5">Brand fourth</option>
                                                <option value="br6">Brand fiveth</option>
                                            </select>
                                        </div>
                                        <div data-title="Avalability:" class="selector-item">
                                            <select name="ability" class="selector">
                                                <option value="all">Availability</option>
                                                <option value="vl2">Availability 1</option>
                                                <option value="vl3">Availability 2</option>
                                                <option value="vl4">Availability 3</option>
                                                <option value="vl5">Availability 4</option>
                                                <option value="vl6">Availability 5</option>
                                            </select>
                                        </div>
                                        <p class="btn-for-mobile"><button type="submit" class="btn-submit">Go</button></p>
                                    </form>
                                </div> -->
                            </div>
                            <div class="flt-item to-right">
                                <span class="flt-title">Sắp xếp : </span>
                                <div class="wrap-selectors">
                                    <div class="selector-item orderby-selector">
                                        <form >


                                        <select name="orderby" class="orderby" id="orderby" aria-label="Shop order">
                                            <option value="{{ Request::url() }}?sort_by=none" >Mặc định</option>
                                            <option value="{{ Request::url() }}?sort_by=giam_dan"  >Giá giảm dần</option>
                                            <option value="{{ Request::url() }}?sort_by=tang_dan">Giá tăng dần</option>
                                            <option value="{{ Request::url() }}?sort_by=ten_az">Tên: A - Z</option>
                                            <option value="{{ Request::url() }}?sort_by=ten_za">Tên:  Z - A</option>
                                            <option value="{{ Request::url() }}?sort_by=moi_nhat">Mới nhất</option>
                                            <option value="{{ Request::url() }}?sort_by=cu_nhat">Cũ nhất</option>
                                        </select>
                                    </form>
                                    </div>
                                    <div class="selector-item viewmode-selector">
                                        <a href="category-grid-left-sidebar.html" class="viewmode grid-mode active"><i class="biolife-icon icon-grid"></i></a>
                                        <a href="category-list-left-sidebar.html" class="viewmode detail-mode"><i class="biolife-icon icon-list"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <ul class="products-list">
                          @foreach ($products as $item )

                          <li class="product-item col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                    <div class="contain-product layout-default">
                                        <div class="product-thumb">
                                            <a href="{{route('detail-Sanpham',['slug'=>$item->slug])}}" class="link-to-product">
                                            @if ( file_exists($item->image))
                                            <img src=" {{asset($item->image)}}" alt="dd" width="270" height="270" class="product-thumnail">
                                            @else
                                            <img src="  {{ asset('upload/404.jpg' )}}" width="270" height="270" class="product-thumnail">
                                            @endif

                                            </a>
                                        </div>
                                        <div class="info">
                                            <b class="categories">{{$item->cate}}</b>


                                            <h4 class="product-title"><a href="{{route('detail-Sanpham',['slug'=>$item->slug])}}" class="pr-name">{{ Str::limit($item->name, 25)}}</a></h4>
                                            <div class="price">
                                                <ins><span class="price-amount"><span class="currencySymbol"></span>{{ number_format($item->sale, 0) }} đ</span></ins>
                                                <del><span class="price-amount"><span class="currencySymbol"></span>{{ number_format($item->price, 0) }}</span></del>
                                            </div>

                                            <div class="slide-down-box">
                                                <p class="message">Tất cả các sản phẩm đều được lựa chọn kỹ lưỡng để đảm bảo an toàn vệ sinh thực phẩm.</p>
                                                <div class="buttons">



                                                    <form action="{{ route('cart.store') }}" method="POST" enctype="multipart/form-data">
                                                        @csrf

                                                    <input type="hidden" value="{{ $item->id }}" name="id">
                                                    <input type="hidden" value="{{ $item->name }}" name="name">
                                                    <input type="hidden" value="{{ $item->sale }}" name="sale">
                                                    <input type="hidden" value="{{ $item->image }}"  name="image">
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

                        <div class="biolife-panigations-block">
                            {!! $products->links('vendor.pagination.product-custom') !!}
                        </div>

                    </div>

                </div>
                <!-- Sidebar -->
                <aside id="sidebar" class="sidebar col-lg-3 col-md-4 col-sm-12 col-xs-12">
                    <div class="biolife-mobile-panels">
                        <span class="biolife-current-panel-title">Sidebar</span>
                        <a class="biolife-close-btn" href="#" data-object="open-mobile-filter">&times;</a>
                    </div>
                    <div class="sidebar-contain">
                        <div class="widget biolife-filter">
                            <h4 class="wgt-title">Danh Mục</h4>
                            <div class="wgt-content">
                                <ul class="cat-list">

                                    @foreach ($category as $item)
                                    @if ($item->parent_id == 0  )
                                    <li class="cat-list-item"><a href="{{route('category-product',['slug'=>$item->slug])}}" class="cat-link">{{$item->name}}</a></li>


                                        </li>
                                    @endif
                                @endforeach
                                </ul>
                            </div>
                        </div>

                        {{-- <div class="widget biolife-filter">
                            <h4 class="wgt-title">Shipping & Pickup</h4>
                            <div class="wgt-content">
                                <ul class="cat-list">
                                    <li class="cat-list-item"><a href="#" class="cat-link">Show all</a></li>
                                    <li class="cat-list-item"><a href="#" class="cat-link">2- Day shipping</a></li>
                                    <li class="cat-list-item"><a href="#" class="cat-link">Shop to Home</a></li>
                                    <li class="cat-list-item"><a href="#" class="cat-link">Free Pickup</a></li>
                                </ul>
                            </div>
                        </div> --}}

                        <div class="widget price-filter biolife-filter">

                            <p>
                            <h4 class="wgt-title">Giá sản phẩm</h4>
                            </p>
                            <form >
                                <div id="slider-range"></div>


                            <p>

                                <input type="text" id="amount" readonly style="border:0; color:#f6931f; font-weight:bold;">
                                <input type="hidden" name="start_price" id="start_price" value="0">
                                <input type="hidden" name="end_price" id="end_price" value="0" >

                            </p>
                            <button type="submit" class="btn btn-default">Lọc giá</button>

                        </form>
                            {{-- <div class="wgt-content">
                                <div class="frm-contain">
                                    <form action="#" name="price-filter" id="price-filter" method="get">
                                        <p class="f-item">

                                            <input class="input-number" type="number" id="pr-from" value="" name="price-from">
                                            <label for="pr-from"> - </label>
                                        </p>
                                        <p class="f-item">

                                            <input class="input-number" type="number" id="pr-to" value="" name="price-from">
                                            <label for="pr-from">đ</label>
                                        </p>
                                        <p class="f-item"><button class="btn-submit" type="submit">Go</button></p>
                                    </form>
                                </div> --}}
                                {{-- <ul class="check-list bold single">
                                    <li class="check-list-item"><a href="#" class="check-link">$0 - $5</a></li>
                                    <li class="check-list-item"><a href="#" class="check-link">$5 - $10</a></li>
                                    <li class="check-list-item"><a href="#" class="check-link">$15 - $20</a></li>
                                </ul> --}}
                            </div>
                        </div>

                        {{-- <div class="widget biolife-filter">
                            <h4 class="wgt-title">Brand</h4>
                            <div class="wgt-content">
                                <ul class="check-list multiple">
                                    <li class="check-list-item"><a href="#" class="check-link">Great Value Organic</a></li>
                                    <li class="check-list-item"><a href="#" class="check-link">Plum Organic</a></li>
                                    <li class="check-list-item"><a href="#" class="check-link">Shop to Home</a></li>
                                </ul>
                            </div>
                        </div> --}}

                        {{--  <div class="widget biolife-filter">
                            <h4 class="wgt-title">Color</h4>
                            <div class="wgt-content">
                                <ul class="color-list">
                                    <li class="color-item"><a href="#" class="c-link"><span class="symbol img-color"></span>Multi</a></li>
                                    <li class="color-item"><a href="#" class="c-link"><span class="symbol hex-code color-01"></span>Red</a></li>
                                    <li class="color-item"><a href="#" class="c-link"><span class="symbol hex-code color-02"></span>Orrange</a></li>
                                    <li class="color-item"><a href="#" class="c-link"><span class="symbol hex-code color-03"></span>Other</a></li>
                                </ul>
                            </div>
                        </div>  --}}

                        {{--  <div class="widget biolife-filter">
                            <h4 class="wgt-title">Popular Size</h4>
                            <div class="wgt-content">
                                <ul class="check-list bold multiple">
                                    <li class="check-list-item"><a href="#" class="check-link">8oz</a></li>
                                    <li class="check-list-item"><a href="#" class="check-link">15oz</a></li>
                                    <li class="check-list-item"><a href="#" class="check-link">6oz</a></li>
                                    <li class="check-list-item"><a href="#" class="check-link">30oz</a></li>
                                </ul>
                            </div>
                        </div>  --}}

                        {{-- <div class="widget biolife-filter">
                            <h4 class="wgt-title">Number of Pieces</h4>
                            <div class="wgt-content">
                                <div class="widget">



                                    <fieldset>

                                      <label for="radio-1">New York</label>
                                      <input type="radio" name="radio-1" id="radio-1">
                                      <label for="radio-2">Paris</label>
                                      <input type="radio" name="radio-1" id="radio-2">
                                      <label for="radio-3">London</label>
                                      <input type="radio" name="radio-1" id="radio-3">
                                    </fieldset>


                                  </div>

                                </ul>
                            </div>
                        </div> --}}

                        {{--  <div class="widget biolife-filter">
                            <h4 class="wgt-title">Recently Viewed</h4>
                            <div class="wgt-content">
                                <ul class="products">
                                    <li class="pr-item">
                                        <div class="contain-product style-widget">
                                            <div class="product-thumb">
                                                <a href="#" class="link-to-product" tabindex="0">
                                                    <img src="{{ asset('public/frontend')}}/assets/images/products/p-13.jpg" alt="dd" width="82" height="82" class="product-thumnail">
                                                </a>
                                            </div>
                                            <div class="info">
                                                <b class="categories">Fresh Fruit</b>
                                                <h4 class="product-title"><a href="#" class="pr-name" tabindex="0">National Fresh Fruit</a></h4>
                                                <div class="price">
                                                    <ins><span class="price-amount"><span class="currencySymbol">£</span>85.00</span></ins>
                                                    <del><span class="price-amount"><span class="currencySymbol">£</span>95.00</span></del>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                </ul>
                            </div>
                        </div>  --}}

                        {{-- <div class="widget biolife-filter">
                            <h4 class="wgt-title">Product Tags</h4>
                            <div class="wgt-content">
                                <ul class="tag-cloud">
                                    <li class="tag-item"><a href="#" class="tag-link">Fresh Fruit</a></li>
                                    <li class="tag-item"><a href="#" class="tag-link">Natural Food</a></li>
                                    <li class="tag-item"><a href="#" class="tag-link">Hot</a></li>
                                    <li class="tag-item"><a href="#" class="tag-link">Organics</a></li>
                                    <li class="tag-item"><a href="#" class="tag-link">Dried Organic</a></li>
                                </ul>
                            </div>
                        </div> --}}
                    </div>

                </aside>
            </div>
        </div>
    </div>
</div>
@endsection

@section('js')

    <script type="text/javascript">


        $(document).ready(function () {
            $( '#orderby' ).on( "change", function() {

            var url = $(this).val();
            if(url){
                window.location = url;
            }
            return false;
            });

        });


        $( function() {

      $( "#slider-range" ).slider({
        range: true,
        min: {{ $min_sale }},
        max: {{ $max_sale }},
        animate:"fast",
        step: 500,
        values: [ {{ $min_sale }}, {{ $max_sale }} ],
        slide: function( event, ui ) {
          $( "#amount" ).val(   ui.values[ 0 ] + " đ - " + ui.values[ 1 ] + " đ");
          $( "#start_price" ).val(   ui.values[ 0 ]  );
          $( "#end_price" ).val(   ui.values[ 1 ]  );

        }
      });
        $( "#amount" ).val(   $( "#slider-range" ).slider( "values", 0 ) + " đ - " + $( "#slider-range" ).slider( "values", 1 )+ " đ" );
        } );


        $( function() {
    $( "input" ).checkboxradio({
      icon: false
    });
  } );
    </script>

@endsection
