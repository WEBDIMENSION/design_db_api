<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Factories\Sequence;
use App\Models\LoginHistory;
use App\Models\User;


class LoginHistoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
//        $user_ids = User::pluck('id')->all();
//        for ($i = 0; $i < count($user_ids); $i++) {
//            $login_history = [];
//            for ($j = 0; $j < count(rand(1, 10)); $j++){
//                if($j === 0){
//
//                }
//                $login_history[] = [
//                    ['user_id' => $user_ids[$i], 'date' => 0],
//                ];
//            }
//        }
//        LoginHistory::factory(count($staff_roles))
//            ->state(new Sequence(...$staff_roles))
//            ->create();
    }
}
