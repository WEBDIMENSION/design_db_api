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
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->string('order_id', 50);
            $table->foreignId('user_id')
                ->constrained('users')
                ->onUpdate('CASCADE')
                ->onDelete('CASCADE');
            $table->foreignId('order_status_id')
                ->constrained('order_statuses')
                ->onUpdate('CASCADE')
                ->onDelete('CASCADE');
            $table->string('firstname', 190);
            $table->string('lastname', 190);
            $table->string('firstname_kana', 255);
            $table->string('lastname_kana', 255 );
            $table->string('email', 255 );
            $table->string('phone_number', 15 );
            $table->string('post_code', 15 );
            $table->string('prefecture', 7);
            $table->string('address1', 100);
            $table->string('address2', 100);
            $table->foreignId('user_rank_id')
                ->constrained('users')
                ->onUpdate('CASCADE')
                ->onDelete('CASCADE');
            $table->foreignId('staff_id')
                ->constrained('staff')
                ->onUpdate('CASCADE')
                ->onDelete('CASCADE');
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
        Schema::dropIfExists('orders');

    }
};
