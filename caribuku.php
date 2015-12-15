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
            <h1>Data Rak Buku SMK Yayasan Pharmasi Semarang</h1>

            <div class="row">
            <table class="table table-condensed table-bordered table-hover" cellpadding="0" cellspacing="0">
<thead>
  <tr>
        <th width="10%"></th>
        <th width="70%" bgcolor="#00FFFF"><h2>KATEGORI</h2></th>
        <th bgcolor="#00FFFF"><h2>RAK</h2></th>
  </tr>
  
</thead>
<tbody>
  <tr>
        <th></th>
        <th><h2>Ensiklopedi , Ilmu Resep / Farmasi</h2></th>
        <th><h2>A</h2></th>
  </tr>
  <tr>
        <th></th>
        <th><h2>Ekonomi/Pajak , Arsip Buku , Ekonomi Managemen</h2></th>
        <th><h2>B</h2></th>
  </tr>
  <tr>
        <th></th>
        <th><h2>Kimia , Managemen</h2></th>
        <th><h2>C</h2></th>
  </tr>
  <tr>
        <th></th>
        <th><h2>Bahasa Inggris , Kamus , Ilmu Filsafat , Psikologi</h2></th>
        <th><h2>D</h2></th>
  </tr>
   <tr>
        <th></th>
        <th><h2>Ilmu Resep , Ilmu Teknik</h2></th>
        <th><h2>E</h2></th>
  </tr>
   <tr>
        <th></th>
        <th><h2>Sejarah , PKn, Kesehatan</h2></th>
        <th><h2>F</h2></th>
  </tr>
  <tr>
        <th></th>
        <th><h2>Komputer / Ilmu Terapan , IKM, Kesusasteraan , Ekonomi</h2></th>
        <th><h2>G</h2></th>
  </tr>
  <tr>
        <th></th>
        <th><h2>Farmakognosi , IPA , Matematika , Farmakologi</h2></th>
        <th><h2>H</h2></th>
  </tr>
  <tr>
        <th></th>
        <th><h2>Agama , Fisika, Lain - lain</h2></th>
        <th><h2>I</h2></th>
  </tr>
</tbody>
</table>
            <h1>Form Pencarian Buku</h1>
            
          </div>
        </div><!-- /.row -->
        
        <div class="row">
            <form class="form-inline" action="caribuku_proses.php" method="post">
  <div class="form-group">
    <select class="form-control" name="cari">
  <option value="0">-- Cari Berdasarkan --</option>
  <option value="no_inv">No.Inv</option>
  <option value="judul">Judul</option>
  <option value="pengarang">Pengarang</option>
  <option value="penerbit">Penerbit</option>
  <option value="kota">Kota</option>
  <option value="tahun">Tahun</option>
  <option value="kategori">Kategori</option>
  <option value="rak">Rak</option>
  <option value="jumlah">Jumlah</option>
</select>
  </div>
  <div class="form-group">
    
    <input type="text" class="form-control" id="katakunci" placeholder="Masukan kata kunci" name="katakunci">
    
  </div>
  
  <button type="submit" class="btn btn-primary">Cari</button>
</form>
        </div>

      </div><!-- /#page-wrapper -->

    </div><!-- /#wrapper -->

    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>

  </body>
</html>