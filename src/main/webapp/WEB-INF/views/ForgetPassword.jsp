<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Password</title>
<style>
    body {
        background-color:  #20c997;
        font-family: Arial, sans-serif;
        text-align: center;
    }
    .container {
        width: 350px;
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        margin: 100px auto;
        margin-top: 200px;
    }
    
    input[type="text"] {
        width: 90%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"] {
        background-color: #007bff;
        color: white;
        border: none;
        padding: 10px;
        width: 100%;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    a {
        display: block;
        margin-top: 15px;
        color: #007bff;
        text-decoration: none;
    }
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

<div class="container">
    <h2>Forgot Password</h2>
    <p>Please enter your email address to reset your password.</p>
    
    <form action="sendotp" method="post">
        <input type="text" name="email" placeholder="Your e-mail address" required /><br><br>
        <input type="submit" value="Reset my Password">
    </form>

    <a href="login">Login</a>
</div>

</body>
</html>
