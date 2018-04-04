<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;
use Mapper;

class PostsController extends Controller
{
  public function show(Post $post)
  {
    if ($post->isPublished() || auth()->check())
    {
      $coordinates = explode(", ", $post->location);

      Mapper::map($coordinates[0], $coordinates[1]);

      return view('posts.show', compact('post'));
    }

    abort(404);
  }
}
