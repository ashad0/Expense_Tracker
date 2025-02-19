<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All States</title>
</head>
<body>
	<h2>New State</h2>

	<form action="savestate" method="Post">
		StateName: <input type="text" name="statename"/><br><br>
		<input type="submit" value="State">
	</form>
</body>
</html>