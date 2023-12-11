<?php

namespace App\Http\Controllers;
use App\Models\Barang;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        $barangs = Barang::all(); 
        return view('user.dashboard', ['barangs' => $barangs]); // Mengirimkan variabel $barangs ke tampilan
    }
    public function awal()
    {
        return view('awal');
    }
}
