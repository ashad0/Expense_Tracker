<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>My Profile</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            background-color: #f4f7fb;
            color: #555;
        }
        .sidebar {
            width: 250px;
            height: 100vh;
            background-color: #2f2f2f;
            color: white;
            position: fixed;
            top: 0;
            left: 0;
            padding: 20px;
            box-shadow: 2px 0 8px rgba(0, 0, 0, 0.1);
        }
        .sidebar a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 10px;
            margin: 5px 0;
            border-radius: 4px;
            transition: background-color 0.3s;
        }
        .sidebar a:hover {
            background-color: #444;
        }
        .main {
            margin-left: 270px;
            padding: 30px;
        }
        .profile-card {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 16px;
            max-width: 700px;
            margin: 0 auto;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .profile-card h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
        }
        .profile-info {
            margin-bottom: 12px;
            text-align: left;
            font-size: 16px;
        }
        .profile-info strong {
            display: inline-block;
            width: 150px;
            color: #444;
        }
        .profile-pic {
            border-radius: 50%;
            height: 120px;
            width: 120px;
            object-fit: cover;
            margin-bottom: 30px;
        }
        .btn {
            padding: 10px 20px;
            background-color: #ff9800;
            color: white;
            border: none;
            border-radius: 8px;
            text-decoration: none;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #e68900;
        }
    </style>
</head>
<body>

<!-- Sidebar include -->
<jsp:include page="Sidebar2.jsp" />

<div class="main">
    <div class="profile-card">
        <img class="profile-pic" src="${user.profilePicPath}" alt="Profile Picture" />

        <h2>${user.firstName} ${user.lastName}</h2>

        <div class="profile-info">
            <strong>Email:</strong> ${user.email}
        </div>
        <div class="profile-info">
            <strong>Mobile:</strong> ${user.mobileNumber}
        </div>
        <div class="profile-info">
            <strong>Gender:</strong> ${user.gender}
        </div>
        <div class="profile-info">
            <strong>Role:</strong> ${user.role}
        </div>

        <a href="EditProfile?userid=${user.userid}" class="btn">Edit Profile</a>
    </div>
</div>

</body>
</html>
