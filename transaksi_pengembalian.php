<?php
include "koneksi.php";

$id=$_GET['id'];

$data = mysql_query("select * from sirkulasi where id_transaksi='$id'");
$d=mysql_fetch_array($data);

$nis = $d['nis'];
$nama = $d['nama'];
$no_inv = $d['no_inv'];
$judul = $d['judul'];
$tgl_pinjam = $d['tgl_pinjam'];
$tgl_kembali = $d['tgl_kembali'];
$skr=time();
$tgl_diterima = date("Y-m-d", $skr);
$jumlah = $d['jumlah'];

$input = mysql_query("INSERT INTO history VALUES ('','$nis','$nama','$no_inv','$judul','$tgl_pinjam','$tgl_kembali','$tgl_diterima','$jumlah')");

mysql_query("delete from sirkulasi where id_transaksi='$id'");

header("Location:dashboard.php");
?>