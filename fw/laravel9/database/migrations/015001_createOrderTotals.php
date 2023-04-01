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
        Schema::create('order_totals', function (Blueprint $table) {
            $table->id();
            $table->foreignId('order_id')
                ->constrained('orders')
                ->onUpdate('CASCADE')
                ->onDelete('CASCADE');
            $table->integer('sub_total');
            $table->string('delivery_id',11);
            $table->string('delivery_name', 50);
            $table->integer('delivery_cost');
            $table->string('payment_id', 11);
            $table->string('payment_name', 50);
            $table->integer('payment_cost');
            $table->integer('total_cost');
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
        Schema::dropIfExists('order_totals');

    }

};
