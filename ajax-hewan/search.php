<?php
$conn = mysqli_connect("localhost","root","","db_hewan");
$kata = $_POST['q'];

$query = mysqli_query($conn,"SELECT namahewan FROM hewan WHERE namahewan LIKE '$kata%' LIMIT 5");
while ($k = mysqli_fetch_array($query)) {
    echo '<li onclick="isi(\'' . $k[0] . '\');" style="cursor:pointer">' . $k[0] . '</li>';
}
