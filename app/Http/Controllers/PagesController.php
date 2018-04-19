<?php

namespace App\Http\Controllers;

use App\Post;
use App\Category;
use App\Direction;
use Illuminate\Http\Request;


class PagesController extends Controller
{
  public function home()
  {
    return view('zastavka');

  }

  public function sale()
  {
        $posts = Post::published()->paginate();
        $directions = Direction::all();
        $categories = Category::all();
// dd($posts);
        $my_distancemin = null;
        $my_distancemax = null;

        $my_houseareamin = null;
        $my_houseareamax = null;

        $my_landareamin = null;
        $my_landareamax = null;

        $my_pricemin = null;
        $my_pricemax = null;

        $my_currency = 'рубли';
        $my_category_id = '1';
        $my_direction_id = '1';
// Рублево-Успенское шоссе
// dd($categories);
        return view('house', compact('posts', 'categories', 'directions',
                                              'my_distancemin', 'my_distancemax',
                                              'my_houseareamin', 'my_houseareamax',
                                              'my_landareamin', 'my_landareamax',
                                              'my_pricemin', 'my_pricemax',
                                              'my_currency', 'my_category_id', 'my_direction_id'));
  }

  // public function lease()
  // {
  //       $posts = Post::published()->paginate();
  //
  //       $my_distancemin = null;
  //       $my_distancemax = null;
  //
  //       $my_houseareamin = null;
  //       $my_houseareamax = null;
  //
  //       $my_landareamin = null;
  //       $my_landareamax = null;
  //
  //       $my_pricemin = null;
  //       $my_pricemax = null;
  //
  //       $my_currency = 'рубли';
  //
  //       return view('house', compact('posts', 'my_distancemin', 'my_distancemax',
  //                                             'my_houseareamin', 'my_houseareamax',
  //                                             'my_landareamin', 'my_landareamax',
  //                                             'my_pricemin', 'my_pricemax',
  //                                             'my_currency'));
  // }

}
