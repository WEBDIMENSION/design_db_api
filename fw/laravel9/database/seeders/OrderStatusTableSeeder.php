<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Eloquent\Factories\Sequence;
use Illuminate\Database\Seeder;
use App\Models\OrderStatus;

class OrderStatusTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $order_status = [
            ['order_status_name' => '処理待ち'],
            ['order_status_name' => '処理中'],
            ['order_status_name' => '処理済み'],
        ];
        OrderStatus::factory(count($order_status))
            ->state(new Sequence(...$order_status))
            ->create();
    }
}
