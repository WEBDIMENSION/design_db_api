<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Eloquent\Factories\Sequence;
use Illuminate\Database\Seeder;
use App\Models\StaffRole;

class StaffRoleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $staff_roles = [
            ['name' => 'administrator', 'memo' => '管理者'],
            ['name' => 'general', 'memo' => '一般ユーザー'],
            ['name' => 'external_staff', 'memo' => '外部スタッフ’'],
        ];
        StaffRole::factory(count($staff_roles))
            ->state(new Sequence(...$staff_roles))
            ->create();
//        StaffRole::factory()->count(5)->create();
    }
}
