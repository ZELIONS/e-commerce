<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deskripsi Barang</title>
    <!-- Tautan ke Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 30px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 30px;
        }
        .card {
            border: none;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .card-body {
            padding: 30px;
        }
        .card-title {
            font-size: 24px;
            margin-bottom: 15px;
            color: #333;
        }
        .card-text {
            color: #555;
            line-height: 1.6;
        }
        .card-text:last-child {
            margin-bottom: 0;
        }
        .img-fluid {
            max-width: 100%;
            height: auto;
            display: block;
            margin-top: 20px;
            border-radius: 6px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Deskripsi Barang</h2>
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">{{ $barang->nama_barang }}</h5>
            <p class="card-text">{{ $barang->deskripsi }}</p>
            <p class="card-text">Harga: ${{ $barang->harga }}</p>
            <p class="card-text">Stok: {{ $barang->stok }}</p>
            <img src="{{ $barang->gambar }}" class="img-fluid" alt="{{ $barang->nama_barang }}">

             <!-- Form untuk menambahkan barang ke Cart -->
             <form action="{{ route('addToCart', ['id' => $barang->id]) }}" method="post">
                @csrf
                <div class="form-group">
                    <label for="jumlah">Jumlah:</label>
                    <input type="number" id="jumlah" name="jumlah" class="form-control" min="1" max="{{ $barang->stok }}" value="1" required>
                    <small class="form-text text-muted">Stok tersedia: {{ $barang->stok }}</small>
                </div>
                <button type="submit" class="btn btn-primary">Tambah ke Cart</button>
            </form>
        </div>
    </div>
</div>
<!-- Bagian untuk menampilkan total harga -->
<div class="container">
    <h4>Total Harga:</h4>
    <p id="total_harga"></p>
</div>

<script>
    // Ambil elemen input jumlah
    var inputJumlah = document.getElementById('jumlah');

    // Ketika nilai input jumlah berubah
    inputJumlah.addEventListener('input', function () {
        // Ambil nilai jumlah dan harga barang dari PHP
        var jumlah = inputJumlah.value;
        var hargaBarang = {{ $barang->harga }}; // Ambil harga barang dari variabel PHP

        // Hitung total harga
        var totalHarga = jumlah * hargaBarang;

        // Tampilkan total harga pada elemen dengan id total_harga
        document.getElementById('total_harga').innerHTML = 'Total Harga: $' + totalHarga;
    });
</script>


<!-- Tautan ke script Bootstrap JS (jika diperlukan) -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
