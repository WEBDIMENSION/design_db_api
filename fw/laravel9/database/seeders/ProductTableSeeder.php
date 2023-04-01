<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Product;
use App\Models\ProductReview;


class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        for ($i = 0; $i < 100; $i++) {
            Product::factory()->has(
                ProductReview::factory(rand(0, 10))
                    ->state(
                        function (array $attributes, Product $product) {
                            return [
                                'product_id' => $product['id'],
                            ];
                        })
            )->create();;
        }
    }
}
