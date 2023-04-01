<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Eloquent\Factories\Sequence;
use Illuminate\Database\Seeder;
use App\Models\UserRank;

class UserRankTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $staff_roles = [
            ['user_rank_name' => 'premium'],
            ['user_rank_name' => 'gold'],
            ['user_rank_name' => 'silver'],
            ['user_rank_name' => 'bronze'],
            ['user_rank_name' => 'basic'],
        ];
        UserRank::factory(count($staff_roles))
            ->state(new Sequence(...$staff_roles))
            ->create();
//        StaffRole::factory()->count(5)->create();

        //
    }
}
