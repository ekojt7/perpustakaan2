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
        
        $input = mysql_query("insert into buku values ('$no_inv','$judul','$pengarang','$penerbit','$kota',
        '$tahun','$kategori','$rak','$jumlah')");
        
       header('Location:buku_tambah.php?konfirmasi=1');

?>