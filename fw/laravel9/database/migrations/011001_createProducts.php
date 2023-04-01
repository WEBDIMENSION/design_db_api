<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('product_code', 50);
            $table->string('shop_product_code', 50);
            $table->string('product_name', 50);
            $table->string('product_img', 255);
            $table->integer('product_price');
            $table->integer('product_stock');
            $table->string('jan_code', 50);
            $table->string('catch_copy', 255);
            $table->string('description', 255);
            $table->foreignId('category_id')
                ->constrained('product_categories')
                ->onUpdate('CASCADE')
                ->onDelete('CASCADE');
            $table->foreignId('brand_id')
                ->constrained('product_brands')
                ->onUpdate('CASCADE')
                ->onDelete('CASCADE');
            $table->text('memo');
            $table->timestamps();
            $table->softDeletes();
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');

    }

};
