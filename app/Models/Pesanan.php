<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pesanan extends Model
{
    protected $table = 'pesanan'; // Nama tabel yang sesuai

    // Definisikan kolom-kolom yang bisa diisi (fillable) sesuai kebutuhan
    protected $fillable = [
        'barang_id',
        'jumlah',
        'user_id',
        // Tambahkan atribut lainnya sesuai kebutuhan
    ];

    // Relasi ke model Barang (jika diperlukan)
    public function barang()
    {
        return $this->belongsTo(Barang::class, 'barang_id');
    }

    // Relasi ke model User (jika diperlukan)
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    // Metode atau scope tambahan sesuai kebutuhan
}
