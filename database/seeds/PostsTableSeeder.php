<?php

use App\Post;

use App\Category;

use App\Tag;

use Carbon\Carbon;

use Illuminate\Database\Seeder;
// use Illuminate\Support\Facades\Storage;

class PostsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Storage::disk('public')->deleteDirectory('posts');
        Post::truncate();
        Category::truncate();

        $post = new Category;
        $post->name = "Продажа";
        $post->save();

        $post = new Category;
        $post->name = "Аренда";
        $post->save();

        $post = new Post;
        $post->title = "Объявление №1";
        $post->url = str_slug("Объявление №1");
        $post->price = "10 000 000";
        $post->distance = "25";
        $post->housearea = "200";
        $post->landarea = "25";
        // $post->location = "";
        $post->excerpt = "Краткое описание №1";
        $post->body = "<p>Полное описание №1</p>";
        $post->published_at = Carbon::now()->subDays(5);
        $post->category_id = 1;
        $post->user_id = 1;
        $post->days = 10;
        $post->save();
        // $post->tags()->attach(Tag::create(['name'=>'N1']));


    }
}
