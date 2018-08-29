<?php
// including the database connection file
include_once("config.php");

//logout
	if (isset($_GET['logout'])) {
		session_destroy();
		unset($_SESSION['username']);
		header('location: login.php');
	}


if(isset($_POST['update']))
{	

	$id = mysqli_real_escape_string($mysqli, $_POST['id']);
	$name = mysqli_real_escape_string($mysqli, $_POST['name']);
	$desc = mysqli_real_escape_string($mysqli, $_POST['desc']);
	$digitalbox = mysqli_real_escape_string($mysqli, $_POST['digitalbox']);
	$mainline = mysqli_real_escape_string($mysqli, $_POST['mainline']);
	$extline = mysqli_real_escape_string($mysqli, $_POST['extline']);

	// checking empty fields
	if(empty($name) || empty($desc)) {	
			
		if(empty($name)) {
			echo "<font color='red'>Name field is empty.</font><br/>";
		}
		
		if(empty($desc)) {
			echo "<font color='red'>Age field is empty.</font><br/>";
		}
	} else {	
		//updating the table
		$result = mysqli_query($mysqli, "UPDATE packages SET package_name='$name',package_desc='$desc',digital_box='$digitalbox',monthsub_mainline='$mainline',monthsub_extline='$extline' WHERE package_number=$id");
		
		//redirectig to the display page. In our case, it is index.php
		header("Location: index.php");
	}
}
?>
<?php
//getting id from url
$id = $_GET['id'];

//selecting data associated with this particular id
$result = mysqli_query($mysqli, "SELECT * FROM packages WHERE package_number=$id");

while($res = mysqli_fetch_array($result))
{
	$id = $res['package_number'];
	$name = $res['package_name'];
	$desc = $res['package_desc'];
	$digitalbox = $res['digital_box'];
	$mainline = $res['monthsub_mainline'];
	$extline = $res['monthsub_extline'];
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Edit package</title>
	<link rel="stylesheet" type="text/css" href="../css/index.css">
</head>
<body>
	<div class="container">
		<div class="header">
			<h1 id="title"><a class="head" href="index.php">Xpertech Admin</a></h1>
			<div class="table">
				<ul id="nav">
					<li><a class="head" href="index.php">HOME</a></li>
					<li><a class="head" href="add.html">ADD A PACKAGE</a></li>
					<li><a class="head" href="login.php?logout='1'" name="logout">LOGOUT</a></li>
				</ul>
			</div>
		</div>
		<div class="content">
			<h1 style="text-align: center;">Add new package</h1>
			<form action="edit.php" method="post" name="form1">
				<table class="add" width="60%" border="0">
					<tr> 
						<td>Package name:</td>
						<td><input class="field" type="text" name="name" value="<?php echo $name;?>"></td>
					</tr>
					<tr> 
						<td>Package description:</td>
						<td><input class="field" type="text" name="desc" value="<?php echo $desc;?>"></td>
					</tr>
					<tr> 
						<td>Digital Box price:</td>
						<td><input class="field" type="text" name="digitalbox" value="<?php echo $digitalbox;?>"></td>
					</tr>
					<tr> 
						<td>Mainline monthly subscription price:</td>
						<td><input class="field" type="text" name="mainline" value="<?php echo $mainline;?>"></td>
					</tr>
					<tr> 
						<td>Extension line monthly subscription price:</td>
						<td><input class="field" type="text" name="extline" value="<?php echo $extline;?>"></td>
					</tr>
					<tr> 
						<td><input type="hidden" name="id" value=<?php echo $_GET['id'];?>></td>
						<td><input class="button" type="submit" name="update" value="Update"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>