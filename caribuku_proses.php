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
            <h1>Data Buku Perpustakaan SMK Yayasan Pharmasi</h1>
            
          </div>
        </div><!-- /.row -->
        
       
 <div class="row">
            <table class="table table-condensed table-bordered table-hover" cellpadding="0" cellspacing="0">
<thead>
	<tr>
        <th>No.Inv</th>
		<th>Judul</th>
        <th>Pengarang</th>
        <th>Penerbit</th>
        <th>Kota</th>
        <th>Tahun</th>
        <th>Kategori</th>
        <th>Rak</th>
        <th>Jumlah</th>
        <th>Edit</th>
        <th>Hapus</th>
    </tr>
</thead>
<tbody>
	
    <?php
        include "koneksi.php";
        $cari = $_POST['cari'];
        $katakunci = $_POST['katakunci'];
       
		$query = "SELECT * FROM buku WHERE $cari LIKE '%$katakunci%'";
        $result = mysql_query($query);
	
		// tampilkan data mahasiswa selama masih ada
        while($data = mysql_fetch_array($result)) {
	       	  
	?>
	<tr>
        <td><?php echo $data['no_inv']; ?></td>
		<td><?php echo $data['judul']; ?></td>
        <td><?php echo $data['pengarang']; ?></td>
		<td><?php echo $data['penerbit']; ?></td>
		<td><?php echo $data['kota']; ?></td>
		<td><?php echo $data['tahun']; ?></td>
        <td><?php echo $data['kategori']; ?></td>
		<td><?php echo $data['rak']; ?></td>
        <td><?php echo $data['jumlah']; ?></td>
        <td><a class="btn btn-warning fa fa-edit" href="<?php echo "buku_edit.php?no_inv=$data[no_inv]"; ?>"></a></td>
        <td><a class="btn btn-danger fa fa-trash-o" href="<?php echo "buku_hapus.php?no_inv=$data[no_inv]"; ?>" onclick="return confirm('Apakah anda yakin akan menghapus data ini?')">
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
