<!DOCTYPE html>
<html lang="en">

<head>
	<title>Country House Realty</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Responsive Multipurpose Bootstrap Theme">
	<meta name="author" content="The Develovers">
	<!-- CSS -->
	<link href="/house/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="/house/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="/house/css/blog-home-v1.css" rel="stylesheet" type="text/css">
	<link href="/house/css/my-custom-styles.css" rel="stylesheet" type="text/css">


	<link rel="stylesheet" href="/css/normalize.css">
	<link rel="stylesheet" href="/css/framework.css">
	<link rel="stylesheet" href="/css/style.css">
	<link rel="stylesheet" href="/css/responsive.css">
	{{-- <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet"> --}}
	<script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>

	<!-- IE 9 Fallback-->
	<!--[if IE 9]>
		<link href="/house/css/ie.css.html" rel="stylesheet">
	<![endif]-->
	<!-- GOOGLE FONTS -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400italic,400,600,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,300italic,400italic,700,400,300' rel='stylesheet' type='text/css'>
	<!-- FAVICONS -->
	{{-- <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/house/ico/repute144x144.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="/house/ico/repute114x114.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="/house/ico/repute72x72.png">
	<link rel="apple-touch-icon-precomposed" href="/house/ico/repute57x57.png">
	<link rel="shortcut icon" href="/house/ico/favicon.png"> --}}

  @stack('styles')

</head>

<body id="top">
	<div id="trailer" class="is_overlay">
		<video id="video" width="100%" height="auto" autoplay="autoplay" loop="loop" preload="auto">
			<source src="/img/house.mp4"></source>
			{{-- <source src="book.webm" type="video/webm"></source> --}}
		</video>
	</div>
	<!-- WRAPPER -->
	<div class="wrapper">


		<!-- NAVBAR img-post-audio.png -->
		<nav class="navbar navbar-default " role="navigation" style="background-image:url(/img/Canvasb.jpg)">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="/">
						<img src="/img/3.jpg" class="img-responsive img-circle" alt="User Image">

					</a>
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav">
						<span class="sr-only">Toggle Navigation</span>
						<i class="fa fa-bars"></i>
					</button>
				</div>

				@include('posts.glavnav')

				{{-- <p style="font-size:12px;color:black;text-align:center;">Здесь будут наши адрес, телефоны и т.д. (для оперативности)</p> --}}
			</div>
			<!-- SEARCH FORM -->
			<div class="big-searchbox">
				<form method="GET" action="{{ url('my-search') }}">
					<i class="fa fa-search icon-search"></i>
					<input type="text" class="form-control keyword" name="search" value="{{ old('search') }}" placeholder="Просто напишите, что хотите найти">
					<button type="button" class="btn-close-searchbox"><i class="fa fa-close"></i></button>
				</form>
			</div>
			<!-- END SEARCH FORM -->
		</nav>
		<!-- END NAVBAR -->

		{{-- <br> --}}



    @yield('content')


		<!-- FOOTER -->
		<footer style="background-image:url(/img/Canvasb.jpg)">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-5 col-md-offset-8">
						<h3 class="footer-heading" style="color:PaleGoldenRod">О нас</h3>

						{{-- <div class="pull-left">
							<img src="/img/3.jpg" class="img-circle" alt="User Image">
						</div> --}}

						{{-- <img src="/img/3.jpg" class="user-image" alt="User Image"> --}}
						<!-- hidden-xs hides the username on small devices so only the image appears. -->
						{{-- <span class="hidden-xs"></span> --}}
						<address class="margin-bottom-30px">
							<ul class="list-unstyled" style="color:orange">
								<li>Наше агентство недвижимости предоставляет услуги
                  <br/> по покупке, продаже, сдаче в аренду недвижимости
									<br/> в Москве и ближнем Подмосковье,
									<br/> в том числе осуществляет юридическое сопровождение сделок.</li>
								<li>Более 15-ти лет на рынке,  нас рекомендуют друзьям. </li>
								<li>Основными клиентами являются физические лица,</li>
                <li> но также оказываем услуги и юридическим лицам.</li>
								<li>Наше кредо - грамотная работа и  конфиденциальность,</li>
                <li>гибкость  к внешним условиям и их изменению.</li>
								<li>Будем рады сотрудничеству!</li>
							</ul>
						</address>
					</div>
				</div>
				<!-- COPYRIGHT -->
				<div class="copyright">
					&copy; 2018 Country House Realty. All Rights Reserved.
				</div>
				<!-- END COPYRIGHT -->
			</div>
		</footer>
		<!-- END FOOTER -->
		<div class="back-to-top" style="display: block;">
			<a href="#top"><i class="fa fa-angle-up"></i></a>
		</div>
	</div>
	<!-- JAVASCRIPT -->
	<script src="/house/js/jquery-2.1.1.min.js"></script>
	<script src="/house/js/bootstrap.min.js"></script>
	<script src="/house/js/plugins/slick/slick.min.js"></script>
	<script src="/house/js/plugins/scrollto/jquery.localscroll-1.2.7-min.js"></script>
	<script src="/house/js/plugins/scrollto/jquery.scrollTo-1.4.3.1-min.js"></script>
	<script src="/house/js/plugins/easing/jquery.easing.min.js"></script>
	<script src="/house/js/plugins/autohidingnavbar/jquery.bootstrap-autohidingnavbar.min.js"></script>
	<script src="/house/js/repute-blog-scripts.js"></script>
  @stack('scripts')

</body>

</html>
