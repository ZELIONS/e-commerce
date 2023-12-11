<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // Memanggil factory untuk membuat 10 entitas user
        User::factory(10)->create();

        // Jika Anda ingin membuat user dengan role admin
        // Anda dapat menggunakan state yang telah ditentukan di dalam factory
        User::factory()->asAdmin()->create();
    }
}
