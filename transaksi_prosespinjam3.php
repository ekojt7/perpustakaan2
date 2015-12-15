<?php
        include "koneksi.php";
        $nis = $_POST['nis'];
        $nama = $_POST['nama'];
        $tgl_pinjam = $_POST['tgl_pinjam'];
        $tgl_kembali = $_POST['tgl_kembali'];
        $no_inv = $_POST['no_inv'];
        $judul = $_POST['judul'];
        $jumlah = 1;
        $denda = 0;
        
        $query = mysql_query("insert into sirkulasi values ('','$nis','$nama','$no_inv','$judul','$tgl_pinjam',
        '$tgl_kembali','','$jumlah','$denda')");
        
        header('Location:transaksi_pinjamkonfirmasi.php');

?>


