<?php
// database/factories/UserFactory.php
namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class UserFactory extends Factory
{
    protected $model = User::class;

    public function definition(): array
    {
        return [
            'name' => $this->faker->name(),
            'email' => $this->faker->unique()->safeEmail(),
            'email_verified_at' => now(),
            'password' => bcrypt('password'), // Atau gunakan Hash::make('password') jika Anda menggunakan versi Laravel di atas 7.x
            'remember_token' => Str::random(10),
            'role' => 'user', // Default role is 'user'
        ];
    }

    // Jika Anda ingin membuat state untuk role tertentu, tambahkan di sini
    public function asAdmin(): static
    {
        return $this->state([
            'role' => 'admin',
        ]);
    }
}
