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
        Schema::create('staff', function (Blueprint $table) {
            $table->id();
            $table->string('name', 50);
//            $table->unsignedBigInteger('staff_role_id');
            $table->foreignId('staff_role_id')
                ->constrained('staff_roles')
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
        Schema::dropIfExists('staff');

    }
};
