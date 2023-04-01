<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\OrderDetail;
use App\Models\OrderTotal;
use App\Models\Delivery;
use App\Models\Payment;

class OrderTotalTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $deliveries = Delivery::all();
        $payments = Payment::all();
        $order_ids = OrderDetail::groupBy('order_id')
            ->select(
                'order_id',
                DB::raw('count(order_id) as cnt'),
                DB::raw('sum(product_price) as sub_total')
            )
            ->get();

//        echo "\n";
//        foreach ($order_ids as $order_id) {
//            $delivery_id = rand(1, count($deliveries));
//            $delivery = Delivery::find($delivery_id);
//            $payments_id = rand(1, count($payments));
//            $payment = Payment::find($payments_id);
//            $total_cost = $order_id['sub_total'] + $delivery['delivery_cost'] + $payment['payment_cost'];
//            echo $order_id['order_id'] . ":" . $order_id['cnt'] .
//                "sub_total:" . $order_id['sub_total'] .
//                "delivery_cost:" . $delivery['delivery_cost'] .
//                "payment_cost:" . $payment['payment_cost'] .
//                "total:" . $total_cost;
//            echo "\n";
//        }
//        exit();

        foreach ($order_ids as $order_id) {
            $delivery_id = rand(1, count($deliveries));
            $delivery = Delivery::find($delivery_id);
            $payments_id = rand(1, count($payments));
            $payment = Payment::find($payments_id);
            $total_cost = $order_id['sub_total'] + $delivery['delivery_cost'] + $payment['payment_cost'];
            OrderTotal::factory()
                ->create(
                    [
                        'order_id' => $order_id['order_id'],
                        'sub_total' => $order_id['sub_total'],
                        "delivery_id" => $delivery['id'],
                        "delivery_name" => $delivery['delivery_name'],
                        "delivery_cost" => $delivery['delivery_cost'],
                        "payment_id" => $payment['id'],
                        "payment_name" => $payment['payment_name'],
                        "payment_cost" => $payment['payment_cost'],
                        "total_cost" => $total_cost,
                    ]
                );
        }



        //
    }
}
