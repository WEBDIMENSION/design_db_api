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
        Schema::create('order_details', function (Blueprint $table) {
            $table->id();
            $table->foreignId('order_id')
                ->constrained('orders')
                ->onUpdate('CASCADE')
                ->onDelete('CASCADE');
            $table->bigInteger('product_id');
            $table->string('product_code', 54);
            $table->string('shop_product_code', 54);
            $table->string('product_name', 54);
            $table->integer('product_price');
            $table->integer('product_quantity');
            $table->string('jan_code', 50);
            $table->string('category_id', 50);
            $table->string('brand_id', 50);
            $table->text('memo');
            $table->timestamps();
            $table->softDeletes();
            $table->index('order_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('order_details');

    }
};
