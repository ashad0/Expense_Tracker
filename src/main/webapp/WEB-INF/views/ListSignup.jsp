<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp Table</title>
</head>
<body>
	<h2>SignUp Table</h2>
	
	<table border="1">
		<c:forEach items="${userlist }" var="s">
			<tr>
				<td>${s.FirstName}</td>
				<td>${s.LastName}</td>
				<td>${s.Gender}</td>
				<td>${s.Email}</td>
				<td>${s.MobileNumber}</td>
				<td>${s.Role}</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>