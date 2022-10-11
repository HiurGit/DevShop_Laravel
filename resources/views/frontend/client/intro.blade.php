@extends('frontend.layouts.main')
@section('home')

<div id="main-content" class="main-content">

    <div class="hero-section hero-background style-02">
        <h1 class="page-title">Giới thiệu   </h1>

    </div>
<div class="welcome-us-block">
    <div class="container">
        <h4 class="title">{{$setting->company}}</h4>
        <div class="text-wraper">
<br>
        <p class="text-info">{!! $setting->introduce !!}</p>
        </div>
    </div>
</div>

<div class="why-choose-us-block">
    <div class="container">
        <h4 class="box-title">CÁC THÔNG TIN KHÁC</h4>
        <b class="subtitle">{{$setting->company}}</b>
        <div class="showcase">
            <div class="sc-child sc-left-position">
                <ul class="sc-list">
                    <li>
                        <div class="sc-element color-01">
                            <span class="biolife-icon icon-fresh-drink"></span>
                            <div class="txt-content">
                                <span class="number">01</span>
                                <b class="title">Địa chỉ 1</b>
                                <p class="desc">{{$setting->address}}</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="sc-element color-02">
                            <span class="biolife-icon icon-healthy-about"></span>
                            <div class="txt-content">
                                <span class="number">02</span>
                                <b class="title">Địa chỉ 2</b>
                                <p class="desc">{{$setting->address2}}</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="sc-element color-03">
                            <span class="biolife-icon icon-green-safety"></span>
                            <div class="txt-content">
                                <span class="number">03</span>
                                <b class="title">Địa thoại</b>
                                <p class="desc">{{$setting->phone}}</p>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="sc-child sc-center-position">
                <figure><img src="{{$setting->image}}" alt="" width="622" height="656"></figure>
            </div>
            <div class="sc-child sc-right-position">
                <ul class="sc-list">
                    <li>
                        <div class="sc-element color-04">
                            <span class="biolife-icon icon-capacity-about"></span>
                            <div class="txt-content">
                                <span class="number">04</span>
                                <b class="title">Hotline</b>
                                <p class="desc">{{$setting->hotline}}</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="sc-element color-05">
                            <span class="biolife-icon icon-arteries-about"></span>
                            <div class="txt-content">
                                <span class="number">05</span>
                                <b class="title">Facebook</b>
                                <p class="desc">{{$setting->facebook}}</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="sc-element color-06">
                            <span class="biolife-icon icon-title"></span>
                            <div class="txt-content">
                                <span class="number">06</span>
                                <b class="title">Email</b>
                                <p class="desc">{{$setting->email}}</p>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>


</div>

</div>
@endsection
