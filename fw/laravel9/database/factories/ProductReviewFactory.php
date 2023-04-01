<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ProductReview>
 */
class ProductReviewFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $user_ids = User::pluck('id')->all();

        return [
            'user_id' => $this->faker->randomElement($user_ids),
            'content' => $this->faker->realText(200),
            'review_valuation' => $this->faker->numberBetween(1, 5),
        ];
    }
}
