<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    /**
     * Do the migration
     */
    public function up()
    {
        Schema::create('deliveries', function (Blueprint $table) {
            $table->id();
            $table->string('delivery_name', 50);
            $table->smallInteger('delivery_cost');
            $table->text('memo');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Undo the migration
     */
    public function down()
    {
        Schema::dropIfExists('deliveries');
    }
};
