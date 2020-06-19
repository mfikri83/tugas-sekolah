<?php
// Memmanggil conn.php untuk koneksi ke database
include "conn.php";

// Memanggil semua record yang telah dibuat di phpmyAdmin
$sql = "SELECT * FROM animal";

// Execetute query diatas
$query = mysqli_query($conn, $sql);
while ($dt = mysqli_fetch_array($query)) {     //Mengambil tabel animal dalam database db_pelindungsatwa
    $item[] = array(
        "animal_id" => $dt["animal_id"],           
        "animal_name" => $dt["animal_name"],
        "animal_latin" => $dt["animal_latin"],
        "animal_icon" => $dt["animal_icon"],
        "animal_desc" => $dt["animal_desc"]
    );
}

// Menampung data yang dihasilkan
$json = array(
    "result" => "Success",
    "item"  => $item
);

// Merubah data ke dalam bentuk JSON
echo json_encode($json);
