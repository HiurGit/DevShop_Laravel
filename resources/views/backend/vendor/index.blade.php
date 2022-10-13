@extends('backend.admin.dashboard')
@section('content')
<section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="box">
          <div class="box-header with-border">
            <h3 class="box-title">Danh Sách nhà cung cấp</h3>
          </div>
          <!-- /.box-header -->
          <div class="box-body">
            <table class="table table-bordered">
              <tr>
                <th style="width: 10px">STT</th>
                <th>Hình ảnh</th>
                <th>Tên</th>
                <th>Website</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Website</th>
                <th>address</th>
                <th>Trạng thái </th>

                <th>Hành động</th>
              </tr>
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
                <td>{{ $item->website }}</td>
                <td>{{ $item->email }}</td>
                <td>{{ $item->phone }}</td>
                <td>{{ $item->address }}</td>
                <td>{{ $item->position }}</td>
                <td >
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
                    <a href="{{ route('vendor.edit',['vendor' => $item->id])}}"  type="button" class="btn btn-info"><i class="fa fa-pencil-square-o" ></i></a>
                    <span href=""  data-id="{{ $item->id }}" type="button" class="btn btn-danger deleteItem"><i class="fa fa-trash-o"></i></span>
            </td>
              </tr>
              @endforeach




            </table>
          </div>
          <!-- /.box-body -->
          <div class="box-footer clearfix">
            {!! $data->links('vendor.pagination.admin-custom') !!}
          </div>
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
                    title: 'Bạn có muốn xóa?',
                    text: "Dữ liệu nhà cung cấp không ?",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'OK'
                }).then((result) => {
                    if (result.isConfirmed) {
                        $.ajax({
                            url : 'vendor/'+id,
                            type: 'DELETE',
                            data: {},
                            success: function (res) {
                                if(res.status) {
                                    $('.item-'+id).remove();

                                    Swal.fire(
                                        'Thông báo !',
                                        'Xóa thành công',
                                        'success'
                                    )

                                } else {
                                    Swal.fire(
                                        'Thông báo !',
                                        res.msg,
                                        'error'
                                    )
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
@endsection
