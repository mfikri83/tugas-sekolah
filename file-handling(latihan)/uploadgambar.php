<?php

// ambil data file

$nama = $_POST['nama'];
$kelas = $_POST['kelas'];
$sekolah = $_POST['sekolah'];
$namaFile = $_FILES['gambar']['name'];
$namaSementara = $_FILES['gambar']['tmp_name'];
$komentar = $_POST['komentar'];

// Menentukan lokasi file akan dipindahkan
$direktoriUpload = "upload/";

// pindahkan file
$teruploadGambar = move_uploaded_file($namaSementara, $direktoriUpload . $namaFile);


if ($teruploadGambar) {
    echo "Nama Anda = $nama <br>";
    echo "Kelas Anda = $kelas <br>";
    echo "Sekolah Anda = $sekolah <br>";
    echo "Foto berhasil di upload!<br>";
    echo "Link: <a href='" . $direktoriUpload . $namaFile . "'>" . $namaFile . "</a><br>";
    echo "Komentar = $komentar <br>";
} else {
    echo "Upload Gagal!";
}
