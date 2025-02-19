<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup Page</title>
</head>
<body>
    <div class="icon">👤</div>
	<h2>Signup</h2>
	
	<form action="saveuser" method="Post">
		
		FirstName :<input type="text" name="FirstName" required >
		<br><br>
		LastName :<input type="text" name="LastName" required >
		<br><br>
		Gender: Male<input type="radio" name="gender" value="male">
				FeMale<input type="radio" name="gender" value="female">
		<br><br> 
		Email :<input type="text" name="Email" required>
		<br><br>
		MobileNumber :<input type="text" name="MobileNumber" required>
		<br><br>
		Password :<input type="password" name="Password" required>
		<br><br>
		
		Role: Admin<input type="radio" name="Role" value="Admin">
				User<input type="radio" name="Role" value="User">
	
		<input type="submit" value="Signup" >
		<br><br>
	</form>
	<a href="login">Login</a>

	
</body>
</html>