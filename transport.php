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
	$str = (string)$_POST['radio'];
	$_SESSION['guide'] = $str;
	echo $_SESSION['guide'];
	$uname =(string)$_SESSION['username'];
	$d=(string)$_SESSION['date'];
	$city = (string) $_SESSION['city'];
$sql =<<<EOF
      select driver_name,cab_type,phone,price from cab where availability = 'yes' and from_city in (select city from user_details where username = '$uname') and to_city=$city and departure>'$d';
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   $i = 0;
   $cname = array();
   $ctype = array();
   $phone = array();
   $cprice = array();
   while($row = pg_fetch_row($ret)){
		  $cname[$i] = $row[0];
		  $ctype[$i] = $row[1];
		  $phone[$i] = $row[2];
		  $cprice[$i] = $row[3];
		  $i++;
   }
   
   $sql =<<<EOF
      select Type_of_bus,price from bus where seats_available>0 and from_city in (select city from user_details where username = '$uname') and to_city=$city and departure>'$d';
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   $j = 0;
   $btype = array();
   $bprice = array();
   while($row = pg_fetch_row($ret)){
		  
		  $btype[$j] = $row[0];
		  
		  $bprice[$j] = $row[1];
		  $j++;
   }

$sql =<<<EOF
      select name_of_airline,price from airlines where number_of_seats>0 and from_airport in (select city from user_details where username = '$uname') and to_airport=$city and depart_time>'$d';
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   $k = 0;
   $aname = array();
   $aprice = array();
   while($row = pg_fetch_row($ret)){
		  
		  $aname[$k] = $row[0];
		  
		  $aprice[$k] = $row[1];
		  $k++;
   }

   $sql =<<<EOF
      select price from train where from_city in (select city from user_details where username = '$uname') and to_city=$city and depart_time>'$d';
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   $l = 0;
   $tprice = array();
   while($row = pg_fetch_row($ret)){
		  $tprice[$l] = $row[1];
		  $l++;
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
                <h1 class="page-header">Transport
                    <small></small>
                </h1>
            </div>
        </div>
        <!-- /.row -->

<form method="post" action="transport.php">

  <?php
    for($x=($i - 1); $x>=0; $x--) { ?>
      CAB:<input type="radio" name="radio" id="radio2" value="CAB"><br><?= $cname[$x] ?><br><br><?= $ctype[$x] ?><br><br><?= $phone[$x] ?><br><br><?= $cprice[$x]?>
  <?php
    } ?>
	<?php
    for($x=($j - 1); $x>=0; $x--) { ?>
      BUS:<input type="radio" name="radio" id="radio2" value="BUS"><br><?= $btype[$x] ?><br><br><?= $bprice[$x]?>
  <?php
    } ?>

	<?php
    for($x=($k - 1); $x>=0; $x--) { ?>
      AIRLINES:<input type="radio" name="radio" id="radio2" value="AIRLINES"><br><?= $aname[$x] ?><br><br><?= $aprice[$x]?>
  <?php
    } ?>
	<?php
    for($x=($l - 1); $x>=0; $x--) { ?>
      TRAIN:<input type="radio" name="radio" id="radio2" value="TRAIN"><br><?= $tprice[$x] ?>
  <?php
    } ?>
<br><br>
<input type="submit" value="Click to see options for transport"/>
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

