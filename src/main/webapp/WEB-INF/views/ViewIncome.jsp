<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Income</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f3e9;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .container {
        background: #fff;
        padding: 25px;
        box-shadow: 0px 0px 15px rgba(218, 165, 32, 0.5);
        border-radius: 10px;
        text-align: center;
        width: 400px;
        border: 3px solid #daa520;
    }
    h2 {
        margin-bottom: 20px;
        color: #b8860b;
    }
    .info {
        font-size: 18px;
        color: #555;
        text-align: left;
        padding: 10px;
        border-bottom: 1px solid #daa520;
    }
    .info:last-child {
        border-bottom: none;
    }
    strong {
        color: #8b6508;
    }
</style>
</head>
<body>

    <div class="container">
        <h2>View Income</h2>
        <div class="info"><strong>Title:</strong> ${income.title }</div>
        <div class="info"><strong>Status:</strong> ${income.status }</div>
        <div class="info"><strong>Amount:</strong> ${income.amount }</div>
        <div class="info"><strong>Transaction Date:</strong> ${income.transcationDate }</div>
        <div class="info"><strong>Description:</strong> ${income.description }</div>
    </div>

</body>
</html>
