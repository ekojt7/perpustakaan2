<?php

        include "koneksi.php";

        $id_user = $_POST['id_user'];
        $user = $_POST['user'];
        $nama = $_POST['nama'];
        $paswd_lama = md5($_POST['paswd_lama']);
        $paswd_baru = md5($_POST['paswd_baru']);
       
         $data = mysql_query("select * from user where id_user='$id_user'");
         $d=mysql_fetch_array($data);
         
         if ($paswd_lama == $d[pass]){
            $edit = mysql_query("update user set user='$user',pass='$paswd_baru',nama='$nama' where id_user='$id_user'");
        
            header('Location:user_tampil.php?berhasiledit=1');
         }
         else {
            header('Location:user_tampil.php?salahpassword=1');
         }
       
        
        
?>