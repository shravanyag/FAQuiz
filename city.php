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
	else{
		echo "Opened Database Successfully\n";
	}
	$uname = (string)$_SESSION['username'];
	echo $uname;

		$sql =<<<EOF
      select distinct(city) from places where city not in(select city from user_details where username = '$uname') ;
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   $i = 0;
   $city = array();
   while($row = pg_fetch_row($ret)){
		  $city[$i] = $row[0];
		  $i++;
   }
?>	
<!DOCTYPE html>
<html>
<head>
    <title></title>
	<link href="Maxim/css/bootstrap-responsive.css" rel="stylesheet">
	<link href="Maxim/css/style.css" rel="stylesheet">
	<link href="Maxim/color/default.css" rel="stylesheet">
	<link rel="shortcut icon" href="Maxim/img/favicon.ico">
    <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
	<link href="css/bootstrap-responsive.css" rel="stylesheet">
	<!--<link href="css/style.css" rel="stylesheet">-->
	<link href="color/default.css" rel="stylesheet">
	
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
<br><br><br><br>
<form method="post" action="future.php">
<select name="city" id="city" text-align="center"align="center">
  <option selected="selected">Choose one</option>
  <?php
    foreach($city as $name) { ?>
      <option value="<?= $name ?>"><?= $name ?></option>
  <?php
    } ?>
</select>
<br><br>
<input type="submit" value="Click to see places in the City"/>
</form>