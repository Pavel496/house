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
	{{-- <div id="trailer" class="is_overlay">
		<video id="video" width="100%" height="auto" autoplay="autoplay" loop="loop" preload="auto">
			<source src="/img/house.mp4"></source>

		</video>
	</div> --}}
	{{-- <source src="book.webm" type="video/webm"></source> --}}
	<!-- WRAPPER -->
	<div class="wrapper">


		<!-- NAVBAR img-post-audio.png -->
		<nav class="navbar navbar-default " role="navigation" style="background-image:url(/img/Canvasb.jpg)">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="/">
						<img src="/img/3.jpg" class="img-responsive img-circle" alt="User Image">
					</a>
					{{-- <a href="/">
						<img src="/house/img/logo/key3.jpg" class="img-responsive" alt="Repute Blog - Responsive Bootstrap Blog Theme">
					</a> --}}
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav">
						<span class="sr-only">Toggle Navigation</span>
						<i class="fa fa-bars"></i>
					</button>
				</div>

				@include('posts.objnav')

				{{-- <p style="font-size:12px;color:black;text-align:center;">Здесь будут наши адрес, телефоны и т.д. (для оперативности)</p> --}}
			</div>

			<!-- SEARCH FORM -->
			{{-- <div class="big-searchbox">
				<form method="GET" action="{{ url('my-search') }}">
					<i class="fa fa-search icon-search"></i>
					<input type="text" class="form-control keyword" name="search" value="{{ old('search') }}" placeholder="Просто напишите, что хотите найти">
					<button type="button" class="btn-close-searchbox"><i class="fa fa-close"></i></button>
				</form>
			</div> --}}
			<!-- END SEARCH FORM -->
			
		</nav>
		<!-- END NAVBAR -->

		{{-- <br> --}}



    @yield('content')


		<!-- FOOTER -->
		<footer style="background-image:url(/img/Canvasb.jpg)">
			<div class="container-fluid">
				<div class="row">
					<!-- <div class="col-md-3">

						<h3 class="sr-only">ABOUT US</h3>
						<div class="repute-css-logo"><i class="fa fa-asterisk"></i> REPUTE BLOG</div>
						<p>Proactively aggregate B2B initiatives before extensive channels. Monotonectally extend interactive methods of empowerment through excellent applications. Rapidiously synergize visionary products with sticky technology.</p>
						<p>Professionally repurpose cutting-edge channels rather than plug-and-play meta-services. Rapidiously supply principle-centered collaboration and idea-sharing rather than focused catalysts.</p>

					</div> -->

					<!-- <div class="col-md-3">

						<h3 class="footer-heading">TAGS</h3>
						<div class="tagcloud">
							<a href="#">business</a> <a href="#">creative</a> <a href="#">startup</a> <a href="#">apps</a> <a href="#">marketing</a> <a href="#">ui</a>
							<a href="#">web design</a> <a href="#">interview</a> <a href="#">inspiration</a> <a href="#">social media</a> <a href="#">conference</a>
							<a href="#">mobile</a> <a href="#">networking</a> <a href="#">branding</a> <a href="#">ux</a> <a href="#">responsive</a>
							<a href="#">semantic</a> <a href="#">web app</a> <a href="#">research</a> <a href="#">innovation</a>
						</div>

					</div> -->
					<div class="col-md-3 col-md-offset-10">
						<h3 class="footer-heading">CONTACT US</h3>
						<address class="margin-bottom-30px">
							<ul class="list-unstyled">
								<li>1234 North Main Street
									<br/> New York, NY 222222</li>
								<li>Phone: (1800) 765 - 4321</li>
								<li>Email: email@yourdomain.com</li>
							</ul>
						</address>
						<!-- <h3 class="footer-heading">GET CONNECTED</h3>
						<ul class="list-inline social-icons">
							<li><a href="#" class="facebook-bg"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#" class="twitter-bg"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#" class="googleplus-bg"><i class="fa fa-google-plus"></i></a></li>
							<li><a href="#" class="rss-bg"><i class="fa fa-rss"></i></a></li>
						</ul> -->
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
