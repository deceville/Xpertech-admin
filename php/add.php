<html>
<head>
	<title>Add Data</title>
</head>

<body>
<?php
//including the database connection file
include_once("config.php");

if(isset($_POST['Submit'])) {	
	$name = mysqli_real_escape_string($mysqli, $_POST['name']);
	$desc = mysqli_real_escape_string($mysqli, $_POST['desc']);
	$digitalbox = mysqli_real_escape_string($mysqli, $_POST['digitalbox']);
	$mainline = mysqli_real_escape_string($mysqli, $_POST['mainline']);
	$extline = mysqli_real_escape_string($mysqli, $_POST['extline']);
		
	// checking empty fields
	if(empty($name) || empty($desc) || empty($digitalbox) || empty($mainline) || empty($extline)) {
				
		if(empty($name)) {
			echo "<font color='red'>Name field is empty.</font><br/>";
		}
		
		if(empty($desc)) {
			echo "<font color='red'>Age field is empty.</font><br/>";
		}
		
		if(empty($digitalbox)) {
			echo "<font color='red'>Email field is empty.</font><br/>";
		}
		
		//link to the previous page
		echo "<br/><a href='javascript:self.history.back();'>Go Back</a>";
	} else { 
		// if all the fields are filled (not empty) 
			
		//insert data to database	
		$result = mysqli_query($mysqli, "INSERT INTO packages(package_name, package_desc, digital_box, monthsub_mainline, monthsub_extline) VALUES('$name','$desc','$digitalbox','$mainline','$extline')");
		
		//display success message
		echo "<font color='green'>Data added successfully.";
		echo "<br/><a href='index.php'>View Result</a>";
	}
}
?>
</body>
</html>
