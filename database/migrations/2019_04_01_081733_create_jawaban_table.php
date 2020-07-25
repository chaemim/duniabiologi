<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateJawabanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::create('jawaban', function (Blueprint $table) {
            $table->increments('id');
            $table->string('jwb1');
            $table->string('jwb2');
            $table->string('jwb3');
            $table->string('jwb4');
            $table->string('jwb5');
            $table->integer('nilai');

            $table->integer('id_soal')->unsigned();
            $table->integer('id_user')->unsigned();
            $table->timestamps();

            $table->foreign('id_soal')->references('id')->on('type_soal');
            $table->foreign('id_user')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('jawaban');
    }
}
