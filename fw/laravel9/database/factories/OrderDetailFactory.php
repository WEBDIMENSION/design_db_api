<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Product;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\OrderDetail>
 */
class OrderDetailFactory extends Factory
{

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $product_ids = Product::pluck('id')->all();
//        $product_count = Product::count();
        $product_id = $this->faker->randomElement($product_ids);
        $product = Product::find($product_id);
        unset($product_ids[$product_id]);

        return [
            'product_id' => $product['id'],
            'product_code' => $product['product_code'],
            'shop_product_code' => $product['shop_product_code'],
            'product_name' => $product['product_name'],
            'product_price' => $product['product_price'],
            'product_quantity' => rand(1, 10),
            'jan_code' => $product['product_code'],
            'category_id' => $product['category_id'],
            'brand_id' => $product['brand_id'],
            'memo' => $this->faker->realText(255),
            //
        ];
    }
}
