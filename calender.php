<?php
	//first connect to the database by specifying the details of the same
	$host = "host=localhost";
	$port = "port=5432";
	$dbname = "dbname=tourist";
	$credentials = "user=postgres password=s!m97put";

	$db = pg_connect( "$host $port $dbname $credentials"  );
	if(!$db)
	{
	  	echo "Error : Unable to open database\n";
	} 
	else
	{
		echo "Connected to database successfully";
	}
	if (isset($_POST['Submit'])) //here give the name of your button on which you would like    //to perform action.
	{
		echo "1st";
		// here check the submitted text box for null value by giving there name.
		if($_POST['username']=="" || $_POST['password']=="")
		{
			echo " Field must be filled";
		}
		else
		{
			/*$sql1= "select * from student where email= '".$_REQUEST['user_id']."' &&  password ='".$_REQUEST['password']."'";
			$result=mysql_query($sql1)
			or exit("Sql Error".mysql_error());
			$num_rows=mysql_num_rows($result);*/
			$sql =<<<EOF
			select username, pwd from user_details;
			EOF;

			$ret = pg_query($db, $sql);
			if(!$ret){
			echo pg_last_error($db);
			exit;
		}
		$found = 1;
		while($row = pg_fetch_row($ret))
		{
			if($row[0] == $_POST['username'] && $row[1] == $_POST['password'])
			{
				  $found = 1;
			}
		}
		if($found)
		{
			//here you can redirect on your file which you want to show after login just change filename ,give it to your filename.
			   //header("location:filename.php"); 
			//OR just simply print a message.
			 Echo "You have logged in successfully";  
				echo "<div class='container'>
			<div class='row'>
			<div class='col-sm-6'>
			    <div class='form-group'>
				<div class='input-group date' id='datetimepicker1'>
				    <input type='text' class='form-control' />
				    <span class='input-group-addon'>
					<span class='glyphicon glyphicon-calendar'></span>
				    </span>
				</div>
			    </div>
			</div>
			<script type='text/javascript'>
			    $(function () 
			    {
				$('#datetimepicker1').datetimepicker();
			    });
			</script>
			</div>
			</div>";
		}
		else
		{
		    echo "username or password incorrect";
		}
    	}
}    
?>

