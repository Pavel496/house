<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>{{config('app.name')}}</title>
	<link rel="stylesheet" href="/css/normalize.css">
	<link rel="stylesheet" href="/css/framework.css">
	<link rel="stylesheet" href="/css/style.css">
	<link rel="stylesheet" href="/css/responsive.css">
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
	<script src="https://unpkg.com/masonry-layout@4/dist/masonry.pkgd.min.js"></script>
	@stack('styles')
	{{-- @stack('scripts') --}}
</head>
<body style="background-image:url(/img/Leather.jpg)">
	{{-- <div class="preload"></div> --}}
	<header style="background-image:url(/img/Canvas.jpg)">
		<div class="container container-flex">

<a href="/"><figure class="logo"><img src="/img/key1.png" alt=""></figure></a>
<p style="font-size:58px;color:maroon">Country House Realty</p>

						<nav class="custom-wrapper" id="menu">
							{{-- <div class="pure-menu"></div> --}}
							<ul class="container-flex list-unstyled">
								<li><a href="/" class="text-uppercase">Home</a></li>
								<li><a href="about.html" class="text-uppercase">About</a></li>
								<li><a href="archive.html" class="text-uppercase">Archive</a></li>
								<li><a href="contact.html" class="text-uppercase">Contact</a></li>
							</ul>
						</nav>
		</div>
	</header>
<br><br>

@yield('content')

	<section class="footer">
		<footer>
			<div class="container">
				<figure class="logo"><img src="/img/key1.png" alt=""></figure>

				<div class="divider-2"></div>

				<p>© 2018 - Country House Realty. All Rights Reserved. Designed & Developed by <span class="c-white">Country House Realty</span></p>

			</div>
		</footer>
	</section>

	@stack('scripts')

  </body>
  </html>
