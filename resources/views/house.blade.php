@extends('layouth')


@section('content')
		<!-- MAIN CONTENT -->
		<div class="main-content">
			<div class="container-fluid">
				<!-- FEATURED POSTS -->
				<!-- <section class="featured-post-tiles clearfix">
					<div class="featured-post featured-one">
						<a href="#"><img src="house/img/blog/blog-home-img1.png" class="img-responsive" alt="Featured Post"></a>
						<h3 class="post-title"><a href="#">Progressively cultivate user-centric interfaces</a></h3>
						<span class="post-category">CREATIVE</span>
					</div>
					<div class="featured-post featured-two">
						<a href="#"><img src="house/img/blog/blog-home-img2.png" class="img-responsive" alt="Featured News"></a>
						<h3 class="post-title"><a href="#">Synergistically drive future-proof process improvements via cost effective partnerships</a></h3>
						<span class="post-category">APPS</span>
					</div>
					<div class="featured-post featured-three">
						<a href="#"><img src="house/img/blog/blog-home-img3.png" class="img-responsive" alt="Featured News"></a>
						<h3 class="post-title"><a href="#">Credibly morph out-of-the-box content vis-a-vis interactive synergy</a></h3>
						<span class="post-category">STORY</span>
					</div>
				</section> -->
				<!-- END FEATURED POSTS -->
				<!-- LATEST -->
				<section>
					<div class="heading clearfix">
						<h2 class="section-heading pull-left">НОВОЕ</h2>
						<a href="#" class="see-all-posts pull-right">См. все объявления раздела НОВОЕ <i class="fa fa-long-arrow-right"></i></a>
					</div>
					<!-- posts carousel -->
					<div class="posts-carousel">
						@foreach($posts as $post)
						<div class="post-entry">
							{{-- @include('posts.photo') --}}
							<a href="{{ route('posts.show', $post) }}"><img src="{{ $post->photos->first()->url }}" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">{{ $post->title }}</a></h3>
								{{-- @include('posts.tabla') --}}
								<p class="post-excerpt">{{ $post->excerpt }}</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> {{ $post->published_at->format('M d, Y') }}</span>
								<a href="{{ route('posts.show', $post) }}" class="read-more pull-right">Подробнее...</a>
							</div>
						</div>
						@endforeach
					</div>
					<!-- end posts carousel -->
				</section>
				<!-- END LATEST -->
				<!-- CREATIVE -->
				<section>
					<div class="heading clearfix">
						<h2 class="section-heading pull-left">ПРОДАЖА</h2>
						<a href="#" class="see-all-posts pull-right">См. все объявления раздела ПРОДАЖА <i class="fa fa-long-arrow-right"></i></a>
					</div>
					<!-- posts carousel -->
					<div class="posts-carousel">
						@foreach($posts as $post)
							@if ($post->category_id === 1)
								<div class="post-entry">
									{{-- @include('posts.photo') --}}
									<a href="{{ route('posts.show', $post) }}"><img src="{{ $post->photos->first()->url }}" class="img-responsive" alt="Post Thumbnail"></a>
									<div class="post-info">
										<h3 class="post-title"><a href="#">{{ $post->title }}</a></h3>
										{{-- @include('posts.tabla') --}}
										<p class="post-excerpt">{{ $post->excerpt }}</p>
										<span class="post-meta"><i class="fa fa-calendar-o"></i> {{ $post->published_at->format('M d, Y') }}</span>
										<a href="{{ route('posts.show', $post) }}" class="read-more pull-right">Подробнее...</a>
									</div>
								</div>
							@endif
						@endforeach
					</div>
					<!-- end posts carousel -->
				</section>
				<!-- END CREATIVE -->
				<!-- APPS -->
				<section>
					<div class="heading clearfix">
						<h2 class="section-heading pull-left">АРЕНДА</h2>
						<a href="#" class="see-all-posts pull-right">См. все объявления раздела АРЕНДА <i class="fa fa-long-arrow-right"></i></a>
					</div>
					<!-- posts carousel -->
					<div class="posts-carousel">

						@foreach($posts as $post)
							@if ($post->category_id === 2)
								<div class="post-entry">
									{{-- @include('posts.photo') --}}
									<a href="{{ route('posts.show', $post) }}"><img src="{{ $post->photos->first()->url }}" class="img-responsive" alt="Post Thumbnail"></a>
									<div class="post-info">
										<h3 class="post-title"><a href="#">{{ $post->title }}</a></h3>
										{{-- @include('posts.tabla') --}}
										<p class="post-excerpt">{{ $post->excerpt }}</p>
										<span class="post-meta"><i class="fa fa-calendar-o"></i> {{ $post->published_at->format('M d, Y') }}</span>
										<a href="{{ route('posts.show', $post) }}" class="read-more pull-right">Подробнее...</a>
									</div>
								</div>
							@endif
						@endforeach

					</div>
					<!-- end posts carousel -->
				</section>
				<!-- END APPS -->
			</div>
			<!-- NEWSLETTER -->
			<!-- <div class="newsletter">
				<div class="container">
					<h3 class="sr-only">Newsletter</h3>
					<p>Latest news about tech, apps and others right to your inbox.
						<br> Working newsletter, give it a try</p>
					<form class="newsletter-form" method="POST">
						<div class="input-group input-group-lg">
							<input type="email" class="form-control" name="email" placeholder="youremail@domain.com">
							<span class="input-group-btn"><button class="btn btn-primary" type="button"><i class="fa fa-spinner fa-spin"></i><span>SUBSCRIBE</span></button>
							</span>
						</div>
						<div class="alert"></div>
					</form>
				</div>
			</div> -->
			<!-- END NEWSLETTER -->
		</div>
		<!-- END MAIN CONTENT -->
@stop
