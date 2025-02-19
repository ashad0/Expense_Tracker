<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
	<h1>Login</h1>
	
		<form action="saveuser" method="post">
			E-mail: <input type="text">
			<br><br>
			Password: <input type="password">
			<br><br>
			<input type="submit" value="Login">
			<br><br>
		</form>
		
	<a href="forgetpassword">ForgetPassword</a>
	<a href="signup">Signup</a>
	
</body>
</html>