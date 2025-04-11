<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Password</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.12.2/gsap.min.js"></script>
<style>
    body {
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
        background: rgba(255, 255, 255, 0.2);
        backdrop-filter: blur(10px);
        padding: 40px;
        border-radius: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        width: 400px;
        text-align: center;
        align-items: center;
        max-height: 600px;
        border: 3px solid #FFD700;
    }

    .form-section {
        width: 100%;
        padding: 25px;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    h1 {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 20px;
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

    .links {
        margin-top: 10px;
        text-align: center;
    }

    .links a {
        color: #0d6efd;
        text-decoration: none;
        font-size: 14px;
    }

    .links a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <div class="container">
        <div class="form-section">
            <h1>🔑 Reset Password</h1>
            <p>Please enter your email to receive a password reset link.</p>
            <form action="sendotp" method="post">
                <label for="email">E-mail</label>
                <input type="text" id="email" name="email" required>
                <button type="submit">Reset Password</button>
            </form>
            <div class="links">
                <a href="login">Back to Login</a>
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
