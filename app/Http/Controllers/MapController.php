<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;
use Mapper;

class MapController extends Controller
{

  public function index()
  {
    $post = Post::find(1);
    $coordinates = explode(", ", $post->location);

    Mapper::map($coordinates[0], $coordinates[1]);

    return view('map', compact('post'));
  }
}
