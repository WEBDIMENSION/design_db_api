<?php

namespace Database\Factories;

use App\Models\Delivery;
use App\Models\Payment;
use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Product;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\OrderTotal>
 */
class OrderTotalFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'sub_total' => 500,
            'delivery_id' => 1,
            'delivery_name' => 'test',
            'delivery_cost' => 500,
            'payment_id' => 1,
            'payment_name' => 'test',
            'payment_cost' => 500,
            'total_cost' => 10000,
        ];
    }
}
