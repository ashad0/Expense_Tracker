	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>Signup Page</title>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
	
	<style>
	    body {
	    	background: url('https://i.pinimg.com/736x/95/55/85/955585c8989a88bfe18f50c976bdd6be.jpg') no-repeat center center/cover;                           
	       	background-size: 1000px 900px;
	        font-family: Arial, sans-serif;
	        background-color: #FDF9F4;
	        display: flex;
	        justify-content: center;
	        align-items: center;
	        height: 100vh;
	        margin: 0;
	    }
	
	    .container {
	        display: flex;
	        background: rgba(255, 255, 255, 0.2); /* Transparent effect */
	        backdrop-filter: blur(10px); /* Glass effect */
	        padding: 40px;
	        border-radius: 20px;
	        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
	        width: 400px;
	        text-align: center;
	        align-items: center;
	        max-height: 600px;
	        border: 2px solid #FFD700;
	    }


	    .form-section {
	        width: 100%;
	        padding: 25px;
	        display: flex;
	        flex-direction: column;
	        justify-content: center;
	    }
	    
	    .login-box {
	        margin-top: 20px;
	        text-align: center;
	    }
	
	    .login-box a {
	        display: inline-block;
	        padding: 12px 24px;
	        background-color: #28a745;
	        color: white;
	        border-radius: 5px;
	        text-decoration: none;
	        font-weight: bold;
	        font-size: 14px;
	        margin-top: 10px;
	    }
	
	    .login-box a:hover {
	        background-color: #218838;
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
	            
	            <div class="login-box">
	                <p>Already have an account? 
	                	 <a href="login">Login</a>
	                </p>
	               
	            </div>
	        </div>
	    </div>
	    
	    <script>
	      document.addEventListener("DOMContentLoaded", function () {
	            gsap.from(".container", { 
	                y: -50, 
	                opacity: 0, 
	                duration: 1.2, 
	                ease: "power2.out", 
	                delay: 0.3 
	            });
	        });
	
	        document.querySelectorAll("input").forEach(input => {
	            input.addEventListener("mouseover", function () {
	                gsap.to(this, { scale: 1.1, borderColor: "#007BFF", duration: 0.3 });
	            });
	            input.addEventListener("mouseout", function () {
	                gsap.to(this, { scale: 1, borderColor: "#ccc", duration: 0.3 });
	            });
	        });
	    </script>
	</body>
	</html>
