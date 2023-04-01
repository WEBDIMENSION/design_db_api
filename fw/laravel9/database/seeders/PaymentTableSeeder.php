<?php

namespace Database\Seeders;

use App\Models\Payment;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Factories\Sequence;

class PaymentTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $payments = [
            ['payment_name' => 'クレジットカード', 'payment_cost' => 0],
            ['payment_name' => 'コンビニ', 'payment_cost' => 300],
            ['payment_name' => '銀行振込', 'payment_cost' => 100]
        ];
        Payment::factory(count($payments))
            ->state(new Sequence(...$payments))
            ->create();
    }
}
