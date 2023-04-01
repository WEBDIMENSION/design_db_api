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
        Schema::create('users', function (Blueprint $table) {
            $table->id();
            $table->string('firstname', 190);
            $table->string('lastname', 190);
            $table->string('firstname_kana', 255);
            $table->string('lastname_kana', 255);
            $table->date('birthday');
            $table->string('email')->unique();;
            $table->string('phone_number', 15);
            $table->string('password', 255);
            $table->string('post_code', 7);
            $table->string('prefecture', 10);
            $table->string('address1', 100);
            $table->string('address2', 100);
            $table->foreignId('user_rank_id')
                ->constrained('user_ranks')
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
        Schema::dropIfExists('users');
    }

};
