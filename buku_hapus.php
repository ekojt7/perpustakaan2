<?php

include "koneksi.php";

$no_inv=$_GET['no_inv'];

mysql_query("delete from buku where no_inv='$no_inv'");

header("Location:buku_tampil.php");
?>