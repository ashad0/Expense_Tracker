<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            background-color: #f4f7fb;
            color: #333;
        }
        .main {
            margin-left: 270px;
            padding: 30px;
        }
        .edit-profile-card {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 16px;
            max-width: 700px;
            margin: 0 auto;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        }
        h2 {
            margin-bottom: 30px;
            font-weight: bold;
            color: #333;
        }
        .form-label {
            font-weight: 600;
            color: #444;
        }
        .btn-primary {
            background-color: #ff9800;
            border: none;
        }
        .btn-primary:hover {
            background-color: #e68900;
        }
        .btn-secondary {
            background-color: #6c757d;
            border: none;
        }
        .btn-secondary:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>

<jsp:include page="Sidebar2.jsp" />

<div class="main">
    <div class="edit-profile-card">
        <h2>Edit Profile</h2>
        <form action="updateprofile" method="post">
            <input type="hidden" name="userid" value="${user.userid}" />

            <div class="mb-3">
                <label class="form-label">First Name</label>
                <input type="text" class="form-control" name="firstName" value="${user.firstName}" required />
            </div>

            <div class="mb-3">
                <label class="form-label">Last Name</label>
                <input type="text" class="form-control" name="lastName" value="${user.lastName}" required />
            </div>

            <div class="mb-3">
                <label class="form-label">Email</label>
                <input type="email" class="form-control" name="email" value="${user.email}" required />
            </div>

            <div class="mb-3">
                <label class="form-label">Mobile Number</label>
                <input type="text" class="form-control" name="mobileNumber" value="${user.mobileNumber}" required />
            </div>

            <div class="d-flex justify-content-between">
                <button type="submit" class="btn btn-primary px-4">Update</button>
                <a href="MyProfile" class="btn btn-secondary px-4">Cancel</a>
            </div>
        </form>
    </div>
</div>

</body>
</html>
