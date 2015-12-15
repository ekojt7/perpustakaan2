<?php
	session_start();
	if(empty($_SESSION['user']) OR empty($_SESSION['pass'])){
		header("Location:index.php");
	}else{
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

	<link rel="icon" type="icon" href="smkyaphar.png">
    <title>Perspustakaan SMK Yayasan Pharmasi</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css">
    <!-- Page Specific CSS -->
    <link rel="stylesheet" href="http://cdn.oesmith.co.uk/morris-0.4.3.min.css">
	<script language="JavaScript">
		var txt="Perspustakaan SMK Yayasan Pharmasi ....  ";
		var kecepatan=300;var segarkan=null;function bergerak() { document.title=txt;
		txt=txt.substring(1,txt.length)+txt.charAt(0);
		segarkan=setTimeout("bergerak()",kecepatan);}bergerak();
	</script>
  </head>

  <body>

    <div id="wrapper">

      <!-- Sidebar -->
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">Perpustakaan SMK Yayasan Pharmasi</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav side-nav">
            <li><a href="dashboard.php"><i class="fa fa-dashboard"></i> Dashboard</a></li>
            
			<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-book"></i>  Buku  <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="buku_tampil.php">Daftar Buku</a></li>
                <li><a href="buku_tambah.php">Tambah Buku</a></li>
                <li><a href="buku_cari.php">Cari Buku</a></li>
              </ul>
            </li>
			<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>  Anggota  <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="anggota_tampil.php">Daftar Anggota</a></li>
                <li><a href="anggota_tambah.php">Tambah Anggota</a></li>
                <li><a href="anggota_cari.php">Cari Anggota</a></li>
              </ul>
            </li>
			<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-refresh"></i>  Transaksi  <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="transaksi_pinjam.php">Peminjaman</a></li>
                <li><a href="transaksi_kembali.php">Pengembalian</a></li>
              </ul>
            </li>
			<li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-files-o"></i>  History  <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="history_buku.php">History Buku</a></li>
                <li><a href="history_peminjam.php">History Peminjam</a></li>
                <li><a href="history_pertanggal.php">History Per Tanggal</a></li>
              </ul>
            </li>
           <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bar-chart-o"></i>  Laporan  <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="laporan_buku.php">Laporan Daftar Buku</a></li>
                <li><a href="laporan_anggota.php">Laporan Daftar Anggota</a></li>
                <li><a href="laporan_peminjaman.php" target="_blank">Laporan Peminjaman Buku</a></li>
                <li><a href="laporan_bukuterbanyak.php">Buku Terbanyak Dipinjam</a></li>
                <li><a href="laporan_peminjamterbanyak.php">Peminjam Terbanyak</a></li>
              </ul>
            </li>
             <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-male"></i>  User  <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="user_tampil.php">Daftar User</a></li>
                <li><a href="user_tambah.php">Tambah User</a></li>
                </ul>
            </li>
          </ul>
		  
		<ul class="nav navbar-nav navbar-right navbar-user">
            
            <li>
              <a href="logout.php"><i class="fa fa-power-off"></i> Log Out </a>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </nav>

      <div id="page-wrapper">

        <div class="row">
          <div class="col-lg-12">
            <h1>Form Input Data Anggota</h1>
            
          </div>
        </div><!-- /.row -->
        <?php
            include "koneksi.php";
            $nis = $_GET['nis'];
	        $data = mysql_query("select * from siswa where nis='$nis'");
	        $d=mysql_fetch_array($data);
        ?>
        
        <div class="row">
            <form class="form-horizontal" action="anggota_prosesedit.php" method="post">
  <div class="form-group">
    <div class="col-sm-6">
      <input type="hidden" class="form-control" id="nis" placeholder="NIS" name="nis" value="<?php echo "$d[nis]"; ?>">
    </div>
  </div>
  <div class="form-group">
    <label for="nama" class="col-sm-2 control-label">Nama</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="nama" placeholder="Nama" name="nama" value="<?php echo "$d[nama]"; ?>">
    </div>
  </div>
  <div class="form-group">
    <label for="jenkel" class="col-sm-2 control-label">Jenis Kelamin</label>
    <div class="col-sm-6">
    <?php
    if($d[jenkel]=='Laki-laki'){
        echo "<div class='radio'>";
        echo "<label>";
        echo "<input type='radio' name='jenkel' id='Laki-laki' value='Laki-laki' checked>
        Laki-laki
        </label>
        </div>";
        echo "<div class='radio'>";
        echo "<label>";
        echo "<input type='radio' name='jenkel' id='Perempuan' value='Perempuan'>
        Perempuan
        </label>
        </div>";
    }
    elseif ($d[jenkel]=='Perempuan'){
        echo "<div class='radio'>";
        echo "<label>";
        echo "<input type='radio' name='jenkel' id='Laki-laki' value='Laki-laki'>
        Laki-laki
        </label>
        </div>";
        echo "<div class='radio'>";
        echo "<label>";
        echo "<input type='radio' name='jenkel' id='Perempuan' value='Perempuan' checked>
        Perempuan
        </label>
        </div>";
    }
 elseif ($d[jenkel]==''){
        echo "<div class='radio'>";
        echo "<label>";
        echo "<input type='radio' name='jenkel' id='Laki-laki' value='Laki-laki'>
        Laki-laki
        </label>
        </div>";
        echo "<div class='radio'>";
        echo "<label>";
        echo "<input type='radio' name='jenkel' id='Perempuan' value='Perempuan'>
        Perempuan
        </label>
        </div>";
    }
    ?>
  
</div>
</div>
  <div class="form-group">
    <label for="alamat" class="col-sm-2 control-label">Alamat</label>
    <div class="col-sm-6">
        <input type="text" class="form-control" id="alamat" name="alamat" value="<?php echo "$d[alamat]"; ?>">
        
    </div>
  </div>
  <div class="form-group">
    <label for="no_hp" class="col-sm-2 control-label">No. HP</label>
    <div class="col-sm-6">
      <input type="text" class="form-control" id="no_hp" placeholder="No. HP" name="no_hp" value="<?php echo "$d[no_hp]"; ?>">
    </div>
  </div>
  <div class="form-group">
        <label for="jurusan" class="col-sm-2 control-label">Jurusan</label>
            <div class="col-sm-2">
            <select class="form-control" name="jurusan">
                <?php
                    if ($d[jurusan] == 'Farmasi'){
                        echo "<option value=''>-- Pilih Jurusan --</option>";
                        echo "<option value='Farmasi' selected>Farmasi</option>";
                        echo "<option value='Kimia Industri'>Kimia Industri</option>";
                        echo "<option value='Pemasaran'>Pemasaran</option>";
                    }
                    else if ($d[jurusan] == 'Kimia Industri'){
                        echo "<option value=''>-- Pilih Jurusan --</option>";
                        echo "<option value='Farmasi'>Farmasi</option>";
                        echo "<option value='Kimia Industri' selected>Kimia Industri</option>";
                        echo "<option value='Pemasaran'>Pemasaran</option>";
                    }
                    else if ($d[jurusan] == 'Pemasaran'){
                        echo "<option value=''>-- Pilih Jurusan --</option>";
                        echo "<option value='Farmasi'>Farmasi</option>";
                        echo "<option value='Kimia Industri'>Kimia Industri</option>";
                        echo "<option value='Pemasaran' selected>Pemasaran</option>";
                    }
	 else if ($d[jurusan] == ''){
                        echo "<option value=''>-- Pilih Jurusan --</option>";
                        echo "<option value='Farmasi'>Farmasi</option>";
                        echo "<option value='Kimia Industri'>Kimia Industri</option>";
                        echo "<option value='Pemasaran'>Pemasaran</option>";
                    }
                ?>
               
            </select>
            </div>
   </div>
   
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary">Edit</button>
      <a href="anggota_tampil.php" class="btn btn-danger" type="submit">
        Batal
      </a>
    </div>
  </div>
</form>
        </div>

      </div><!-- /#page-wrapper -->

    </div><!-- /#wrapper -->

    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>

  </body>
</html>
<?php } ?>