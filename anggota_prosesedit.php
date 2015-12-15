<?php

        include "koneksi.php";

        $nis = $_POST['nis'];
        $nama = $_POST['nama'];
        $jenkel = $_POST['jenkel'];
        $alamat = $_POST['alamat'];
        $no_hp = $_POST['no_hp'];
        $jurusan = $_POST['jurusan'];
        
        $edit = mysql_query("update siswa set nama='$nama',jenkel='$jenkel',alamat='$alamat',no_hp='$no_hp',
            jurusan='$jurusan' where nis='$nis'");
        
       header('Location:anggota_tampil.php?berhasiledit=1');
        
?>