<!DOCTYPE html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Biolife - Organic Food</title>
    <link href="https://fonts.googleapis.com/css?family=Cairo:400,600,700&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:600&amp;display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400i,700i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu&amp;display=swap" rel="stylesheet">
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('/frontend')}}/assets/images/favicon.png"/>
    <link rel="stylesheet" type="text/css" href="{{ asset('/frontend')}}/assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('/frontend')}}/assets/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('/frontend')}}/assets/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('/frontend')}}/assets/css/nice-select.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('/frontend')}}/assets/css/slick.min.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('/frontend')}}/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="{{ asset('/frontend')}}/assets/css/main-color.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/notify/0.4.2/styles/metro/notify-metro.css" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">


    <style>
        .notifyjs-bootstrap-error {
            font-size: 13px;
            padding: 17px 30px !important;
        }
    </style>
</head>
<body class="biolife-body">

    <!-- Preloader -->

    @include('frontend.layouts.preloader')
    <!-- HEADER -->
    @include('frontend.layouts.header')

    <!-- Page Contain -->

    @yield('home')
    <!-- FOOTER -->

    @include('frontend.layouts.footer')

    <!--Quickview Popup-->
    @include('frontend.layouts.quickview_popup')

    <!-- Scroll Top Button -->
    <a class="btn-scroll-top"><i class="biolife-icon icon-left-arrow"></i></a>

    <script src="{{ asset('/frontend')}}/assets/js/jquery-3.4.1.min.js"></script>
    <script src="{{ asset('/frontend')}}/assets/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

    <script src="{{ asset('/frontend')}}/assets/js/jquery.countdown.min.js"></script>
    <script src="{{ asset('/frontend')}}/assets/js/jquery.nice-select.min.js"></script>
    <script src="{{ asset('/frontend')}}/assets/js/jquery.nicescroll.min.js"></script>
    <script src="{{ asset('/frontend')}}/assets/js/slick.min.js"></script>
    <script src="{{ asset('/frontend')}}/assets/js/biolife.framework.js"></script>
    <script src="{{ asset('/frontend')}}/assets/js/functions.js"></script>
    <script src="{{ asset('/frontend')}}/assets/js/notify.min.js"></script>


  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>


    @yield('js')
</body>

</html>
