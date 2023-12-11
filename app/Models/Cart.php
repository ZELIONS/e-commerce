<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    protected $fillable = ['barang_id', 'jumlah'];

    public function barang()
    {
        return $this->belongsTo(Barang::class, 'barang_id');
    }
}

