<?php

//including the database connection file

include_once("config.php");


//getting id from url
$id = $_GET['id'];

if(isset($_POST['add_channel'])) {	
	
	$channel_num = mysqli_real_escape_string($mysqli, $_POST['channel_num']);
	$channel_name = mysqli_real_escape_string($mysqli, $_POST['channel_name']);

	// checking empty fields
	if(empty($channel_num) || empty($channel_name)) {
				
		if(empty($channel_num)) {
			echo "<font color='red'>Channel number is empty.</font><br/>";
		}
		if(empty($channel_name)) {
			echo "<font color='red'>Channel name is empty.</font><br/>";
		}
		
		//link to the previous page
		echo "<br/><a href='javascript:self.history.back();'>Go Back</a>";
	} else { 
		// if all the fields are filled (not empty) 

		//insert data to database	
		$result = mysqli_query($mysqli, "INSERT INTO channels(channel_number, channel_name, package_id) VALUES('$channel_num','$channel_name','$id'");

		//display success message
		echo "<font color='green'>Channel added successfully.";
		echo "<br/><a href='index.php'>View Result</a>";
	}
}


?>


<html>
<head>	
	<title>Add channel</title>
</head>

<body>
	<a href="index.php">Home</a>
	<br/><br/>
	
	<form name="form1" method="post" action="add_channel.php">
		<table border="0">
			<tr> 
				<td>Channel number:</td>
				<td><input type="" ="text" name="channel_num"></td>
			</tr>
			<tr> 
				<td>Channel name:</td>
				<td><input type="text" name="channel_name"></td>
			</tr>	
			<tr> 
				<td><input type="submit" name="add_channel" value="Add channel"></td>
			</tr>
		</table>
	</form>
</body>
</html>
