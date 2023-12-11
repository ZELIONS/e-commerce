<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCartsTable extends Migration
{
    public function up()
    {
        Schema::create('carts', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('barang_id');
            $table->integer('jumlah'); // Menyimpan jumlah barang dalam keranjang
            $table->unsignedBigInteger('user_id'); // Jika keranjang berhubungan dengan pengguna tertentu
            $table->timestamps();

            // Menambahkan foreign key constraint ke tabel barang
            $table->foreign('barang_id')->references('id')->on('barang')->onDelete('cascade');

            // Jika keranjang terkait dengan pengguna
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::dropIfExists('carts');
    }
}
