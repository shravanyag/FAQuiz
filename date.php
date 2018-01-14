<?php
	session_start();
	$_SESSION['username'] = $_POST['username'];
	echo $_SESSION['username'];
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
<div class="container">
    <form action="city.php" method="post" name="myForm" class="form-horizontal">
        <fieldset>
            <legend>When do you want to HOLIDAY ;P</legend>
            <div class="control-group">
                <label class="control-label">DateTime Picking</label>
                <div class="controls input-append date form_datetime" data-date="2017-01-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
                    <input size="16" type="text" value="" name="ip1" readonly>
                    <span class="add-on"><i class="icon-remove"></i></span>
					<span class="add-on"><i class="icon-th"></i></span>
                </div>
				<input type="hidden" id="dtp_input1" value="" name="ip2" /><br/>
            </div>
			<input type="submit" name="Submit" value="GO" style="background-color:#ff803a;border:1px solid #ff803a;border-radius:15px;color:#ffffff;display:inline-block;font-family:'Montserrat',Arial, Geneva, sans-serif;font-size:14px;font-weight:700;line-height:30px;text-align:center;text-decoration:none;width:220px;-webkit-text-size-adjust:none;mso-hide:all;">
        </fieldset>
    </form>
</div>

<script type="text/javascript" src="./jquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="./bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="../js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>
<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		forceParse: 0,
        showMeridian: 1
    });
	$('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
	$('.form_time').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 1,
		minView: 0,
		maxView: 1,
		forceParse: 0
    });
</script>

</body>
</html>
