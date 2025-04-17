<%@ page import="com.grownited.entity.userentity" %>
<%@ page session="true" %>
<%
    userentity user = (userentity) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Category</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>
    
    <style>
    	.main{
    		margin-top: 50px;
    	}
    </style>
    
</head>
<body class="bg-light text-dark">
	<jsp:include page="Sidebar2.jsp"></jsp:include>

<!-- Navbar -->
	<jsp:include page="Header2.jsp"></jsp:include>


<!-- Main Content -->
<div class="main">
    <div class="card">
        <div class="card-body" style="background-color: #343a40; color: white;">
            <div class="pt-4 pb-2">
                <h5 class="card-title text-center pb-0 fs-4">Add New Category</h5>
            </div>
            <form action="savecategory" method="post" class="row g-3 needs-validation" novalidate>
                <div class="col-12">
                    <label for="options" class="form-label">Choose Category Type</label>
                    <select id="options" name="options" class="form-control" required>
                        <option value="" disabled selected>Select Category</option>
                        <option value="AutoMobile">AutoMobile</option>
                        <option value="HouseHold">HouseHold</option>
                        <option value="Personal">Personal</option>
                    </select>
                    <div class="invalid-feedback">Please select a category type!</div>
                </div>
                <div class="col-12">
                    <label for="title" class="form-label">Title</label>
                    <input type="text" class="form-control" id="title" name="title" placeholder="Enter category title" required>
                    <div class="invalid-feedback">Please enter a title!</div>
                </div>
                <div class="col-12">
                    <button class="btn btn-primary w-100" type="submit">Save Category</button>
                </div>
                <div class="col-12 text-center mt-3">
                    <a href="ListCategory" class="btn btn-secondary w-100">View List of Category</a>
                </div>
                
            </form>
        </div>
    </div>
</div>
<script>
    function toggleDarkMode() {
        document.body.classList.toggle("bg-dark");
        document.body.classList.toggle("text-white");
    }
</script>
</body>
</html>
