<?php

include "koneksi.php";

$id_user=$_GET['id_user'];

mysql_query("delete from user where id_user='$id_user'");

header("Location:user_tampil.php");
?>