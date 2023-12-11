<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Input Barang</title>
    <!-- Tautan ke Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Gaya tambahan jika diperlukan */
        /* Misalnya, atur lebar maksimum formulir */
        form {
            max-width: 500px;
            margin: 0 auto;
        }
    </style>
</head>
<body>

<div class="container mt-4">
    <h2>Form Input Barang</h2>

    <form action="/simpan" method="post">
        @csrf <!-- Ini untuk Laravel, gunakan csrf_field() jika tidak menggunakan Blade -->
        <div class="form-group">
            <label for="nama_barang">Nama Barang:</label>
            <input type="text" class="form-control" name="nama_barang" required>
        </div>

        <div class="form-group">
            <label for="deskripsi">Deskripsi:</label>
            <textarea class="form-control" name="deskripsi" required></textarea>
        </div>

        <div class="form-group">
            <label for="harga">Harga:</label>
            <input type="text" class="form-control" name="harga" required>
        </div>

        <div class="form-group">
            <label for="stok">Stok:</label>
            <input type="text" class="form-control" name="stok" required>
        </div>

        <div class="form-group">
            <label for="gambar">Gambar URL:</label>
            <input type="text" class="form-control" name="gambar">
        </div>

        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
</div>

<!-- Tautan ke script Bootstrap JS (jika diperlukan) -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
