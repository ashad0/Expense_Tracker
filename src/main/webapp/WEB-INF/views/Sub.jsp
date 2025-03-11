<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SubCategory</title>
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
        height: 200px;
    }
      p {
    	padding-buttom: 10px;
    	text-align: left;
    }
 
    h2 {
        margin-bottom: 15px;
        color: #333;
    }
    input[type="text"] {
        width: 100%;
        padding: 8px;
        margin: 10px 0;
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
    }
    input[type="submit"]:hover {
        background: #0056b3;
    }
</style>
</head>
<body>

    <div class="container">
        <h2>SubCategory Form</h2>
        <form action="savesub" method="post">
            <p>Title:</p>
            <input type="text" id="title" name="title" placeholder="Enter subcategory title" required>
            <br><br>
            <input type="submit" value="Save SubCategory">
        </form>
    </div>

</body>
</html>
