<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->integer('user_id')->unsigned()->nullable();
            $table->string('billing_email')->nullable();
            $table->string('billing_name')->nullable();
            $table->string('billing_address')->nullable();
            $table->text('closest_address');
            $table->string('billing_city')->nullable();
            $table->string('billing_postalcode')->nullable();
            $table->string('billing_state')->nullable();
            $table->string('billing_phone')->nullable();
            $table->double('billing_subtotal');
            $table->double('billing_tax');
            $table->double('billing_total');
            $table->string('payment_gateway')->default('cash');
            $table->boolean('shipped')->default(false);
            $table->timestamps();
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
}
