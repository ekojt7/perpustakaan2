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
      <?php
        if (isset($_GET['perpanjangbuku'])) {
			echo "<div id='form_alert' style='color:#DD1144' class='alert alert-success'>";
			echo "<a class='close' data-dismiss='alert' href='#'>x</a>Buku berhasil diperpanjang !";
			echo "</div>";
		}
      ?>

        <div class="row">
          <div class="col-lg-12">
            <h1>Data Peminjaman Buku</h1>
            
          </div>
        </div><!-- /.row -->
        
        
        <div class="row">
         <table class="table table-condensed table-bordered table-hover" cellpadding="0" cellspacing="0">
<thead>
	<tr>
        <th>NIS</th>
		<th>Nama</th>
        <th>No.Inv</th>
        <th>Judul</th>
        <th>Tanggal Pinjam</th>
        <th>Tanggal Kembali</th>
        <th>Tanggal Terima</th>
        <th>Denda</th>
        <th>Perpanjang</th>
        <th>Kembalikan</th>
    </tr>
</thead>
<tbody>
<?php
        include "koneksi.php";
        $skr=time();
        $tgl_diterima = date("Y-m-d", $skr);
        
        
        $nis =$_POST['nis'];
        $query=mysql_query("select * from sirkulasi where nis='$nis'");
        
        
        // tampilkan data mahasiswa selama masih ada
		while($data = mysql_fetch_array($query)) {
		  $tgl_kembali = $data['tgl_kembali'];
          $sekarang = time();
          $tanggal_diterima = date("Y-m-d", $sekarang);
          if ($tanggal_diterima > $tgl_kembali) {
            $jmlhari = mysql_query("SELECT DATEDIFF('".$tanggal_diterima."','".$tgl_kembali."') AS jml");
            $row	= mysql_fetch_array($jmlhari);
            $denda = 200;
            $hitungdenda = $denda * $row['jml'];
          }
          else {
            $hitungdenda = 0;
          }
        ?>
       <tr>
        <td><?php echo $data['nis']; ?></td>
		<td><?php echo $data['nama']; ?></td>
        <td><?php echo $data['no_inv']; ?></td>
		<td><?php echo $data['judul']; ?></td>
		<td><?php echo $data['tgl_pinjam']; ?></td>
		<td><?php echo $data['tgl_kembali']; ?></td>
        <td><?php echo $tgl_diterima; ?></td>
		<td><?php echo $hitungdenda; ?></td>
        
        <td><a class="btn btn-warning" href="<?php echo "transaksi_perpanjang.php?id=$data[id_transaksi]"; ?>">Perpanjang</a></td>
        <td><a class="btn btn-danger" href="<?php echo "transaksi_pengembalian.php?id=$data[id_transaksi]"; ?>">Kembalikan
            </a></td>
        <?php
        
        }
        ?>
  </tr>
</tbody>
</table>

            
        </div>

        

      </div><!-- /#page-wrapper -->

    </div><!-- /#wrapper -->

    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>
   

  </body>
</html>

<?php } ?>