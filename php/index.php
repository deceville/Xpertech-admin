<?php
//including the database connection file
include_once("config.php");

//logout
	if (isset($_GET['logout'])) {
		session_destroy();
		unset($_SESSION['username']);
		header('location: login.php');
	}

//fetching data in descending order (lastest entry first)
//$result = mysql_query("SELECT * FROM users ORDER BY id DESC"); // mysql_query is deprecated
$result = mysqli_query($mysqli, "SELECT * FROM packages ORDER BY package_name ASC"); // using mysqli_query instead; 
?>

<!DOCTYPE html>
<html>
<head>
	<title>Homepage</title>
	<link rel="stylesheet" type="text/css" href="../css/index.css">
</head>
<body>
	<div class="container">
		<div class="header">
			<h1 id="title"><a class="head" href="index.php">Xpertech Admin</a></h1>
			<div class="table">
			<form method="GET" action="">
				<ul id="nav">
					<li><a class="head" href="index.php">HOME</a></li>
					<li><a class="head" href="add.html">ADD A PACKAGE</a></li>
					<li><a class="head" href="login.php?logout='1'" name="logout">LOGOUT</a></li>
				</ul>
			</form>
			</div>
		</div>
		<div class="content">
			
			<div class="package_table">
				<table width='100%' border=0>

				<tr bgcolor='#4eaaed'>
					<td class="label">Package Name</td>
					<td class="label">Package Description</td>
					<td class="label">Digital Box Price</td>
					<td class="label">Monthly Subscription for Main line</td>
					<td class="label">Monthly Subscription for Extension line</td>
					<td class="label" style="width: 80px;">Update</td>
					<!-- <td class="label">Channel Lineup</td> -->
				</tr>

				<?php 
				//while($res = mysql_fetch_array($result)) { // mysql_fetch_array is deprecated, we need to use mysqli_fetch_array 
				while($res = mysqli_fetch_array($result)) { 		
					echo "<tr>";
					echo "<td>".$res['package_name']."</td>";
					echo "<td>".$res['package_desc']."</td>";
					echo "<td>".$res['digital_box']."</td>";
					echo "<td>".$res['monthsub_mainline']."</td>";
					echo "<td>".$res['monthsub_extline']."</td>";
					echo "<td><a href=\"edit.php?id=$res[package_number]\">Edit</a> | <a href=\"delete.php?id=$res[package_number]\" onClick=\"return confirm('Are you sure you want to delete?')\">Delete</a></td>";
					/*echo "<td><a href=\"add_channel.php?id=$res[package_number]\">Add</a> | <a href=\"view_channel.php?id=$res[package_number]\">View</a></td>";*/	
			}
			$pass = "pass";
			$fail = "fail";
			$call = "call";

			$pass_result = mysqli_query($mysqli, "SELECT COUNT(*) as PASSED FROM stat_info WHERE status='$pass' GROUP BY status"); 
			$fail_result = mysqli_query($mysqli, "SELECT COUNT(*) as FAILED FROM stat_info WHERE status='$fail' GROUP BY status"); 
			$total_result = mysqli_query($mysqli, "SELECT COUNT(*) as TOTAL FROM stat_info"); 
			$call_result = mysqli_query($mysqli, "SELECT COUNT(*) as CALLED FROM stat_info WHERE type='$call' GROUP BY type"); 
			?>
			</div>

			<div class="boxes">
				<div id="successful">
					<?php
						while($res = mysqli_fetch_array($pass_result)) { 		
							echo "<p>".$res['PASSED']."</p>";	
						}
					?>
					<h3>Successful troubleshooting</h3>
				</div>

				<div id="unsuccessful">
					<?php
						while($res = mysqli_fetch_array($fail_result)) { 	
							echo "<p>".$res['FAILED']."</p>";
						}
					?>	
					<h3>Unsuccessful troubleshooting</h3>
				</div>

				<div id="total">
					<?php
						while($res = mysqli_fetch_array($total_result)) { 	
							echo "<p>".$res['TOTAL']."</p>";
						}
					?>
					<h3>Total troubleshooting steps done</h3>
				</div>

				<div id="call">
					<?php
						while($res = mysqli_fetch_array($call_result)) { 	
							echo "<p>".$res['CALLED']."</p>";
						}
					?>
					<h3>Calls made to New Bacolod Cable</h3>
				</div>
			</div>

			
		</div>
	</div>
</body>
</html>