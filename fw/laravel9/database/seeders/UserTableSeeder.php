<?php

namespace Database\Seeders;

use App\Models\LoginHistory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;


class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i = 0; $i < 100; $i++) {
            User::factory()->has(
                LoginHistory::factory(rand(1, 10))
                    ->state(
                        function (array $attributes, User $user) {
                            return [
                                'user_id' => $user->id,
                            ];
                        })
            )->create();;
        }
    }
    //
}
