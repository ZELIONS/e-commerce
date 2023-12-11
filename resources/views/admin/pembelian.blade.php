<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Barang Dibeli</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .card {
            height: 100%;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Daftar Barang Dibeli</h2>
    <div class="row">
        @foreach($purchases as $purchase)
            <div class="col-md-4">
                <div class="card mb-4 shadow-sm">
                    <img src="{{ $purchase->barang->gambar }}" class="card-img-top" alt="{{ $purchase->barang->nama_barang }}">
                    <div class="card-body">
                        <h5 class="card-title">{{ $purchase->barang->nama_barang }}</h5>
                        <p class="card-text">Jumlah: {{ $purchase->jumlah }}</p>
                        <p class="card-text">Total Harga: ${{ number_format($purchase->total_harga, 2) }}</p>
                        <!-- Tambahkan detail lainnya jika diperlukan -->
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Pembeli: {{ $purchase->user->name }}</small>
                        <br>
                        <small class="text-muted">Tanggal Beli: {{ $purchase->created_at }}</small>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
