<?php

        include "koneksi.php";

        $user = $_POST['user'];
        $paswd = $_POST['paswd'];
        $nama = $_POST['nama'];
       
        $input = mysql_query("insert into user values ('','$user',MD5('$paswd'),'$nama')");
        
       header('Location:user_tambah.php?konfirmasi=1');
        
?>