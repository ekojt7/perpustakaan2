<!DOCTYPE HTML>
<head>
	<meta http-equiv="content-type" content="text/html" />
	<meta name="author" content="Boomer" />

    <link rel="icon" type="icon" href="smkyaphar.png">
	<title>Login</title>
    
     <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    
    <script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>
<!-- This is a very simple parallax effect achieved by simple CSS 3 multiple backgrounds, made by http://twitter.com/msurguy -->
    
    <style>
    body{
    background: url(http://mymaplist.com/img/parallax/back.png);
	background-color: #444;
    background: url(http://mymaplist.com/img/parallax/pinlayer2.png),url(http://mymaplist.com/img/parallax/pinlayer1.png),url(http://mymaplist.com/img/parallax/back.png);    
}

.vertical-offset-100{
    padding-top:100px;
}
    </style>
    
    <script language="JavaScript">
		var txt="Perspustakaan SMK Yayasan Pharmasi ....  ";
		var kecepatan=300;var segarkan=null;function bergerak() { document.title=txt;
		txt=txt.substring(1,txt.length)+txt.charAt(0);
		segarkan=setTimeout("bergerak()",kecepatan);}bergerak();
	</script>

</head>

<body>

<div class="container">
    <div class="row vertical-offset-100">
    	<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Form Login</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form role="form" action="login_proses.php" method="post">
                    <fieldset>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="Username" name="username" type="text">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Password" name="password" type="password" value="">
			    		</div>
			    		<input class="btn btn-lg btn-success btn-block" type="submit" value="Login">
                        <a href="index.php" class="btn btn-lg btn-danger btn-block" type="submit">
                        Batal
                        </a>
			    	</fieldset>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>

</body>

<!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>

<script>
$(document).ready(function(){
  $(document).mousemove(function(e){
     TweenLite.to($('body'), 
        .5, 
        { css: 
            {
                'background-position':parseInt(event.pageX/8) + "px "+parseInt(event.pageY/12)+"px, "+parseInt(event.pageX/15)+"px "+parseInt(event.pageY/15)+"px, "+parseInt(event.pageX/30)+"px "+parseInt(event.pageY/30)+"px"
            }
        });
  });
});
</script>
</html>