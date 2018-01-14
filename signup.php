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
		echo "Opened database successfully\n";
	}
	
	$email = (string)$_POST['emailsignup'];
	$username = (string)$_POST['usernamesignup'];
	$pwd = (string)$_POST['passwordsignup'];
	$city = (string)$_POST['city'];
	
		$sql =<<<EOF
      INSERT INTO user_details (email_id, age, Number_of_trips, name, fellow_tourist, username, pwd, city) 
	  VALUES('$email',0,0,'anything',0,'$username','$pwd','$city');
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
   }
   else{
	   echo "Records created successfully\n";
   }
   pg_close($db);
   header("location:login.php");
 ?>