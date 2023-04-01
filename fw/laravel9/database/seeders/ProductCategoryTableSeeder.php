<?php

namespace Database\Seeders;

use App\Models\ProductCategory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Eloquent\Factories\Sequence;
use Illuminate\Database\Seeder;


class ProductCategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $categories = [
            ['category_name' => 'category001'],
            ['category_name' => 'category002'],
            ['category_name' => 'category003'],
            ['category_name' => 'category004'],
            ['category_name' => 'category005'],
            ['category_name' => 'category006'],
            ['category_name' => 'category007'],
            ['category_name' => 'category008'],
            ['category_name' => 'category009'],
            ['category_name' => 'category010'],

        ];
        ProductCategory::factory(count($categories))
            ->state(new Sequence(...$categories))
            ->create();
    }
}
