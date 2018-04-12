<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;


class PagesController extends Controller
{
  public function home()
  {

    $posts = Post::published()->paginate();

    $my_distance = '0 - 5';
    $my_housearea = '0 - 100';
    $my_landarea = '0 - 10';

    return view('house', compact('posts', 'my_distance', 'my_housearea', 'my_landarea'));
  }
}
