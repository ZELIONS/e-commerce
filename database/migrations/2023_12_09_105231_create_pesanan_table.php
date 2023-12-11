<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePesananTable extends Migration
{
    public function up()
    {
        Schema::create('pesanan', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('barang_id');
            $table->integer('jumlah');
            $table->unsignedBigInteger('user_id');

            // Tambahkan kolom lain sesuai kebutuhan untuk pesanan
            $table->timestamps();

            // Menambahkan foreign key constraint ke tabel barang
            $table->foreign('barang_id')->references('id')->on('barang')->onDelete('cascade');

            // Menambahkan foreign key constraint ke tabel users (jika diperlukan)
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');

        });
    }

    public function down()
    {
        Schema::dropIfExists('pesanan');
    }
}
