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
dd($request->get('search'));
    	if($request->has('search')){
        // $mylink = false;
        $posts = Post::where('distance', '>', 15)->search($request->get('search'))->orderBy('id', 'desc')->get();
    	}else{
        // $mylink = true;
    		$posts = Post::orderBy('id', 'desc')->paginate();
    	}


    	return view('house', compact('posts'));
    }
}
