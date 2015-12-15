<?php

        include "koneksi.php";

        $no_inv = $_POST['no_inv'];
        $judul = $_POST['judul'];
        $pengarang = $_POST['pengarang'];
        $penerbit = $_POST['penerbit'];
        $kota = $_POST['kota'];
        $tahun = $_POST['tahun'];
        $kategori = $_POST['kategori'];
        $rak = $_POST['rak'];
        $jumlah = $_POST['jumlah'];
        
        $edit = mysql_query("update buku set judul='$judul',pengarang='$pengarang',penerbit='$penerbit',kota='$kota',
            tahun='$tahun',kategori='$kategori',rak='$rak',jumlah='$jumlah' where no_inv='$no_inv'");
        
         header('Location:buku_tampil.php?berhasiledit=1');
?>