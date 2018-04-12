<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;

class SearchController extends Controller
{
    // public function __construct()
    // {
    //     $mylink = true;
    // }


    public function mySearch(Request $request)
    {
    	if($request->has('search')){
        $posts = Post::search($request->get('search'))->orderBy('id', 'desc')->get();
    	}else{
    		$posts = Post::orderBy('id', 'desc')->paginate();
    	}

    	return view('house', compact('posts'));
    }


    public function myFilter(Request $request)
    {
      $dist = explode(" - ", $request->distance);
      $house = explode(" - ", $request->housearea);
      $land = explode(" - ", $request->landarea);

      $posts = Post::orderBy('created_at','desc')
                ->where('distance', '>=', (int)$dist[0])->where('distance', '<=', (int)$dist[1])
                ->where('housearea', '>=', (int)$house[0])->where('housearea', '<=', (int)$house[1])
                ->where('landarea', '>=', (int)$land[0])->where('landarea', '<=', (int)$land[1])

                ->paginate();


      $my_distance = $request->distance;
      $my_housearea = $request->housearea;
      $my_landarea = $request->landarea;

      return view('house', compact('posts', 'my_distance', 'my_housearea', 'my_landarea'));
    }

}
