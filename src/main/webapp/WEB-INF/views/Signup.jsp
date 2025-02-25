<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup Page</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #2C2C54;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    
    .container {
        display: flex;
        background: white;
        padding: 40px;
        border-radius: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        width: 800px;
        text-align: center;
        align-items: center;
        max-height: 600px;
    }
    
    .form-section {
        width: 50%;
        padding: 25px;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }
    
    .image-section {
        width: 50%;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        padding: 25px;
    }

    .image-section img {
        max-width: 100%;
        height: auto;
        border-radius: 10px;
        object-fit: cover;
        margin-bottom: 15px;
    }

    .login-box {
        margin-top: 10px;
        text-align: center;
    }

    .login-box a {
        display: inline-block;
        padding: 12px 24px;
        background-color: #007BFF;
        color: white;
        border-radius: 5px;
        text-decoration: none;
        font-weight: bold;
        font-size: 14px;
        margin-top: 10px;
    }

    .login-box a:hover {
        background-color: #0056B3;
    }

    .header {
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 12px;
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 20px;
    }

    .icon {
        font-size: 28px;
    }
    
    label {
        display: block;
        text-align: left;
        font-size: 15px;
        font-weight: bold;
        margin-bottom: 5px;
    }

    input {
        width: 100%;
        padding: 12px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
        outline: none;
    }

    .form-group {
        display: flex;
	    align-items: center;
	    gap: 25px;
    }

    .form-group label {
         display: flex;
	    align-items: center;
	    gap: 10px;
    }

    .radio-group {
        display: flex;
	    gap: 15px; 
	    align-items: center;
    }

    button {
        width: 100%;
        padding: 12px;
        background-color: #007BFF;
        border: none;
        border-radius: 5px;
        color: white;
        font-size: 16px;
        cursor: pointer;
        margin-top: 20px;
    }
    
    button:hover {
        background-color: #0056B3;
    }
</style>

</head>
<body>
    <div class="container">
        <div class="form-section">
            <div class="header">
                <span class="icon">👤</span>
                <span>Signup</span>
            </div>

            <form action="saveuser" method="POST">
                <label for="firstname">First Name: </label>
                <input type="text" id="firstname" name="firstName" required>

                <label for="lastname">Last Name: </label>
                <input type="text" id="lastname" name="lastName" required>

               <div class="form-group">
				    <label class="gap">Gender: </label>
				    <div class="radio-group">
				        <label><input type="radio" name="gender" value="male"> Male</label>
				        <label><input type="radio" name="gender" value="female"> Female</label>
				    </div>
				</div>

                <label for="email">Email: </label>
                <input type="email" id="email" name="email" required>

                <label for="mobile">Mobile Number: </label>
                <input type="text" id="mobile" name="mobileNumber" required>

                <label for="password">Password: </label>
                <input type="password" id="password" name="password" required>

                <button type="submit">Signup</button>
            </form>
        </div>
        <div class="image-section">
            <img src="https://i.pinimg.com/736x/96/4f/30/964f30c81fa6916c10433c667d10fbb9.jpg" alt="Signup Image">
            
            <div class="login-box">
                <p>Already have an account?</p>
                <a href="login">Login</a>
            </div>
        </div>
    </div>
</body>
</html>
