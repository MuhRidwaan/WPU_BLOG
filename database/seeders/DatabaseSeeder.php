<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(5)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        // User::create([
        //     'name' => 'sandika Galih',
        //     'email' => 'sandikaghalih@gmail.com',
        //     'password' => bcrypt('122345')
        // ]);
        // User::create([
        //     'name' => 'M Ridwan',
        //     'username' => 'Ridwan',
        //     'email' => 'mridwan@gmail.com',
        //     'password' => bcrypt('password')
        // ]);

        Category::create([
            'name' => 'Web Programing',
            'slug' => 'web-programing'
        ]);
        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);
        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);

        Post::factory(20)->create();
        
        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores autem culpa ut deserunt libero consequuntur cum voluptates iure omnis, rerum nostrum,',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores autem culpa ut deserunt libero consequuntur cum voluptates iure omnis, rerum nostrum, illum, quae fugiat harum nulla numquam incidunt blanditiis fugit! </p><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem nesciunt at aperiam, ut non dicta dolores delectus vitae rem fugit qui ipsam illo possimus pariatur, ipsum officia fuga dolorem! Non aliquam unde provident velit voluptatum iste, labore ex aut, repudiandae reprehenderit amet consequatur totam quibusdam tempore sequi nam quis voluptatem necessitatibus? Tempore eos placeat neque! Aperiam sapiente quasi voluptatem iusto.</p> <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro esse reiciendis vitae impedit quis, repellendus nam dolorum quasi, dolor placeat architecto repudiandae possimus modi obcaecati dolores fugiat minus! Mollitia ad reiciendis sapiente nam necessitatibus culpa. Beatae incidunt aspernatur enim sunt reiciendis ipsum excepturi impedit laudantium perferendis quisquam, vel recusandae at.</p>',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);
        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores autem culpa ut deserunt libero consequuntur cum voluptates iure omnis, rerum nostrum,',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores autem culpa ut deserunt libero consequuntur cum voluptates iure omnis, rerum nostrum, illum, quae fugiat harum nulla numquam incidunt blanditiis fugit! </p><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem nesciunt at aperiam, ut non dicta dolores delectus vitae rem fugit qui ipsam illo possimus pariatur, ipsum officia fuga dolorem! Non aliquam unde provident velit voluptatum iste, labore ex aut, repudiandae reprehenderit amet consequatur totam quibusdam tempore sequi nam quis voluptatem necessitatibus? Tempore eos placeat neque! Aperiam sapiente quasi voluptatem iusto.</p> <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro esse reiciendis vitae impedit quis, repellendus nam dolorum quasi, dolor placeat architecto repudiandae possimus modi obcaecati dolores fugiat minus! Mollitia ad reiciendis sapiente nam necessitatibus culpa. Beatae incidunt aspernatur enim sunt reiciendis ipsum excepturi impedit laudantium perferendis quisquam, vel recusandae at.</p>',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);
        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores autem culpa ut deserunt libero consequuntur cum voluptates iure omnis, rerum nostrum,',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Asperiores autem culpa ut deserunt libero consequuntur cum voluptates iure omnis, rerum nostrum, illum, quae fugiat harum nulla numquam incidunt blanditiis fugit! </p><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Autem nesciunt at aperiam, ut non dicta dolores delectus vitae rem fugit qui ipsam illo possimus pariatur, ipsum officia fuga dolorem! Non aliquam unde provident velit voluptatum iste, labore ex aut, repudiandae reprehenderit amet consequatur totam quibusdam tempore sequi nam quis voluptatem necessitatibus? Tempore eos placeat neque! Aperiam sapiente quasi voluptatem iusto.</p> <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Porro esse reiciendis vitae impedit quis, repellendus nam dolorum quasi, dolor placeat architecto repudiandae possimus modi obcaecati dolores fugiat minus! Mollitia ad reiciendis sapiente nam necessitatibus culpa. Beatae incidunt aspernatur enim sunt reiciendis ipsum excepturi impedit laudantium perferendis quisquam, vel recusandae at.</p>',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
