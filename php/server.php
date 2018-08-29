<?php 
	session_start(); 

	$username = "";
	$email = "";
	$errors = array();
	$userId = 0;

	//Connect to the datase
	$db = mysqli_connect('localhost', 'root', '', 'xpertech');

	//login
	if(isset($_POST['login'])){
		$username = ($_POST['username']);
		$password_1 = ($_POST['password_1']);

		//Fields not Empty
		if(empty($username)){
			array_push($errors, "Username is Required");
		}
		if(empty($password_1)){
			array_push($errors, "Password is Required");
		}

		if(count($errors) == 0){
			$query = "SELECT * FROM users WHERE username='$username' AND password='$password_1'";
			// $a = "SELECT id FROM users WHERE username='$username'";
			// $userId  = mysqli_query($db, $a);
			$result = mysqli_query($db, $query);
			if(mysqli_num_rows($result) == 1){
				$_SESSION['username'] = $username;
				// $_SESSION['userId'] = $userId;
				$_SESSION['success'] = ""+$userId;
				header('location: index.php');
			}
			else{
				array_push($errors, "No Account found");
			}
		}
	}

	//logout
	if (isset($_GET['logout'])) {
		session_destroy();
		unset($_SESSION['username']);
		header('location: login.php');
	}

?>