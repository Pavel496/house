@extends('admin.layout')

{{-- @section('header')
  <h1>
    POSTS
    <small>Create post</small>
  </h1>
  <ol class="breadcrumb">
    <li><a href="{{ route('dashboard') }}"><i class="fa fa-home"></i> Dashboard</a></li>
    <li><a href="{{ route('admin.posts.index') }}"><i class="fa fa-list"></i> Posts</a></li>
    <li class="active">Edit post</li>
  </ol>
@endsection --}}

@section('content')
  <div class="row">
    @if ($post->photos->count())
      <div class="col-md-12">
        <div class="box box-primary">
          <div class="box-body">
            <div class="row">
                @foreach ($post->photos as $photo)
                  <form method="POST" action="{{ route('admin.photos.destroy', $photo) }}">
                    {{ method_field('DELETE') }} {{ csrf_field() }}
                    <div class="col-md-2">
                        <button class="btn btn-danger btn-xs" style="position: absolute">
                          <i class="fa fa-remove"></i>
                        </button>
                        <img class="img-responsive" src="{{ url($photo->url) }}">
                    </div>
                  </form>
                @endforeach
            </div>
          </div>
        </div>
      </div>
    @endif

    <form method="POST" action="{{ route('admin.posts.update', $post) }}">
      {{ csrf_field() }} {{ method_field('PUT') }}
      <div class="col-md-8">
        <div class="box box-primary">
            <div class="box-body">
              <div class="form-group {{ $errors->has('title') ? 'has-error' : '' }}">
                <label>Заголовок</label>
                <input name="title" class="form-control" value="{{ old('title', $post->title) }}" placeholder= "Введите заголовок">

                {!! $errors->first('title', '<span class="help-block">:message</span>') !!}

              </div>
              <div class="form-group {{ $errors->has('location') ? 'has-error' : '' }}">
                <label>Локация</label>
                {{-- <textarea name="location" class="form-control" placeholder= "Введите координаты">{{ old('location', $post->location) }}</textarea> --}}
                <input name="location" class="form-control" value="{{ old('location', $post->location) }}" placeholder= "Скопируйте координаты с Google maps">
                {!! $errors->first('location', '<span class="help-block">:message</span>') !!}
              </div>
              <div class="form-group {{ $errors->has('excerpt') ? 'has-error' : '' }}">
                <label>Краткое описание</label>
                <textarea name="excerpt" class="form-control" placeholder= "Введите краткое описание">{{ old('excerpt', $post->excerpt) }}</textarea>
                {!! $errors->first('excerpt', '<span class="help-block">:message</span>') !!}
              </div>
              <div class="form-group">
                <label>Описание объекта</label>
                <textarea rows="7" id="editor" name="body" class="form-control" placeholder= "Введите описание объекта">{{ old('body', $post->body) }}</textarea>
              </div>
              <div class="form-group">
                <label>iFrame</label>
                <textarea name="iframe" class="form-control" placeholder= "Введите iframe аудио или видео">{{ old('iframe', $post->iframe) }}</textarea>
                {{-- {!! $errors->first('iframe', '<span class="help-block">:message</span>') !!} --}}
              </div>
            </div>
        </div>
      </div>

      <div class="col-md-4">
        <div class="box box-primary">
          <div class="box-body">

            <div class="row">
            <!-- Date -->
              <div class="col-md-7">
                <div class="form-group">
                  <label>Дата публикации</label>
                  <div class="input-group date">
                    <div class="input-group-addon">
                      <i class="fa fa-calendar"></i>
                    </div>
                    <input name="published_at"
                      class="form-control pull-right"
                      value="{{ old('published_at', $post->published_at ? $post->published_at->format('m/d/Y') : null) }}"
                      type="text"
                      id="datepicker">
                  </div>
                </div>
              </div>

              <div class="col-md-5">
                <div class="form-group">
                  <label>Количество дней</label>
                  <input type="number" name="days" min="10" max="365" step="10" value="{{ old('days', $post->days) }}">
                </div>
              </div>
            </div>

            <div class="form-group {{ $errors->has('category_id') ? 'has-error' : '' }}">
              <label>Категория</label>
              <select name="category_id" class="form-control select2">
                <option value="">Выберите нужную категорию</option>
                  @foreach ($categories as $category)
                    <option value="{{ $category->id }}" {{ old('category_id', $post->category_id) == $category->id ? 'selected' : '' }}>{{ $category->name }}</option>
                  @endforeach
              </select>
              {!! $errors->first('category_id', '<span class="help-block">:message</span>') !!}
            </div>

            <div class="form-group {{ $errors->has('direction_id') ? 'has-error' : '' }}">
              <label>Направление</label>
              <select name="direction_id" class="form-control select2">
                <option value="">Выберите нужное направление</option>
                  @foreach ($directions as $direction)
                    <option value="{{ $direction->id }}" {{ old('direction_id', $post->direction_id) == $direction->id ? 'selected' : '' }}>{{ $direction->name }}</option>
                  @endforeach
              </select>
              {!! $errors->first('direction_id', '<span class="help-block">:message</span>') !!}
            </div>


            {{-- <div class="form-group {{ $errors->has('tags') ? 'has-error' : '' }}">
              <label>Tags</label>
              <select name="tags[]" class="form-control select2"
                      multiple="multiple"
                      data-placeholder="Select one or more tags" style="width: 100%;">
                  @foreach ($tags as $tag)
                    <option {{ collect(old('tags', $post->tags->pluck('id')))->contains($tag->id) ? 'selected' : '' }} value="{{ $tag->id }}">{{ $tag->name }}</option>
                  @endforeach
              </select>
              {!! $errors->first('tags', '<span class="help-block">:message</span>') !!}
            </div> --}}

            <div class="form-group">
              <label>Удаление от МКАД</label>
              <input name="distance" class="form-control" value="{{ old('distance', $post->distance) }}" placeholder= "Введите удаление от МКАД">
              {{-- {!! $errors->first('distance', '<span class="help-block">:message</span>') !!} --}}
            </div>

            <div class="form-group">
              <label>Площадь дома</label>
              <input name="housearea" class="form-control" value="{{ old('housearea', $post->housearea) }}" placeholder= "Введите площадь дома">
              {{-- {!! $errors->first('housearea', '<span class="help-block">:message</span>') !!} --}}
            </div>

            <div class="form-group">
              <label>Площадь участка</label>
              <input name="landarea" class="form-control" value="{{ old('landarea', $post->landarea) }}" placeholder= "Введите площадь участка">
              {{-- {!! $errors->first('landarea', '<span class="help-block">:message</span>') !!} --}}
            </div>

            <div class="form-group">
              <label>Стоимость</label>
              <input name="price" class="form-control" value="{{ old('price', $post->price) }}" placeholder= "Введите стоимость">
            </div>

            <div class="form-group {{ $errors->has('currency') ? 'has-error' : '' }}">
              <label>Валюта</label>
              <select name="currency" class="form-control select2">
                <option value="">Выберите нужную валюту</option>
                    <option {{ old('currency', $post->currency) == 'рубли' ? 'selected' : '' }}>рубли</option>
                    <option {{ old('currency', $post->currency) == 'доллары' ? 'selected' : '' }}>доллары</option>
                    <option {{ old('currency', $post->currency) == 'евро' ? 'selected' : '' }}>евро</option>
                    <option {{ old('currency', $post->currency) == 'юани' ? 'selected' : '' }}>юани</option>
                    <option {{ old('currency', $post->currency) == 'крипто' ? 'selected' : '' }}>крипто</option>
              </select>
              {!! $errors->first('currency', '<span class="help-block">:message</span>') !!}
            </div>

            <div class="form-group">
              <div class="dropzone">

              </div>
            </div>

            <div class="form-group">
              <button type="submit" class="btn btn-primary btn-block">Сохранить публикацию</button>
            </div>

          </div>
        </div>
      </div>
    </form>
  </div>
@endsection

@push('styles')
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.4.0/dropzone.css">
  <link rel="stylesheet" href="/adminlte/plugins/datepicker/datepicker3.css">
  <link rel="stylesheet" href="/adminlte/plugins/select2/select2.min.css">
@endpush

@push('scripts')
  <script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/5.4.0/min/dropzone.min.js"></script>
  <script src="https://cdn.ckeditor.com/4.8.0/standard/ckeditor.js"></script>
  <script src="/adminlte/plugins/select2/select2.full.min.js"></script>
  <script src="/adminlte/plugins/datepicker/bootstrap-datepicker.js"></script>
  <script>
    $('#datepicker').datepicker({
      autoclose: true
    });

    $(".select2").select2({
      tags: true
    });

    CKEDITOR.replace('editor');
    CKEDITOR.config.height = 327;

    var myDropzone = new Dropzone('.dropzone', {
      url: '/admin/posts/{{ $post->url }}/photos',
      paramName: 'photo',
      acceptedFiles: 'image/*',
      maxFilesize: 2,
      // maxFiles: 1,
      headers: {
        'X-CSRF-TOKEN': '{{ csrf_token() }}'
      },
      dictDefaultMessage: 'Перетащите фото для загрузки или кликните'
    });

    myDropzone.on('error', function(file, res){
      var msg = res.photo[0];
      $('.dz-error-message:last > span').text(msg);
    });

    Dropzone.autoDiscover = false;


  </script>
@endpush
