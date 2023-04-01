<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Payment;
use App\Models\ProductBrand;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(StaffRoleTableSeeder::class);
        $this->call(StaffTableSeeder::class);
        $this->call(DeliveryTableSeeder::class);
        $this->call(PaymentTableSeeder::class);
        $this->call(UserRankTableSeeder::class);
        $this->call(UserTableSeeder::class);
        $this->call(ProductBrandTableSeeder::class);
        $this->call(ProductCategoryTableSeeder::class);
        $this->call(OrderStatusTableSeeder::class);
        $this->call(ProductTableSeeder::class);
        $this->call(OrderTableSeeder::class);
        $this->call(OrderTotalTableSeeder::class);
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
