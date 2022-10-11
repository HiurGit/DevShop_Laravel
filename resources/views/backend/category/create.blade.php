@extends('backend.admin.dashboard')
@section('content')
<section class="content-header">

    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Forms</a></li>
        <li class="active">General Elements</li>
    </ol>
</section>
<section class="content">
        <div class="row">
            <div class="col-md-6">
                @if ($errors->any())
                    <div class="alert alert-danger alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                        <h4><i class="icon fa fa-warning"></i> Lỗi !</h4>
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
            </div>
        </div>
<section class="content">
    <div class="row">
        <!-- left column -->
        <div class="col-md-6">
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Thêm mới danh mục</h3>
                </div>
                <!-- /.box-header -->
                <!-- form start -->
                <form role="form" method="post" action="{{ route('category.store') }}" enctype="multipart/form-data">
                    @csrf

                    <div class="box-body">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Tên danh mục</label>
                            <input  id="name" name="name" type="text" class="form-control" placeholder="">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputFile">Chọn ảnh</label>
                            <input type="file" name="image" id="image">
                        </div>

                        <div class="form-group">
                            <label>Danh mục cha</label>
                            <select class="form-control" name="parent_id" id="parent_id">
                                <option value="	_blank">Chọn</option>
                                @php
                                        function showCategories($categories, $parent_id = 0, $char = '') {
                                            foreach ($categories as $key => $item) {
                                                if ($item['parent_id'] == $parent_id)
                                                {
                                                    echo '<option value="'.$item['id'].'">';
                                                        echo $char . $item['name'];
                                                    echo '</option>';
                                                    unset($categories[$key]);
                                                    showCategories($categories, $item['id'], $char.'|---');
                                                }
                                            }
                                        }
                                        showCategories($data);
                                    @endphp


                            </select>
                        </div>

                        <div class="form-group">
                            <label for="exampleInputPassword1">Vị trí</label>
                            <input min="0" type="number" class="form-control" id="position" name="position" placeholder="">
                        </div>
                        <div class="checkbox">
                            <label>
                                <input value="1" type="checkbox" name="is_active" id="is_active">  Hiển thị
                            </label>
                        </div>
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer">
                        <button type="submit" class="btn btn-primary btnCreate">Thêm</button>
                    </div>
                </form>
            </div>
            <!-- /.box -->
        </div>
        <!--/.col (left) -->
    </div>
    <!-- /.row -->
</section>
<!-- /.content -->
@endsection



@section('js')

    <script type="text/javascript">

        $( document ).ready(function() {


            $('.btnCreate').click(function () {
                if ($('#name').val() === '') {
                    $('#name').notify('Bạn nhập chưa nhập tiêu đề','error');
                    document.getElementById('name').scrollIntoView();
                    return false;
                }

            });
        });
    </script>
@endsection
