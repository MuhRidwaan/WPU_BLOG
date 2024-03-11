<?php

namespace App\Models;


class Post 
{
    private static $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "author" => "M Ridwan",
            "slug" => "judul-post-pertama",
            "blog" => "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Veniam suscipit id autem, iste laudantium fugiat officiis enim atque quasi sed optio laboriosam reiciendis repudiandae quia quo mollitia? Fugiat quasi velit consectetur ipsam atque dolorem delectus beatae iste exercitationem in! Perferendis, culpa quo ea vero doloribus voluptate sapiente voluptas maxime earum accusantium amet vitae atque nobis distinctio iusto repellendus libero quis consequuntur, error officiis, deserunt eaque ut laborum fugiat. Delectus quaerat eos laboriosam quod vitae pariatur ad dicta saepe praesentium, porro eveniet, quidem ullam sit culpa illum est. Quia, reprehenderit delectus?"
        
        ],
        [
            "title" => "Judul post kedua",
            "slug" => "judul-post-kedua",
            "author" => "Sandika Galih",
            "blog" => "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Sunt similique eveniet fugiat repudiandae nesciunt recusandae rerum assumenda asperiores aliquam eum accusamus libero, dicta consequuntur? Totam voluptatem, id pariatur quae magnam dolorum voluptatibus ipsam, quaerat sint, repellat odit nisi laudantium nam commodi vero alias. Eius tempora voluptates minus atque rem dolore modi incidunt reiciendis aliquam blanditiis, harum qui expedita labore nihil doloremque, unde iure sunt ipsum eos non reprehenderit asperiores et molestiae a? Nemo natus autem deserunt iusto. Animi, at ipsa. Delectus soluta atque et blanditiis, sint aliquid sit itaque! Aperiam hic doloribus rem sunt quod saepe, repudiandae eaque error mollitia! "
        
        ]
    ];

    public static function all() {
        return collect(self:: $blog_posts);
    }

    public static function find($slug){

        $posts = static::all();
        // $post =[];
        // foreach($posts as $p) {
        //     if($p["slug"] === $slug){
        //         $post = $p;
        //     }
        // }

        return $posts->firstWhere('slug', $slug);
    }
}
