<?php

        include "koneksi.php";

        $nis = $_POST['nis'];
        $nama = $_POST['nama'];
        $jenkel = $_POST['jenkel'];
        $alamat = $_POST['alamat'];
        $no_hp = $_POST['no_hp'];
        $jurusan = $_POST['jurusan'];
        
        $input = mysql_query("insert into siswa values ('$nis','$nama','$jenkel','$alamat','$no_hp',
        '$jurusan')");
        
       header('Location:anggota_tambah.php?konfirmasi=1');
        
?>