<?php

include "koneksi.php";

$nis=$_GET['nis'];

mysql_query("delete from siswa where nis='$nis'");

header("Location:anggota_tampil.php");
?>