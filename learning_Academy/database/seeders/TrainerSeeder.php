<?php

namespace Database\Seeders;

use App\Models\Trainer;
use Illuminate\Database\Seeder;

class TrainerSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //another way for tinker
        Trainer::create([
            'name' => 'Yahia srour',
            'speciality' => 'Web Development',
            'img' => '1.png'
        ]);
        Trainer::create([
            'name' => 'Mohamed Ahmed',
            'speciality' => 'Web Development',
            'img' => '2.png'
        ]);
        Trainer::create([
            'name' => 'Ahmed Ashraf',
            'speciality' => 'Dentist',
            'img' => '3.png'
        ]);
        Trainer::create([
            'name' => 'Ahmed Fathy',
            'speciality' => 'Doctor',
            'img' => '4.png'
        ]);
        Trainer::create([
            'name' => 'Mourad Mostafa',
            'speciality' => 'English Teacher',
            'img' => '5.png'
        ]);

    }
}
