@extends('frontend.layouts.main')
@section('home')
<div class="hero-section hero-background">
    <h1 class="page-title">Giỏ hàng</h1>
</div>
<div class="page-contain shopping-cart"  >

    <!-- Main content -->
    <div id="main-content" class="main-content">
        <div class="container">

            <!--Top banner-->
            @if ($message = Session::get('success'))
            <div class="p-4 mb-3 bg-green-400 rounded">
                <p class="text-green-800">{{ $message }}</p>
            </div>
        @endif
            <!--Cart Table-->
<div id="my-cart">
@include('frontend.client.cart_sub');
</div>

            <!--Related Product-->


        </div>
    </div>
</div>
@endsection


@section('js')
<script type="text/javascript">
    $(function () {
        // xóa sản phẩm khỏi giỏ hàng
        $(document).on("click", '.remove-to-cart', function () {
            var result = confirm("Bạn có chắc chắn muốn xóa sản phẩm này khỏi giỏ hàng ?");
            if (result) {
                var product_id = $(this).attr('data-id');
                $.ajax({
                    url: '/xoa-sp-gio-hang/' ,
                    type: 'get',
                    data: {
                        id : product_id
                    }, // dữ liệu truyền sang nếu có
                    dataType: "HTML", // kiểu dữ liệu trả về
                    success: function (response) {
                        $('#my-cart').html(response);
                    },
                    error: function (e) { // lỗi nếu có
                        console.log(e.message);
                    }
                });
            }
        });

    })
</script>
<script type="text/javascript">
    $(function () {
// cập nhật số lượng giỏ hàng
$(document).on("change", '.item-qty', function () {
                var product_id = $(this).attr('data-id');
                var before_qty = $(this).attr('data-num'); // số lượng trước khi thay đổi
                var qty = $(this).val();
                if (qty <= 0) {
                    alert('Nhập số lượng phải lớn hơn 0');
                    $(this).val(before_qty); // set lại giá trị
                    return false;
                }
                $.ajax({
                    url: '/cap-nhat-gio-hang/',
                    type: 'get',
                    data: {
                        id : product_id,
                        qty : qty
                    }, // dữ liệu truyền sang nếu có

                    dataType: "HTML", // kiểu dữ liệu trả về
                    success: function (response) {
                        $('#my-cart').html(response);
                    },
                    error: function (e) { // lỗi nếu có
                        console.log(e.message);
                    }
                });
            });

    })
</script>


@endsection
