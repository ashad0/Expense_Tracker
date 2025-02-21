<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #003366;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    
    .container {
        display: flex;
        flex-direction: row;
        background: white;
        padding: 30px;
        border-radius: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        width: 650px;
        align-items: center;
    }
    
    .image-section {
        width: 50%;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        
    }
    
    .image-section img {
        max-width: 90%;
        height: auto;
        border-radius: 10px;
    }

    .signup-link {
        margin-top: 10px;
    }
    
    .signup-link a {
        color: #0d6efd;
        text-decoration: none;
    }
    
    .signup-link a:hover {
        text-decoration: underline;
    }

    .form-section {
        width: 50%;
        padding: 20px;
        text-align: center;
    }
    
    h1 {
        font-size: 24px;
        margin-bottom: 20px;
    }
    
    label {
        display: block;
        font-size: 14px;
        font-weight: bold;
        text-align: left;
        margin-bottom: 5px;
    }
    
    input {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }
    
    button {
        width: 100%;
        padding: 10px;
        background-color: #007BFF;
        border: none;
        border-radius: 5px;
        color: white;
        font-size: 16px;
        cursor: pointer;
    }
    
    button:hover {
        background-color: #0056B3;
    }

    .links {
        margin-top: 10px;
    }

    .links a {
        color: #0d6efd;
        text-decoration: none;
    }

    .links a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <div class="container">
        <!-- IMAGE ON LEFT -->
        <div class="image-section">
            <img src="https://img.freepik.com/free-vector/finance-department-employees-are-calculating-expenses-company-s-business_1150-41782.jpg">
            
            <!-- SIGNUP LINK BELOW IMAGE -->
            <div class="signup-link">
                <p>Don't have an account? <a href="signup">Signup</a></p>
            </div>
        </div>
        
        <!-- LOGIN FORM ON RIGHT -->
        <div class="form-section">
            <h1>Login</h1>
            
            <form action="authenticate" method="post">
                <label for="email">E-mail</label>
                <input type="text" id="email" name="email" required>
                
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
                
                <button type="submit" value="Login">Login</button>
            </form>
            <br>
            ${error}
            <!-- FORGET PASSWORD BELOW LOGIN BUTTON -->
            <div class="links">
                <a href="forgetpassword">Forget Password?</a>
            </div>

        </div>
    </div>
</body>
</html>
