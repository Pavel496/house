<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;

class SearchController extends Controller
{

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
      $posts = Post::orderBy('created_at','desc')
                ->where('distance', '>=', (int)($request->distancemin ? $request->distancemin : 0))
                ->where('distance', '<=', (int)($request->distancemax ? $request->distancemax : PHP_INT_MAX))

                ->where('housearea', '>=', (int)($request->houseareamin ? $request->houseareamin : 0))
                ->where('housearea', '<=', (int)($request->houseareamax ? $request->houseareamax : PHP_INT_MAX))

                ->where('landarea', '>=', (int)($request->landareamin ? $request->landareamin : 0))
                ->where('landarea', '<=', (int)($request->landareamax ? $request->landareamax : PHP_INT_MAX))

                ->where('price', '>=', (int)($request->pricemin ? $request->pricemin : 0))
                ->where('price', '<=', (int)($request->pricemax ? $request->pricemax : PHP_INT_MAX))

                ->where('currency', $request->currency)

                ->paginate();

      $my_distancemin = $request->distancemin;
      $my_distancemax = $request->distancemax;

      $my_houseareamin = $request->houseareamin;
      $my_houseareamax = $request->houseareamax;

      $my_landareamin = $request->landareamin;
      $my_landareamax = $request->landareamax;

      $my_pricemin = $request->pricemin;
      $my_pricemax = $request->pricemax;

      $my_currency = $request->currency;

      return view('house', compact('posts', 'my_distancemin', 'my_distancemax',
                                            'my_houseareamin', 'my_houseareamax',
                                            'my_landareamin', 'my_landareamax',
                                            'my_pricemin', 'my_pricemax',
                                            'my_currency'));
    }

}
