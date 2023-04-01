<?php

namespace Database\Seeders;

use App\Models\ProductBrand;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Eloquent\Factories\Sequence;
use Illuminate\Database\Seeder;

class ProductBrandTableSeeder extends Seeder

{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $brands = [
            ['brand_name' => 'Brand001'],
            ['brand_name' => 'Brand002'],
            ['brand_name' => 'Brand003'],
            ['brand_name' => 'Brand004'],
            ['brand_name' => 'Brand005'],
            ['brand_name' => 'Brand006'],
            ['brand_name' => 'Brand007'],
            ['brand_name' => 'Brand008'],
            ['brand_name' => 'Brand009'],
            ['brand_name' => 'Brand010'],
        ];
        ProductBrand::factory(count($brands))
            ->state(new Sequence(...$brands))
            ->create();
    }
}
