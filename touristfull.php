<?php
	$host        = "host=localhost";
	$port        = "port=5432";
	$dbname      = "dbname=tourist";
	$credentials = "user=postgres password=s!m97put";

	$db = pg_connect( "$host $port $dbname $credentials"  );
	if(!$db){
	  echo "Error : Unable to open database\n";
	} 
	$ip1 = "<input type = 'text'>";
	echo $ip1;
	echo "Select a city you wish to go<br>";
	$sql =<<<EOF
      select distinct(city) from places;
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   
   while($row = pg_fetch_row($ret)){
      echo "<a href='#'>". $row[0] . "<br></a>";
   }
   //1
   echo "which places would you like to go in Jammu and Kashmir<br>";
   $sql =<<<EOF
      select name, picture, description, genre from places where city = 'Jammu and Kashmir';
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   echo "<table border = 1px solid black><tr><th>Name</th><th>Picture</th><th>Description</th><th>Genre</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td><td>". $row[1] ."</td><td>". $row[2] ."</td><td>". $row[3] ."</td></tr>";
   }
   echo "</table>";
   //2
   echo "which places would you like to go in Tamil Nadu<br>";
   $sql =<<<EOF
      select name, picture, description, genre from places where city = 'Tamil nadu';
EOF;
	
   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   echo "<table border = 1px solid black><tr><th>Name</th><th>Picture</th><th>Description</th><th>Genre</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td><td>". $row[1] ."</td><td>". $row[2] ."</td><td>". $row[3] ."</td></tr>";
   }
   echo "</table>";
   //3
   echo "which places would you like to go in Kerala<br>";
   $sql =<<<EOF
      select name, picture, description, genre from places where city = 'Kerala';
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   echo "<table border = 1px solid black><tr><th>Name</th><th>Picture</th><th>Description</th><th>Genre</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td><td>". $row[1] ."</td><td>". $row[2] ."</td><td>". $row[3] ."</td></tr>";
   }
   echo "</table>";
   //4
   echo "which places would you like to go in Goa<br>";
   $sql =<<<EOF
      select name, picture, description, genre from places where city = 'Goa';
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   echo "<table border = 1px solid black><tr><th>Name</th><th>Picture</th><th>Description</th><th>Genre</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td><td>". $row[1] ."</td><td>". $row[2] ."</td><td>". $row[3] ."</td></tr>";
   }
   echo "</table>";
   //5
   echo "which places would you like to go in Mumbai<br>";
   $sql =<<<EOF
      select name, picture, description, genre from places where city = 'Mumbai';
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   echo "<table border = 1px solid black><tr><th>Name</th><th>Picture</th><th>Description</th><th>Genre</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td><td>". $row[1] ."</td><td>". $row[2] ."</td><td>". $row[3] ."</td></tr>";
   }
   echo "</table>";
   //6
   echo "which places would you like to go in Delhi<br>";
   $sql =<<<EOF
      select name, picture, description, genre from places where city = 'Delhi';
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   echo "<table border = 1px solid black><tr><th>Name</th><th>Picture</th><th>Description</th><th>Genre</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td><td>". $row[1] ."</td><td>". $row[2] ."</td><td>". $row[3] ."</td></tr>";
   }
   echo "</table>";
   //7
   echo "which hotel would you like to stay in Jammu and Kashmir<br>";
   $sql =<<<EOF
      select name, phone, Number_of_rooms_available, Number_of_stars, Type_of_room, food_type from hotel where city = 'Jammu and Kashmir' and lodging = 'yes';
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   echo "<table border = 1px solid black><tr><th>Name</th><th>Phone</th><th>Available Rooms</th><th>Stars</th><th>Types of Room</th><th>Food Type</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td><td>". $row[1] ."</td><td>". $row[2] ."</td><td>". $row[3] ."</td><td>". $row[4] ."</td><td>". $row[5] ."</td></tr>";
   }
   echo "</table>";
   //8
   echo "which hotel would you like to stay in Tamil Nadu<br>";
   $sql =<<<EOF
      select name, phone, Number_of_rooms_available, Number_of_stars, Type_of_room, food_type from hotel where city = 'Tamil nadu' and lodging = 'yes';
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   echo "<table border = 1px solid black><tr><th>Name</th><th>Phone</th><th>Available Rooms</th><th>Stars</th><th>Types of Room</th><th>Food Type</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td><td>". $row[1] ."</td><td>". $row[2] ."</td><td>". $row[3] ."</td><td>". $row[4] ."</td><td>". $row[5] ."</td></tr>";
   }
   echo "</table>";
   //9
   echo "which hotel would you like to stay in Kerala<br>";
   $sql =<<<EOF
      select name, phone, Number_of_rooms_available, Number_of_stars, Type_of_room, food_type from hotel where city = 'Kerala' and lodging = 'yes';
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   echo "<table border = 1px solid black><tr><th>Name</th><th>Phone</th><th>Available Rooms</th><th>Stars</th><th>Types of Room</th><th>Food Type</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td><td>". $row[1] ."</td><td>". $row[2] ."</td><td>". $row[3] ."</td><td>". $row[4] ."</td><td>". $row[5] ."</td></tr>";
   }
   echo "</table>";
   //10
   echo "which hotel would you like to stay in Goa<br>";
   $sql =<<<EOF
      select name, phone, Number_of_rooms_available, Number_of_stars, Type_of_room, food_type from hotel where city = 'Goa' and lodging = 'yes';
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   echo "<table border = 1px solid black><tr><th>Name</th><th>Phone</th><th>Available Rooms</th><th>Stars</th><th>Types of Room</th><th>Food Type</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td><td>". $row[1] ."</td><td>". $row[2] ."</td><td>". $row[3] ."</td><td>". $row[4] ."</td><td>". $row[5] ."</td></tr>";
   }
   echo "</table>";
   //11
   echo "which hotel would you like to stay in Mumbai<br>";
   $sql =<<<EOF
      select name, phone, Number_of_rooms_available, Number_of_stars, Type_of_room, food_type from hotel where city = 'Mumbai' and lodging = 'yes';
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   echo "<table border = 1px solid black><tr><th>Name</th><th>Phone</th><th>Available Rooms</th><th>Stars</th><th>Types of Room</th><th>Food Type</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td><td>". $row[1] ."</td><td>". $row[2] ."</td><td>". $row[3] ."</td><td>". $row[4] ."</td><td>". $row[5] ."</td></tr>";
   }
   echo "</table>";
   //12
   echo "which hotel would you like to stay in Delhi<br>";
   $sql =<<<EOF
      select name, phone, Number_of_rooms_available, Number_of_stars, Type_of_room, food_type from hotel where city = 'Delhi' and lodging = 'yes';
EOF;

   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   echo "<table border = 1px solid black><tr><th>Name</th><th>Phone</th><th>Available Rooms</th><th>Stars</th><th>Types of Room</th><th>Food Type</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td><td>". $row[1] ."</td><td>". $row[2] ."</td><td>". $row[3] ."</td><td>". $row[4] ."</td><td>". $row[5] ."</td></tr>";
   }
   echo "</table>";
   //pg_close($db);


   //13
	echo "Family Park/ Resort";
	$sql =<<<EOF
		select city, name, genre from places where genre in(select genre from places where genre = 'Family Park/ Resort');
EOF;
	$ret = pg_query($db, $sql);
   	if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   	echo "<table border = 1px solid black><tr><th>City</th><th>Name</th><th>Genre</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td><td>". $row[1] ."</td><td>". $row[2] ."</td></tr>";
   }
   echo "</table>";
   //Hard 1
   echo"More places";
   $sql=<<<EOF
   		select city,name from places where city in (select city from places group by city having count(*) > 2);
EOF;
 	$ret = pg_query($db, $sql);
   	if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   	echo "<table border = 1px solid black><tr><th>City</th><th>Name</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td><td>". $row[1] ."</td></tr>";
   }
   echo "</table>";
   //Hard 2
   echo"union of from places where price of the transport is > 1550.00";
   $sql=<<<EOF
   	(select from_city from cab where price > 1550.00)
	UNION
	(select from_city from bus where price > 1550.00);
EOF;
	$ret = pg_query($db, $sql);
   	if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   	echo "<table border = 1px solid black><tr><th>From City</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td></tr>";
   }
   echo "</table>";
   //Hard 3
      echo "Guides in juhu beach<br>";
   $sql =<<<EOF
         select guide_id,guide_name,phone_number from guide where place_id in (select place_id from places where name='Juhu beach');  
EOF;
   $ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   echo "<table border = 1px solid black><tr><th>guide_id</th><th>guide_name</th><th>phone_number</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td><td>". $row[1] ."</td><td>". $row[2] ."</td></tr>";
   }
   echo "</table>";
   echo"Intersect of ";
   $sql=<<<EOF
   	(select to_city from train where price < 1550.00)
	INTERSECT
	(select to_city from bus where price < 1550.00);
EOF;
	$ret = pg_query($db, $sql);
   	if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   	echo "<table border = 1px solid black><tr><th>From City</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td></tr>";
   }
   echo "</table>";
   //Hard 4
	echo"People who have taken single rooms";
	$sql=<<<EOF
		select username,name,email_id from user_details where username in (select username from modes_of_payment where username in(select username from trips_taken where type_of_room = 'Single'));
EOF;
	$ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   echo "<table border = 1px solid black><tr><th>Username</th><th>Name</th><th>Email id</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td><td>". $row[1] ."</td><td>". $row[2] ."</td></tr>";
   }
   echo "</table>";
   
   //Hard 5
   echo"People who have taken cab as their mode of transportation";
   $sql=<<<EOF
   	select username,name,city from user_details where username in (select username from trips_taken where cab_id <> 0);
EOF;
	$ret = pg_query($db, $sql);
   if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   echo "<table border = 1px solid black><tr><th>Username</th><th>Name</th><th>City</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td><td>". $row[1] ."</td><td>". $row[2] ."</td></tr>";
   }
   echo "</table>";
   //Very Hard 1
   echo"People who have expensive guides";
   $sql=<<<EOF
   	select username,name,email_id from user_details where username in (select username from trips_taken where guide_id in (select guide_id from guide where price > 1550.00));
EOF;
 	$ret = pg_query($db, $sql);
   	if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   echo "<table border = 1px solid black><tr><th>Username</th><th>Name</th><th>City</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td><td>". $row[1] ."</td><td>". $row[2] ."</td></tr>";
   }
   echo "</table>";
   
   //Very Hard 2
   echo"View 1";
   $sql=<<<EOF
   create view B_GUIDES as select guide.guide_id,guide.guide_name,places.name from guide,places,trips_taken where guide.place_id = places.place_id and guide.guide_id = trips_taken.guide_id;
   select distinct * from B_GUIDES;
EOF;
 	$ret = pg_query($db, $sql);
   	if(!$ret){
      echo pg_last_error($db);
      exit;
   } 
   echo "<table border = 1px solid black><tr><th>Guide id</th><th>Guide Name</th><th>Place Name</th></tr>";
   while($row = pg_fetch_row($ret)){
      echo "<tr><td>". $row[0] . "</td><td>". $row[1] ."</td><td>". $row[2] ."</td></tr>";
   }
   echo "</table>";
   pg_close($db);
?>