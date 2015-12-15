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
            <h1>Laporan Daftar Buku</h1>
            
          </div>
        </div><!-- /.row -->
        
        <div class="row">
            <form class="form-inline" action="laporan_bukucetak.php" method="post" target="_blank">
  <div class="form-group">
    <select class="form-control" name="cari">
  <option value="0">-- Pilih Berdasarkan --</option>
  <option value="semua">Semua</option>
  <option value="rak">Rak</option>
  <option value="kategori">Kategori</option>
  <option value="penerbit">Penerbit</option>
    </select>
  </div>
  <div class="form-group">
    
    <input type="text" class="form-control" id="katakunci" placeholder="Masukan kata kunci" name="katakunci">
    
  </div>
  
  <button type="submit" class="btn btn-primary">Cetak</button>
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