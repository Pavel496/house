@extends('layouth')


@section('content')
  <div class="main-content" style="background-color:DarkOliveGreen;">
    <div class="container-fluid">

<br><br>

<article class="post container" style="
  padding-left:0px;
  padding-right:0px;
">

@include( $post->viewType() )
  {{-- @if ($post->photos->count() === 1)
    @include('posts.photo')
  @elseif ($post->photos->count() > 1)

    @include('posts.carousel')

  @elseif ($post->iframe)
		@include('posts.iframe')
  @endif --}}
    {{-- @if ($post->photos->count() === 1)
      <figure><img src="{{ $post->photos->first()->url }}" alt="" class="img-responsive"></figure>
    @endif --}}


    <div class="content-post">

      @include('posts.postheader')

        <h3>{{ $post->title }}</h3>

        <div style="width: 300px; height: 200px;">
    			{!! Mapper::render() !!}
    		</div>
        <br>
      @include('posts.tabla')
<br>
        {{-- <div class="divider"></div> --}}
        <div class="image-w-text">
          {!! $post->body !!}
        </div>



          {{-- <footer class="container-flex space-between">
              @include('partials.social-links', ['description'=>$post->title])

  						@include('posts.tags')

          </footer> --}}
      {{-- <div class="comments">
      <div class="divider"></div>
        <div id="disqus_thread"></div>

          @include('partials.disqus-script')

      </div><!-- .comments --> --}}
    </div>

</article>
</div>
</div>
@stop

@push('styles')
  <link rel="stylesheet" type="text/css" href="/css/twitter-bootstrap.css">
@endpush

@push('scripts')
  {{-- <script id="dsq-count-scr" src="//zendero.disqus.com/count.js" async></script> --}}
  <script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
  <script src="/js/twitter-bootstrap.js" async></script>
@endpush
