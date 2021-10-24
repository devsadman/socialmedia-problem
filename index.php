
<?php require_once "autoload.php";

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Development Area</title>
	<!-- ALL CSS FILES  -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/style.css">
	<link rel="stylesheet" href="assets/css/responsive.css">
</head>
<body>
<?php 
        if(isset($_POST['login'])){
            echo $email=$_POST['email'];
            echo $pass=$_POST['pass'];
            if(empty($email)||empty($pass)){
                $msg=msgShow('All Fields are Required','danger');
            } 
            else{
                $user_email_data=emailAuth('users','email',$email);
                if($user_email_data!==false){
						echo $user_email_data->password;
						if(password_verify($pass,$user_email_data->password)){
							header('location:profile.php');
						}
                } else{
                    $msg=msgShow('Invalid Email address','danger');
                }
                
            }
        }
    ?>
	
	<div class="wrap shadow-sm">
		<div class="card">
			<div class="card-body">
				<h2>Login your account</h2>
					<?php 
					if(isset($msg))
					{
						echo $msg;
					}
					?>
				<hr>
				<form action="" autocomplete="off" method="post">
					<div class="form-group">
						<label for="">login info</label>
						<input  name="email" class="form-control" type="text" value="<?php old('email') ?>" placeholder="enter your email/cell/number">
					</div>
					
					<div class="form-group">
						<label for="">Passoword</label>
						<input name="pass" class="form-control" type="password" placeholder="enter your password">
					</div>
					<div class="form-group">
						<input name="login" class="btn btn-primary" type="submit" value="login">
					</div>
					<hr>
					<a href="reg.php">Create an account</a>
				</form>
			</div>
		</div>
	</div>
	







	<!-- JS FILES  -->
	<script src="assets/js/jquery-3.4.1.min.js"></script>
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/custom.js"></script>
</body>
</html>