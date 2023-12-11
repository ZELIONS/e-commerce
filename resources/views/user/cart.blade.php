<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Keranjang Belanja</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
        }
        .card {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Keranjang Belanja</h2>
    @if($cartItems && count($cartItems) > 0)
        @foreach($cartItems as $cartItem)
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-3">
                            <img src="{{ $cartItem->barang->gambar }}" alt="{{ $cartItem->barang->nama_barang }}" class="img-fluid">
                        </div>
                        <div class="col-md-6">
                            <h5 class="card-title">{{ $cartItem->barang->nama_barang }}</h5>
                            <p class="card-text">Jumlah: {{ $cartItem->jumlah }}</p>
                            <p class="card-text">Total Harga: ${{ $cartItem->barang->harga * $cartItem->jumlah }}</p>
                        </div>
                        <div class="col-md-3">
                            <form action="{{ route('hapusDariKeranjang', ['id' => $cartItem->id]) }}" method="post">
                                @csrf
                                <button type="submit" class="btn btn-danger">Hapus dari Keranjang</button>
                            </form>
                            <!-- Tombol Beli -->
                            <form action="{{ route('proses.pembelian') }}" method="post">                                @csrf
                                <input type="hidden" name="cart_id" value="{{ $cartItem->id }}">
                                <input type="hidden" name="jumlah" value="{{ $cartItem->jumlah }}">
                                <input type="hidden" name="user_id" value="{{ $cartItem->user_id }}">
                                <button type="submit" class="btn btn-primary">Beli</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    @else
        <p>Keranjang belanja Anda kosong.</p>
    @endif
</div>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
