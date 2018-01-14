<?php
session_start();
$host        = "host=localhost";
	$port        = "port=5432";
	$dbname      = "dbname=tourist";
	$credentials = "user=postgres password=s!m97put";

	$db = pg_connect( "$host $port $dbname $credentials"  );
	if(!$db){
	  echo "Error : Unable to open database\n";
	}
	
	$i = 0;
	foreach($_POST['checkbox'] as $checkbox){
    $ar[$i] = (string)$checkbox;
	$i++;
}
	$str = implode(",", $ar);
	
	$_SESSION['place'] = $str;

	$city = (string) $_SESSION['city'];
$sql =<<<EOF
      select name,Number_of_stars,phone,Type_of_room,food_type from hotel where city = '$city' and Number_of_rooms_available > 0 and lodging = 'yes';
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   $i = 0;
   $name = array();
   $stars = array();
   $phone = array();
   $room = array();
   $food = array();
   
   while($row = pg_fetch_row($ret)){
		  $name[$i] = $row[0];
		  $stars[$i] = $row[1];
		  $phone[$i] = $row[2];
		  $room[$i] = $row[3];
		  $food[$i] = $row[4];
		  $i++;
   }

?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<link href="Maxim/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="Maxim/css/style.css" rel="stylesheet">
    <link href="Maxim/color/default.css" rel="stylesheet">
    <link rel="shortcut icon" href="Maxim/img/favicon.ico">
	

    <title>Indian tourist</title>

    <!-- Bootstrap Core CSS -->
    <link href="Maxim/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="Maxim/css/1-col-portfolio.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	
	<link href="Maxim/css/bootstrap-responsive.css" rel="stylesheet">
	<link href="Maxim/css/style.css" rel="stylesheet">
	<link href="Maxim/color/default.css" rel="stylesheet">
	<link rel="shortcut icon" href="Maxim/img/favicon.ico">
    <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
	<link href="css/bootstrap-responsive.css" rel="stylesheet">
	<!--<link href="css/style.css" rel="stylesheet">-->
	<link href="color/default.css" rel="stylesheet">
	<link href="radio.css" rel="stylesheet">

</head>

<body>
<div class="navbar-wrapper">
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<!-- Responsive navbar -->
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
				</a>
				<h1 class="brand"><a href="index.html">Indian Tourist</a></h1>
				<!-- navigation -->
				<nav class="pull-right nav-collapse collapse">
				<ul id="menu-main" class="nav">
					<li><a title="team" href="#about">About</a></li>
					<li><a title="services" href="#services">Services</a></li>
					<li><a title="works" href="#works">Works</a></li>
					<li><a title="blog" href="#blog">Blog</a></li>
					<li><a title="contact" href="#contact">Contact</a></li>
					<li><a href="login">Login</a></li>
				</ul>
				</nav>
			</div>
		</div>
	</div>
</div>
<br><br><br><br><br>
    <!-- Navigation -->
    

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"><?php echo  $city;?>
                    <small></small>
                </h1>
            </div>
        </div>
        <!-- /.row -->

<form method="post" action="guide.php">

  <?php
    for($j=($i - 1); $j>=0; $j--) { ?>
	
	 
       
            
      <input type="radio" name="radio" id="radio2" value="<?= $name[$j] ?>" >
		<label for="radio2"><?= $name[$j] ?></label><br><br><?= $stars[$j] ?><br><br><?= $phone[$j] ?><br><br><?= $room[$j] ?><br><br><?= $food[$j] ?>
	
	
  <?php
    } ?>

<br><br>
<input type="submit" value="Click to see guides near the place"/>
</form>
		
		
		
        <!-- Footer -->
<footer>
<div class="container">
	<div class="row">
		<div class="span6 offset3">
			<ul class="social-networks">
				<li><a href="#"><i class="icon-circled icon-bgdark icon-instagram icon-2x"></i></a></li>
				<li><a href="#"><i class="icon-circled icon-bgdark icon-twitter icon-2x"></i></a></li>
				<li><a href="#"><i class="icon-circled icon-bgdark icon-dribbble icon-2x"></i></a></li>
				<li><a href="#"><i class="icon-circled icon-bgdark icon-pinterest icon-2x"></i></a></li>
			</ul>
			<p class="copyright">
				&copy; Maxim Theme. All rights reserved.
                <div class="credits">
                    <!-- 
                        All the links in the footer should remain intact. 
                        You can delete the links only if you purchased the pro version.
                        Licensing information: https://bootstrapmade.com/license/
                        Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Maxim
                    -->
                    <a href="https://bootstrapmade.com/">Free Bootstrap Themes</a> by BootstrapMade.com
                </div>
			</p>
		</div>
	</div>
</div>

    
    <!-- /.container -->
	   </footer>

    <!-- jQuery -->
    <script src="js1/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js1/bootstrap.min.js"></script>
	<a href="#" class="scrollup"><i class="icon-angle-up icon-square icon-bgdark icon-2x"></i></a>
<script src="js/jquery.js"></script>
<script src="js/jquery.scrollTo.js"></script>
<script src="js/jquery.nav.js"></script>
<script src="js/jquery.localscroll-1.2.7-min.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/isotope.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/inview.js"></script>
<script src="js/animate.js"></script>
<script src="js/validate.js"></script>
<script src="js/custom.js"></script>
<script src="contactform/contactform.js"></script>


</body>

</html>

