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
						<h2 class="section-heading pull-left">LATEST POSTS</h2>
						<a href="#" class="see-all-posts pull-right">See all latest posts <i class="fa fa-long-arrow-right"></i></a>
					</div>
					<!-- posts carousel -->
					<div class="posts-carousel">
						@foreach($posts as $post)
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img4.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">{{ $post->title }}</a></h3>
								<p class="post-excerpt">{{ $post->excerpt }}</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> {{ $post->published_at->format('M d, Y') }}</span>
								<a href="{{ route('posts.show', $post) }}" class="read-more pull-right">Подробнее...</a>
							</div>
						</div>
						@endforeach
						{{-- <div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img5.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Monotonectally incubate process services</a></h3>
								<p class="post-excerpt">Dynamically customize enabled schemas vis-a-vis impactful customer service. Seamlessly integrate future-proof total linkage via ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 15, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div>
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img6.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Conveniently monetize customer directed</a></h3>
								<p class="post-excerpt">Competently leverage existing multimedia based testing procedures after tactical e-services. Holisticly parallel task cross-media ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 14, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div>
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img7.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Enthusiastically disseminate resource</a></h3>
								<p class="post-excerpt">Appropriately productize extensive best practices vis-a-vis focused interfaces. Objectively extend compelling e-tailers rather ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 13, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div>
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img8.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Objectively leverage existing technically</a></h3>
								<p class="post-excerpt">Efficiently plagiarize equity invested information with future-proof methods of empowerment. Proactively scale cross-platform ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 12, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div>
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img9.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Credibly envisioneer timely information</a></h3>
								<p class="post-excerpt">Synergistically aggregate covalent applications vis-a-vis excellent technology. Seamlessly predominate transparent infrastructures ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 7, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div>
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img10.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Intrinsicly formulate an expanded</a></h3>
								<p class="post-excerpt">Competently iterate cross-unit value and strategic action items. Energistically scale extensive methodologies before standards compliant ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 6, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div> --}}




					</div>
					<!-- end posts carousel -->
				</section>
				<!-- END LATEST -->
				<!-- CREATIVE -->
				<section>
					<div class="heading clearfix">
						<h2 class="section-heading pull-left">CREATIVE</h2>
						<a href="#" class="see-all-posts pull-right">See all posts in Creative <i class="fa fa-long-arrow-right"></i></a>
					</div>
					<!-- posts carousel -->
					<div class="posts-carousel">
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img12.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Conveniently monetize customer directed</a></h3>
								<p class="post-excerpt">Competently leverage existing multimedia based testing procedures after tactical e-services. Holisticly parallel task cross-media ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 14, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div>
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img13.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Monotonectally incubate process services</a></h3>
								<p class="post-excerpt">Dynamically customize enabled schemas vis-a-vis impactful customer service. Seamlessly integrate future-proof total linkage via ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 15, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div>
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img4.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Authoritatively architect metrics</a></h3>
								<p class="post-excerpt">Curabitur lobortis id lorem id bibendum. Ut id consectetur magna. Quisque volutpat augue enim, pulvinar lobortis nibh lacinia at ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 15, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div>
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img11.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Enthusiastically disseminate resource</a></h3>
								<p class="post-excerpt">Appropriately productize extensive best practices vis-a-vis focused interfaces. Objectively extend compelling e-tailers rather ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 13, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div>
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img9.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Credibly envisioneer timely information</a></h3>
								<p class="post-excerpt">Synergistically aggregate covalent applications vis-a-vis excellent technology. Seamlessly predominate transparent infrastructures ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 7, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div>
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img10.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Intrinsicly formulate an expanded</a></h3>
								<p class="post-excerpt">Competently iterate cross-unit value and strategic action items. Energistically scale extensive methodologies before standards compliant ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 6, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div>
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img8.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Objectively leverage existing technically</a></h3>
								<p class="post-excerpt">Efficiently plagiarize equity invested information with future-proof methods of empowerment. Proactively scale cross-platform ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 12, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div>
					</div>
					<!-- end posts carousel -->
				</section>
				<!-- END CREATIVE -->
				<!-- APPS -->
				<section>
					<div class="heading clearfix">
						<h2 class="section-heading pull-left">APPS</h2>
						<a href="#" class="see-all-posts pull-right">See all posts in Apps <i class="fa fa-long-arrow-right"></i></a>
					</div>
					<!-- posts carousel -->
					<div class="posts-carousel">
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img10.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Intrinsicly formulate an expanded</a></h3>
								<p class="post-excerpt">Competently iterate cross-unit value and strategic action items. Energistically scale extensive methodologies before standards compliant ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 6, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div>
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img15.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Authoritatively architect metrics</a></h3>
								<p class="post-excerpt">Curabitur lobortis id lorem id bibendum. Ut id consectetur magna. Quisque volutpat augue enim, pulvinar lobortis nibh lacinia at ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 15, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div>
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img14.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Monotonectally incubate process services</a></h3>
								<p class="post-excerpt">Dynamically customize enabled schemas vis-a-vis impactful customer service. Seamlessly integrate future-proof total linkage via ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 15, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div>
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img4.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Conveniently monetize customer directed</a></h3>
								<p class="post-excerpt">Competently leverage existing multimedia based testing procedures after tactical e-services. Holisticly parallel task cross-media ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 14, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div>
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img7.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Enthusiastically disseminate resource</a></h3>
								<p class="post-excerpt">Appropriately productize extensive best practices vis-a-vis focused interfaces. Objectively extend compelling e-tailers rather ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 13, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div>
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img8.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Objectively leverage existing technically</a></h3>
								<p class="post-excerpt">Efficiently plagiarize equity invested information with future-proof methods of empowerment. Proactively scale cross-platform ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 12, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div>
						<div class="post-entry">
							<a href="#"><img src="house/img/blog/blog-home-img9.png" class="img-responsive" alt="Post Thumbnail"></a>
							<div class="post-info">
								<h3 class="post-title"><a href="#">Credibly envisioneer timely information</a></h3>
								<p class="post-excerpt">Synergistically aggregate covalent applications vis-a-vis excellent technology. Seamlessly predominate transparent infrastructures ...</p>
								<span class="post-meta"><i class="fa fa-calendar-o"></i> Jan 7, 2016</span>
								<a href="#" class="read-more pull-right">Read More</a>
							</div>
						</div>
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
