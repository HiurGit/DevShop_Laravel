@extends('backend.admin.dashboard')
@section('content')
<section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="box">
          <div class="box-header with-border">
            <h3 class="box-title">Danh Sách sản phẩm</h3>
          </div>
          <!-- /.box-header -->
          <div class="box-body">
            <table class="table table-bordered myTable" id="myTable">
            <thead>
              <tr>
                <th style="width: 10px">STT</th>
                <th>Hình ảnh</th>
                <th>Tên</th>
                <th>Số lượng</th>
                <th>Giá</th>
                <th>Giá sale</th>



                <th>Danh mục</th>
                <th>Cung cấp</th>


                <th>Vị trí</th>
                <th>SP Hot</th>
                <th>Trạng thái </th>
                <th>Hành động</th>
              </tr>
              </thead>
              <tbody>
              @foreach ($data as $key => $item )

              <tr class="item-{{ $item->id }}">
                <td>{{ $key + 1 }} </td>
                <td>
                    @if ( file_exists($item->image))
                     <img src="  {{ asset($item->image )}}" width="100" height="70" alt="">
                    @else
                    <img src="  {{ asset('upload/404.jpg' )}}" width="200" height="150" alt="">
                    @endif
                </td>

                <td>{{ $item->name }}</td>
                <td>{{ $item->stock }}</td>
                <td>{{ $item->price }}</td>
                <td>{{ $item->sale }}</td>




                <td>
                    {{ !empty($item->cate_name) ? $item->cate_name : '' }}
                </td>


                <td>     {{ !empty($item->vendor_name) ? $item->vendor_name : '' }}</td>




                <td>{{ $item->position }}</td>

                <td>
                    <span class="badge bg-red">
                        @if ($item->is_hot==1)
                        Hot
                        @elseif ($item->is_hot==0)
                        Không
                        @else
                        None
                        @endif
                    </span>
                </td>
                <td>
                    <span class="badge bg-blue">
                        @if ($item->is_active==1)
                        Hiện
                        @elseif ($item->is_active==0)
                        Ẩn
                        @else
                        None
                        @endif
                    </span>
                </td>
                <td style="width: 108px;">
                    <a href="{{ route('product.edit',['product' => $item->id])}}"  type="button" class="btn btn-info"><i class="fa fa-pencil-square-o" ></i></a>
                    <span href=""  data-id="{{ $item->id }}" type="button" class="btn btn-danger deleteItem"><i class="fa fa-trash-o"> </i></span>
            </td>
              </tr>
              @endforeach

              </tbody>


            </table>
          </div>
          <!-- /.box-body -->

        </div>
      </div>
    </div>



</section>

@endsection


@section('js')


    <script type="text/javascript">
        $( document ).ready(function() {

            $('.deleteItem').click(function () {
                var id = $(this).attr('data-id');
                Swal.fire({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                    if (result.isConfirmed) {
                        $.ajax({
                            url : 'product/'+id,
                            type: 'DELETE',
                            data: {},
                            success: function (res) {
                                if(res.status) {
                                    $('.item-'+id).remove();
                                }
                            },
                            error: function (res) {
                            }
                        });
                    }
                });
            });
        });
    </script>
    <script>
        $(document).ready( function () {
    $('#myTable').DataTable();
} );
    </script>
@endsection
