<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;


class PagesController extends Controller
{
  public function home()
  {

    $posts = Post::published()->paginate();

    $my_distancemin = null;
    $my_distancemax = null;

    $my_houseareamin = null;
    $my_houseareamax = null;

    $my_landareamin = null;
    $my_landareamax = null;

    $my_pricemin = null;
    $my_pricemax = null;

    $my_currency = 'рубли';

    return view('house', compact('posts', 'my_distancemin', 'my_distancemax',
                                          'my_houseareamin', 'my_houseareamax',
                                          'my_landareamin', 'my_landareamax',
                                          'my_pricemin', 'my_pricemax',
                                          'my_currency'));
  }
}
