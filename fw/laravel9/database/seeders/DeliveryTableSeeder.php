<?php

namespace Database\Seeders;

use App\Models\Delivery;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Eloquent\Factories\Sequence;
use Illuminate\Database\Seeder;

class DeliveryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $deliverys = [
            ['delivery_name' => 'ヤマト運輸', 'delivery_cost' => 600],
            ['delivery_name' => '佐川急便', 'delivery_cost' => 500],
            ['delivery_name' => 'ゆうパック', 'delivery_cost' => 400],
        ];
        Delivery::factory(count($deliverys))
            ->state(new Sequence(...$deliverys))
            ->create();
    }
}
