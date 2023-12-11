<?php

namespace App\Http\Controllers;
use App\Models\Pesanan; 
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use App\Models\User;

class AdminController extends Controller
{
    public function index()
    {
        return view('admin.dashboard');
    }
    public function pembelian()
    {
        // Ambil data pembelian
        $purchases = Pesanan::all(); // Ganti dengan logika pengambilan data sesuai dengan kebutuhan
        foreach ($purchases as $purchase) {
            $totalHarga = $purchase->jumlah * $purchase->barang->harga;
            $purchase->total_harga = $totalHarga;
        }
        // Kirim data pembelian ke view pembelian.blade.php
        return view('admin.pembelian', compact('purchases'));
    }
}
