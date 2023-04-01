<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\Staff;
use App\Models\StaffRole;
use Carbon\Carbon;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Staff>
 */
class StaffFactory extends Factory
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
        $staff_role_ids = StaffRole::pluck('id')->all();
        return [
            'name' => $this->faker->name,
            'staff_role_id' => $this->faker->randomElement($staff_role_ids),
            'memo' => $this->faker->realText($maxNbChars = 50, $indexSize = 2),
            'deleted_at' => $deleted_at,
        ];
    }
}
