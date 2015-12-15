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
	    
	<!----- Backgroud animation ---->
	<link rel="stylesheet" href="slideshow/slideshow.css">
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
	<script src="slideshow/slideshow.js"></script>
	<script language="JavaScript">
		var txt="Perspustakaan SMK Yayasan Pharmasi ....  ";
		var kecepatan=300;var segarkan=null;function bergerak() { document.title=txt;
		txt=txt.substring(1,txt.length)+txt.charAt(0);
		segarkan=setTimeout("bergerak()",kecepatan);}bergerak();
	</script>

  </head>

  <body>
  <div id="bg-slideshow">
        <img src="images/1.jpg" alt="background" />
		<img src="images/2.jpg" alt="background" />
		<img src="images/3.jpg" alt="background" />
		<img src="images/4.jpg" alt="background" />
        <!-- Gambar yang lain akan dimasukkan kesini dengan bantuan dari jquery -->
    </div>

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
          <a class="navbar-brand" href="index.html">Perspustakaan SMK Yayasan Pharmasi</a>
        </div>

        

          <ul class="nav navbar-nav navbar-right navbar-user">
            <li>
              <a href="caribuku.php"><i class="fa fa-search"></i> Cari Buku   </a>
              </li>
            <li>
            <li>
              <a href="login.php"><i class="fa fa-user"></i> Login   </a>
              </li>
            <li>
              
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </nav>

      <div id="page-wrapper">

       
		
            
            
          </div>
          
		
      </div><!-- /#page-wrapper -->
	  
	 

    </div><!-- /#wrapper -->
       
    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>

  </body>
</html>