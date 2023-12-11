<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Barang extends Model
{
    use HasFactory;

    protected $table = 'barang'; // Ganti 'nama_tabel_barang' dengan nama tabel yang sesuai di database Anda

    protected $fillable = [
        'nama_barang',
        'deskripsi',
        'harga',
        'stok',
        'gambar',
    ];
}