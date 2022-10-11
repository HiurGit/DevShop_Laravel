@extends('frontend.layouts.main')
@section('home')

<div id="main-content" class="main-content">

<div class="hero-section hero-background style-02">
        <h1 class="page-title">Tin tức</h1>
        <nav class="biolife-nav">

    </div>
    <div class="page-contain blog-page">
        <div class="container">
            <!-- Main content -->
            <div id="main-content" class="main-content">

                <div class="row">

                    <!--articles block-->
                    <ul class="posts-list main-post-list">
                    @foreach ($article as $key => $item )
                        <li class="post-elem col-lg-4 col-md-4 col-sm-6 col-xs-12">
                            <div class="post-item effect-04 style-bottom-info">
                                <div class="thumbnail">
                                    <a href="#" class="link-to-post"><img src="{{asset($item->image)}}" width="370" height="270" alt=""></a>
                                </div>
                                <div class="post-content">
                                    <h4 class="post-name"><a href="{{route('detail-Tintuc',['slug'=>$item->slug])}}" class="linktopost">{{$item->title}}</a></h4>
                                    <p class="post-archive"><b class="post-cat"></b><span class="post-date"> Thời gian đăng bài: {{date('d/m/Y',strtotime($item->created_at))}}</span> </p>
                                    <p class="excerpt">{{ Str::limit($item->summary, 50)}}</p>

                                    <div class="group-buttons">
                                    <a href="{{route('detail-Tintuc',['slug'=>$item->slug])}}" class="btn readmore">Xem thêm</a>
                                       </div>
                                </div>
                            </div>
                        </li>
                    @endforeach


                    </ul>

                </div>

                <!--Panigation Block-->
                <div class="biolife-panigations-block ">
                    <ul class="panigation-contain">
                        <li><span class="current-page">    {{ $article->links() }}</span></li>

                    </ul>
                </div>

            </div>
        </div>
    </div>


</div>
@endsection
