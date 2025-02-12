<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
</head>
<body>
	<h2>Signup</h2>
	
	<form action="saveuser" method="Post">
		First Name: <input type="text" >
		<br><br>
		E-mail: <input type="text" >
		<br><br>
		Mobile Number: <input type="text">
		<br><br>
		Password: <input type="password" >
		<br><br>
		Confirm Password: <input type="password">
		<br	><br><br>
		<input type="submit" value="Signup">
		<br		><br>
	</form>
	
	
	<a href="login">Login</a>
</body>
</html>