<?php

use App\Post;
use App\Direction;
use Illuminate\Database\Seeder;

class DirectionsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      Direction::truncate();

      $items = [

        'Рублево-Успенское шоссе',
        'Новорижское шоссе',
        'Минское шоссе',
        'Киевское шоссе',
        'Алтуфьевское шоссе',
        'Боровское шоссе',
        'Волоколамское шоссе',
        'Дмитровское шоссе',
        'Ильинское шоссе',
        'Калужское шоссе',
        'Ленинградское шоссе',
        'Осташковское шоссе',
        'Пятницкое шоссе',
        'Симферопольское шоссе',
        'Сколковское шоссе',
        'Можайское шоссе',
        'Москва',

      ];

      foreach ($items as $item) {

        Direction::create(['name'=>$item]);

      //     $post = new Tag;
      //     $post->name = $item;
      //     $post->save();

      }

        Post::where('direction_id', null)->update(['direction_id' => '1']);

    }
}
