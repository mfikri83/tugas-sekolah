<?php

// ambil data file

$nama = $_POST['nama'];
$namaFile = $_FILES['picture']['name'];
$namaSementara = $_FILES['picture']['tmp_name'];
$komentar = $_POST['komentar'];

// Menentukan lokasi file akan dipindahkan
$direktoriUpload = "upload/";

// pindahkan file
$teruploadGambar = move_uploaded_file($namaSementara, $direktoriUpload . $namaFile);

if ($teruploadGambar) {
    echo "Nama Anda = $nama <br>" ;
    echo "Foto berhasil di upload!<br>";
    echo "Link: <a href='" . $direktoriUpload . $namaFile . "'>" . $namaFile . "</a><br>";
    echo "Komentar = $komentar <br>";
} else {
    echo "Upload Gagal!";
}
