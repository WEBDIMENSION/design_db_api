<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Order;
use App\Models\OrderDetail;
use App\Models\OrderTotal;


class OrderTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        for ($i = 0; $i < 10; $i++) {
            Order::factory()
                ->has(
                    OrderDetail::factory(rand(1, 5))
//                        ->has(
//                    ->state(
//                        function (array $attributes, Order $order, OrderDetail $orderDetail) {
////                            dd($attributes);
////                            dd($order['order_id']);
//                            echo 'test';
//                            dd($order);
////                            dd($orderDetail);
//                            return [
//                                'order_id' => $order->id,
//                            ];
//                        })
//                    )
                )
                ->create();;
        }
        //
    }
}
