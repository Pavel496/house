<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mapper;

class MapController extends Controller
{

  public function index()
  {
    $my1 = 59.548178;
    $my2 = 30.090025;

    Mapper::map($my1, $my2);

    return view('map');
  }
}
