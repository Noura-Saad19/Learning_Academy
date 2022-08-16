<?php

namespace Database\Seeders;

use App\Models\Testmonial;
use Illuminate\Database\Seeder;

class TestmonialSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Testmonial::create([
            'name' => 'Ahmed Ali',
            'spec' => 'Frontend Web Developer ',
            'desc' => 'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,
            when an unknown printer took a galley of type and scrambled it to make a type specimen book.
            It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
            ',
            'img' => '1.png',

        ]);
        Testmonial::create([
            'name' => 'Ahmed Ashraf',
            'spec' => 'Backend Web Developer ',
            'desc' => 'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,
             when an unknown printer took a galley of type and scrambled it to make a type specimen book.
             It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
            ',
            'img' => '2.png',

        ]);
        Testmonial::create([
            'name' => 'Osama Amgad',
            'spec' => 'Doctor',
            'desc' => 'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,
            when an unknown printer took a galley of type and scrambled it to make a type specimen book.
            It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.
         ',
            'img' => '3.png',

        ]);
    }
}
