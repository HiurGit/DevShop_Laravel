
<div class="shopping-cart-container">
    <div class="row">
        <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
            <h3 class="box-title">Giỏ hàng của bạn</h3>
            <form class="shopping-cart-form" action="#" method="post">
                <table class="shop_table cart-form">
                    <thead>
                    <tr>
                        <th class="product-name">Tên sản phẩm</th>
                        <th class="product-price">Giá</th>
                        <th class="product-quantity">Số lượng</th>
                        <th class="product-subtotal">Tổng</th>
                        <th class="product-subtotal">Hành động</th>
                    </tr>
                    </thead>
                    <tbody>
                        @foreach ($cartItems as $key => $item)


                    <tr class="cart_item">
                        <td class="product-thumbnail" data-title="Product Name">
                            <a class="prd-thumb" href="#">

                                @if ( file_exists($item->attributes->image))
                                <figure> <img src="{{asset($item->attributes->image)}}" alt="dd" width="113" height="113" class="product-thumnail"> </figure>
                                @else
                                <figure>   <img src="  {{ asset('upload/404.jpg' )}}" width="113" height="113" class="product-thumnail"> </figure>
                                @endif
                            </a>
                            <a class="prd-name" href="#">{{ $item->name }}</a>

                        </td>
                        <td class="product-price" data-title="Price">
                            <div class="price price-contain">
                                <ins><span class="price-amount"><span class="currencySymbol"></span>{{ number_format($item->price, 0)}} đ</span></ins>

                            </div>
                        </td>
                        <td class="product-quantity" data-title="Quantity">
                            <div class="quantity-box type1">
                                <div class="qty-input">
                                    <input class="item-qty qty"  type="text" name="qty" value="{{ $item->quantity }}" data-id="{{  $key  }}" data-num="{{  $item->quantity  }}"  >
                                    {{-- <a   class="qty-btn btn-up update-qty" ><i class="fa fa-caret-up" aria-hidden="true"></i></a>
                                    <a data-id="{{  $key  }}" data-num="{{  $item->quantity  }}"  class="qty-btn btn-down update-qty"><i class="fa fa-caret-down" aria-hidden="true"></i></a> --}}
                                </div>
                            </div>


                        </td>
                        <td class="product-subtotal" data-title="Total">
                            <div class="price price-contain">
                                <ins><span class="price-amount"><span class="currencySymbol"></span>{{  number_format($item->price* $item->quantity, 0)}} đ</span></ins>

                            </div>
                        </td>
                        <td>

                                {{-- <button class="btn"><i class="fa fa-pencil"></i></button> --}}
                            {{-- <form action="{{ route('cart.remove') }}" method="POST">
                                @csrf --}}


                            <a   class="btn remove-to-cart" data-id="{{  $key  }}"  ><i class="fa fa-trash"></i></a>

                            {{-- </form> --}}



                        </td>
                    </tr>
                    @endforeach
                    <tr class="cart_item wrap-buttons">
                        <td class="wrap-btn-control" colspan="4">
                            <a href="/" class="btn back-to-shop">Quay lại</a>

                            <form action="{{ route('cart.clear') }}" method="POST" style="max-width: 160px;float: left;">
                                @csrf
                                <button class="btn btn-clear">Xóa tất cả</button>
                            </form>

                        </td>
                    </tr>
                    </tbody>
                </table>
            </form>
        </div>
        <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
            <div class="shpcart-subtotal-block">
                <div class="subtotal-line">
                    <b class="stt-name">Tổng tiền: <span class="sub">({{ Cart :: getTotalQuantity () }})</span></b>
                    <span class="stt-price">{{ number_format(Cart::getTotal(), 0) }} đ</span>
                </div>


                <div class="btn-checkout">
                    <a href="#" class="btn checkout">Thanh Toán</a>
                </div>

            </div>
        </div>
    </div>
</div>
