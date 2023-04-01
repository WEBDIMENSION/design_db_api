<?php

namespace Database\Factories;

use App\Models\UserRank;
use Illuminate\Database\Eloquent\Factories\Factory;
use Carbon\Carbon;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class UserFactory extends Factory
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

        $user_rank_ids = UserRank::pluck('id')->all();
        return [
            'firstname' => $this->faker->firstname,
            'lastname' => $this->faker->lastname,
            'firstname_kana' => $this->faker->firstKanaName,
            'lastname_kana' => $this->faker->lastKanaName,
            'birthday' => $this->faker->dateTimeBetween('-80 years','-18 years')->format('Y-m-d'),
            'email' => $this->faker->email,
            'phone_number' => $this->faker->phonenumber,
            'password' => $this->faker->md5,
            'post_code' => $this->faker->postcode,
            'prefecture' => $this->faker->prefecture,
            'address1' => $this->faker->word . $this->faker->city,
            'address2' => $this->faker->streetAddress . $this->faker->secondaryAddress,
            'user_rank_id' => $this->faker->randomElement($user_rank_ids),
            'memo' => $this->faker->realText(50),
            'deleted_at' => $deleted_at,
        ];
    }
}
