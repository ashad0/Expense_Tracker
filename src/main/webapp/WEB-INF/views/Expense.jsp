<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Expenses</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .container {
        background: white;
        padding: 20px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        text-align: center;
        width: 400px;
    }
    h2 {
        margin-bottom: 15px;
        color: #333;
    }
    label {
        font-weight: bold;
        display: block;
        margin-top: 10px;
        text-align: left;
    }
    input[type="text"] {
        width: 100%;
        padding: 8px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    input[type="submit"] {
        background: #007bff;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        margin-top: 15px;
    }
    input[type="submit"]:hover {
        background: #0056b3;
    }
</style>
</head>
<body>	

    <div class="container">
        <h2>Add Expenses</h2>
        <form action="saveexpense" method="post">
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" placeholder="Enter expense title" required>

            <label for="status">Status:</label>
            <input type="text" id="status" name="status" placeholder="Enter status" required>

            <label for="amount">Amount:</label>
            <input type="text" id="amount" name="amount" placeholder="Enter amount" required>

            <label for="transationdate">Transaction Date:</label>
            <input type="text" id="transationdate" name="transationdate" placeholder="YYYY-MM-DD" required>

            <label for="description">Description:</label>
            <input type="text" id="description" name="description" placeholder="Enter description" required>

            <input type="submit" value="Save Expense">
        </form>
    </div>

</body>
</html>
