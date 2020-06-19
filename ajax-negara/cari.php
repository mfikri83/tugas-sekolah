<?php
$conn = mysqli_connect("localhost","root","","db_negara");
$kata = $_POST['q'];

$query = mysqli_query($conn,"SELECT nama FROM negara WHERE nama LIKE '$kata%' LIMIT 10");
while ($k = mysqli_fetch_array($query)) {
    echo '<li onclick="isi(\'' . $k[0] . '\');" style="cursor:pointer">' . $k[0] . '</li>';
}

?>
