<?php

//including the database connection file

include_once("config.php");

if(isset($_POST['view'])) {

	//getting id from url
	$id = $_GET['id'];

	//selecting data associated with this particular id
	$result = mysqli_query($mysqli, "SELECT * FROM channels WHERE package_number=$id");

	while($row = mysql_fetch_array($result)) { 
	$channel = $row['channel_name']; 
	echo $channel; 
	}
}
?>
<?php
//getting id from url
$id = $_GET['id'];

//selecting data associated with this particular id
$result = mysqli_query($mysqli, "SELECT * FROM channels WHERE package_id=$id");
while($res = mysqli_fetch_array($result))
{
	echo nl2br($res['channel_number']."\t".$res['channel_name']);
}
?>
<html>
<head>	
	<title>Channels</title>
</head>

<body>
	<a href="index.php">Home</a>
	<br/><br/>
	
	<p id="channel"></p>
</body>
</html>