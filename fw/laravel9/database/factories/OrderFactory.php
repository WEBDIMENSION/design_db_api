<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;
use App\Models\Staff;
use App\Models\OrderStatus;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Order>
 */
class OrderFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $staff_ids = Staff::pluck('id')->all();
        $user_count = User::count();
        $user_id = rand(1,$user_count);
        $user = User::find($user_id);
        $order_statues = OrderStatus::pluck('id')->all();
        return [
            'user_id' => $user['id'],
            'order_id' => $this->faker->dateTimeBetween('-5 years', '-1 years')->format('Y-m-d') . "_" . $this->faker->unique->randomNumber(9),
            'order_status_id' => $this->faker->randomElement($order_statues),
            'firstname' => $user['firstname'],
            'lastname' => $user['lastname'],
            'firstname_kana' => $user['firstname_kana'],
            'lastname_kana' => $user['lastname_kana'],
            'email' => $user['email'],
            'phone_number' => $user['phone_number'],
            'post_code' => $user['post_code'],
            'prefecture' => $user['prefecture'],
            'address1' => $user['address1'],
            'address2' => $user['address2'],
            'user_rank_id' => $user['user_rank_id'],
            'staff_id' => $this->faker->randomElement($staff_ids),
            'memo' => $this->faker->realText(200),
        ];
    }
}
