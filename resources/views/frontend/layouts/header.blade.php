<header id="header" class="header-area style-01 layout-03">
    <div class="header-top bg-main hidden-xs">
        <div class="container">
            <div class="top-bar left">
                <ul class="horizontal-menu">
                    <li><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i>{{ $setting->email }}</a></li>

                </ul>
            </div>
            <div class="top-bar right">
                <ul class="social-list">



                </ul>
                <ul class="horizontal-menu">
                    {{--  <li class="horz-menu-item currency">
                        <select name="currency">
                            <option value="eur">€ EUR (Euro)</option>
                            <option value="usd" selected>$ USD (Dollar)</option>
                            <option value="usd">£ GBP (Pound)</option>
                            <option value="usd">¥ JPY (Yen)</option>
                        </select>
                    </li>
                    <li class="horz-menu-item lang">
                        <select name="language">
                            <option value="fr">French (EUR)</option>
                            <option value="en" selected>English (USD)</option>
                            <option value="ger">Germany (GBP)</option>
                            <option value="jp">Japan (JPY)</option>
                        </select>
                    </li>  --}}
                    {{--  <li><a href="login.html" class="login-link"><i
                                class="biolife-icon icon-login"></i>Login/Register</a></li>  --}}
                </ul>
            </div>
        </div>
    </div>
    <div class="header-middle biolife-sticky-object ">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-2 col-md-6 col-xs-6">
                    <a href="{{ route('/') }}" class="biolife-logo"><img src="{{ asset($setting->image) }}"
                            alt="biolife logo" width="135" height="34"></a>
                </div>
                <div class="col-lg-6 col-md-7 hidden-sm hidden-xs">
                    <div class="primary-menu">
                        <ul class="menu biolife-menu clone-main-menu clone-primary-menu" id="primary-menu"
                            data-menuname="main menu">
                            <li class="menu-item"><a href="{{ route('/') }}">Trang Chủ</a></li>

                            <li class="menu-item ">
                                <a href="{{ route('products') }}" class="menu-name" data-title="Products">Sản Phẩm</a>

                            </li>
                            <li class="menu-item">
                                <a href="{{ route('tintuc') }}" class="menu-name" data-title="Demo">Tin Tức</a>

                            </li>
                            <li class="menu-item">
                                <a href="{{ route('intro') }}" class="menu-name" data-title="Blog">Thông Tin</a>

                            </li>
                            <li class="menu-item"><a href="{{ route('contact') }}">Liên Hệ</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-md-6 col-xs-6">
                    <div class="biolife-cart-info">
                        <div class="mobile-search">
                            <a href="javascript:void(0)" class="open-searchbox"><i
                                    class="biolife-icon icon-search"></i></a>
                            <div class="mobile-search-content">
                                <form action="#" class="form-search" name="mobile-seacrh" method="get">
                                    <a href="#" class="btn-close"><span
                                            class="biolife-icon icon-close-menu"></span></a>
                                    <input type="text" name="s" class="input-text" value=""
                                        placeholder="Search here...">

                                    <button type="submit" class="btn-submit">go</button>
                                </form>
                            </div>
                        </div>


                        <div class="minicart-block">
                            <div class="minicart-contain">
                                <a href="javascript:void(0)" class="link-to">
                                    <span class="icon-qty-combine">
                                        <i class="icon-cart-mini biolife-icon"></i>
                                        <span class="qty">{{ Cart :: getTotalQuantity () }}</span>
                                    </span>
                                    <span class="title">Giỏ hàng : </span>
                                    <span class="sub-total">{{ number_format(Cart::getTotal(), 0) }} đ</span>
                                </a>
                                <div class="cart-content">
                                    <div class="cart-inner">
                                        <ul class="products">
                                            @foreach ($cartItems as $item)
                                            <li>
                                                <div class="minicart-item">
                                                    <div class="thumb">

                                                            @if ( file_exists($item->attributes->image))
                                                            <figure> <img src="{{asset($item->attributes->image)}}" alt="dd" width="90" height="90" class="product-thumnail"> </figure>
                                                            @else
                                                            <figure>   <img src="  {{ asset('upload/404.jpg' )}}" width="90  " height="90" class="product-thumnail"> </figure>
                                                            @endif

                                                    </div>
                                                    <div class="left-info">
                                                        <div class="product-title"><a href="#"
                                                                class="product-name">{{ $item->name }}</a></div>
                                                        <div class="price">
                                                            <ins><span class="price-amount"><span
                                                                        class="currencySymbol"></span>{{ number_format($item->price, 0)}} đ </span></ins>

                                                        </div>
                                                        <div class="qty">
                                                            <label for="cart[id125][qty]">Qty: {{ $item->quantity }}</label>

                                                        </div>
                                                    </div>
                                                    <div class="action">

                                                        <button   class="btn" type="submit"><i class="fa fa-pencil"></i></button>
                                                                <form action="{{ route('cart.remove') }}" method="POST">
                                                                    @csrf
                                                                    <input type="hidden" value="{{ $item->id }}" name="id">

                                                                 <button   class="btn" type="submit"><i class="fa fa-trash"></i></button>
                                                                </form>

                                                    </div>
                                                </div>
                                            </li>
                                            @endforeach

                                        </ul>
                                        <p class="btn-control">
                                            <a href="{{ route('cart.list') }}" class="btn view-cart">Xem giỏ hàng</a>

                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mobile-menu-toggle">
                            <a class="btn-toggle" data-object="open-mobile-menu" href="javascript:void(0)">
                                <span></span>
                                <span></span>
                                <span></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-bottom hidden-sm hidden-xs">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4">
                    <div class="vertical-menu vertical-category-block">
                        <div class="block-title">
                            <span class="menu-icon">
                                <span class="line-1"></span>
                                <span class="line-2"></span>
                                <span class="line-3"></span>
                            </span>
                            <span class="menu-title">Danh Mục Sản Phẩm</span>
                            <span class="angle" data-tgleclass="fa fa-caret-down"><i class="fa fa-caret-up"
                                    aria-hidden="true"></i></span>
                        </div>
                        <div class="wrap-menu">
                            <ul class="menu clone-main-menu">
                                @foreach ($category as $item)
                                    @if ($item->parent_id == 0  )
                                        <li class="menu-item menu-item-has-children has-megamenu">
                                            <a href=" {{route('category-product',['slug'=>$item->slug])}}" class="menu-name" data-title="Fruit & Nut Gifts"><i
                                                    class="biolife-icon icon-fruits"></i>{{$item->name}}</a>

                                        </li>
                                    @endif
                                @endforeach

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-8 padding-top-2px">
                    <div class="header-search-bar layout-01">
                        <form action="{{ route('search') }}" method="get">
                            <input type="text" name="kwd" class="input-text" value=""
                            placeholder="Nhập từ khóa tìm kiếm..">

                            <button type="submit" class="btn-submit"><i
                                    class="biolife-icon icon-search"></i></button>
                        </form>
                    </div>
                    <div class="live-info">
                        <p class="telephone"><i class="fa fa-phone" aria-hidden="true"></i><b
                                class="phone-number">{{ $setting->phone }}</b></p>

                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
