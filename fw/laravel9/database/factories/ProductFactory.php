<?php

namespace Database\Factories;

use App\Models\ProductBrand;
use App\Models\ProductCategory;
use Illuminate\Database\Eloquent\Factories\Factory;
use Carbon\Carbon;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $rand = rand(1, 10);
        if ($rand === 10) {
            $deleted_at = Carbon::now();
        }else{
            $deleted_at = null;
        }

        $product_category_ids = ProductCategory::pluck('id')->all();
        $product_brand_ids = ProductBrand::pluck('id')->all();
        return [
            'product_code' => $this->faker->unique()->numerify('pid##########'),
            'shop_product_code' => $this->faker->unique()->numerify('shopPid##########'),
            'product_name' => $this->faker->realText(20),
            'product_img' => $this->faker->imageUrl($width = '400', $height = '200', 'cats', true, 'Faker'),
            'product_price' => $this->faker->numberBetween($min = 1000, $max = 30000),
            'product_stock' => $this->faker->numberBetween($min = 0, $max = 100),
            'jan_code' => $this->faker->unique()->ean13(),
            'catch_copy' => $this->faker->realText(40),
            'description' => $this->faker->realText(200),
            'category_id' => $this->faker->randomElement($product_category_ids),
            'brand_id' => $this->faker->randomElement($product_brand_ids),
            'memo' => $this->faker->realText(200),
            'deleted_at' => $deleted_at,
        ];
    }
}
