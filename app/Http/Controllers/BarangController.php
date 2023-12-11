<?php

namespace App\Http\Controllers;
use App\Models\Cart; // Import model Cart
use App\Models\Barang;
use App\Models\Pesanan;
use Illuminate\Support\Facades\Redirect;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session; // Tambahkan ini untuk menggunakan Session
use Illuminate\Support\Facades\Auth; // Import fasilitas autentikasi


class BarangController extends Controller
{
    public function simpan(Request $request)
    {
        // Mencari data barang berdasarkan nama_barang
        $existingBarang = Barang::where('nama_barang', $request->nama_barang)->first();

        if (!$existingBarang) {
            // Jika data tidak ditemukan, maka buat data baru
            $barang = new Barang();
            $barang->nama_barang = $request->nama_barang;
            $barang->deskripsi = $request->deskripsi;
            $barang->harga = $request->harga;
            $barang->stok = $request->stok;
            $barang->gambar = $request->gambar;

            $barang->save();
        }

        // Redirect atau tindakan lain setelah penyimpanan berhasil
        return view('admin.dashboard');
    }

    public function deskripsi($id)
    {
        // Mengambil data barang berdasarkan ID
        $barang = Barang::findOrFail($id); // Menggunakan 'findOrFail' untuk menemukan barang berdasarkan ID, jika tidak ditemukan akan menampilkan halaman 404

        // Menampilkan halaman deskripsi dengan data barang yang ditemukan
        return view('user.deskripsi_barang', ['barang' => $barang]);
    }

    public function addToCart(Request $request, $id)
    {
        // Mendapatkan informasi barang yang dipilih oleh ID
        $barang = Barang::findOrFail($id);
    
        // Validasi jumlah yang diminta
        $request->validate([
            'jumlah' => 'required|numeric|min:1|max:' . $barang->stok
        ]);
    
        // Mendapatkan informasi pengguna yang sedang login
        $user = Auth::user();
    
        // Simpan barang ke dalam tabel carts bersamaan dengan user_id
        $cart = new Cart();
        $cart->user_id = $user->id; // Mengisi user_id dengan id pengguna yang sedang login
        $cart->barang_id = $id;
        $cart->jumlah = $request->input('jumlah');
        $cart->save();
    
        // Redirect ke halaman cart setelah berhasil menambahkan ke keranjang
        return redirect()->route('cart.index');
    }
    

    public function cart()
    {
        // Mendapatkan ID user yang saat ini login
        $userId = Auth::id();

        // Mengambil barang-barang yang dimiliki oleh user yang saat ini login
        $cartItems = Cart::where('user_id', $userId)->get();

        return view('user.cart', ['cartItems' => $cartItems]);
    }
    public function hapusDariKeranjang($id)
    {
        $cartItem = Cart::findOrFail($id);
        $cartItem->delete();
    
        // Kembali ke halaman cart dengan informasi terkini
        return redirect()->route('cart.index');
    }
    
    public function prosesPembelian(Request $request)
    {
        // Logika untuk proses pembelian
        $cart_id = $request->input('cart_id'); // Mengambil ID Cart dari request
    
        // Ambil informasi barang yang dibeli berdasarkan ID Cart
        $cartItems = Cart::where('id', $cart_id)->get();
    
        foreach ($cartItems as $cartItem) {
            // Simpan pesanan berdasarkan cart_id ke tabel pesanan
            Pesanan::create([
                'cart_id' => $cartItem->id, // Gunakan ID dari Cart, pastikan ada kolom 'cart_id' pada tabel Pesanan
                'barang_id' => $cartItem->barang_id,
                'jumlah' => $cartItem->jumlah,
                'user_id' => $cartItem->user_id
                // Tambahkan atribut lain jika diperlukan
            ]);
        }
    
        // Hapus item dari cart berdasarkan id cart
        Cart::where('id', $cart_id)->delete();
    
        // Redirect kembali ke halaman keranjang belanja
        return redirect()->route('cart.index');
    }
    
}