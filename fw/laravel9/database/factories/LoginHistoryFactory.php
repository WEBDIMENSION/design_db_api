<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\LoginHistory>
 */
class LoginHistoryFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $login_date = $this->faker->dateTimeBetween('-3year', '-1day');
        return [
            'date' => $login_date,
            'created_at' => $login_date,
            'updated_at' => $login_date,
            'ua' => $this->faker->userAgent,
            'ipv4' => $this->faker->ipv4,
        ];
    }
}
