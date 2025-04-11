<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title> Edit User</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%><link rel="stylesheet" href="styles.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
  <link href="assets/css/style.css" rel="stylesheet">
  
 
  <style>
        body {
             background:#fff !important;
            color: white;
        }
        .header{
    	 background-color: #fff !important;
		border-bottom: 3px solid #003d80;
		height:75px;
		}
    .logo-container {
      display: flex;
      align-items: center;
      font-family: Arial, sans-serif;
      font-size: 28px;
      font-weight: bold;
    }

    /* Circular Part of the Logo */
    .logo-circle {
      width: 35px;
      height: 35px;
      background: linear-gradient(40deg,  #007bff , black); /* Updated color */
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      margin-right: 10px;
      color: white;
      font-size: 17px;
      font-weight: bold;
    }

    /* AdverZone Text */
   
    .logo-text {
    color: #012970;
	  display: inline-block;
	  position: relative;
	  font-weight: bold;
	  font-size: 21px;
	 /* text-transform: uppercase;*/
	}
	
	.logo-text::after {
	  content: "";
	  position: absolute;
	  width: 100%;
	  height: 4px; /* Thickness of the underline */
	  bottom: -2px; /* Adjust to place underline properly */
	  left: 0;
	  background: linear-gradient(to right, #007bff 57%, #012970 50%);
	}
	    
	
    /* Highlighted "Zone" */
    .highlight {
       color: #007bff; /* Updated color */
    }.rounded-circle {
    width: 40px; /* Adjust size as needed */
    height: 40px; /* Ensure equal width and height */
    border-radius: 50% !important; /* Ensure a perfect circle */
    object-fit: cover; /* Prevent image distortion */
    border: 2px solid #fff; /* Optional: Adds a white border for better visibility */
}
	
	.search-bar input {
	    border: 2px solid black; /* Blue border */
	    color: #003d80; /* Blue text */
	    padding: 8px;
	    border-radius: 5px; /* Rounded corners */
	}
	
	.search-bar input::placeholder {
	    color: #003d80; /* Blue placeholder text */
	    opacity: 1; /* Ensure visibility */
	}
	
	.search-bar input:focus {
	    border-color: #002b5c; /* Darker blue on focus */
	    outline: none; /* Remove default focus outline */
	}
	
	.search-bar button {
	    background-color: #003d80; /* Blue button */
	    color: white;
	    border: none;
	    padding: 8px 12px;
	    cursor: pointer;
	    border-radius: 5px;
	}
	    .highlight {
       color: #007bff; /* Updated color */
    }
            .card-title {
				    background-color:#012970;
				    color: white;
				    padding: 10px;
				    border-radius: 5px;
				    display: inline-block;
				    width: 100%;
				    text-align: center;
}
            
    .profile-container {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    text-align: center;
    margin-bottom: 20px;
    
}

.profile-container img {
    width: 180px;  /* Increased size */
    height: 180px; 
    object-fit: cover;
    border-radius: 50%;
    border: 4px solid #012970; /* Blue border */
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2); /* Soft shadow */
    margin-bottom: 15px;
     margin-top: 100px;
}

.profile-container h3 {
    font-size: 22px;
    color: #333;
    font-weight: bold;
    margin-top: 10px;
}

/* User Details Styling */
.profile-card {
    max-width: 600px;
    margin: auto;
    background: #fff;
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.15);
}

.profile-card table {
    width: 100%;
}

.profile-card th {
    background:  #012970;
    color: white;
    padding: 10px;
    text-align: left;
}

.profile-card td {
    padding: 10px;
    border-bottom: 1px solid #ddd;
}

.profile-card tr:last-child td {
    border-bottom: none;
}

.icon-blue {
      color: #003d80 !important;
    }

.login{
font-size:18px;
color: black;


}

.small a{

color:#012970;
 font-weight: bold;
}



	.rounded-circle {
    width: 40px; /* Adjust size as needed */
    height: 40px; /* Ensure equal width and height */
    border-radius: 50% !important; /* Ensure a perfect circle */
    object-fit: cover; /* Prevent image distortion */
    border: 2px solid #fff; /* Optional: Adds a white border for better visibility */
    
    
}


/------------------------ Footer Styling -----------------------------/
	.footer {
	    background-color: #001F3F; /* Dark blue footer */
	    color: white;
	    text-align: center;
	    padding: 20px 0;
	    margin-top: 220px;
	    border-top: 4px solid #012970; /* Darker blue top border */
	}
	
/* -----------------------Footer Headings------------------------------- */
	.footer h4 {
	    margin-bottom: 15px;
	    font-size: 20px;
	    font-weight: bold;
	}

/----------------------- Footer Paragraphs ------------------------------/
	.footer p {
	    margin-bottom: 10px;
	    font-size: 16px;
	}

/* ------------------------Social Media Icons----------------------------- */
	.social-icon {
	    font-size: 30px;
	    color: white; /* White icons */
	    margin: 10px;
	    transition: transform 0.3s ease, color 0.3s ease;
	}

	.social-icon:hover {
	    transform: scale(1.2);
	    color: #007bff; /* Blue hover effect */
	}

/* -------------------------Copyright Section------------------------------ */
	.footer .copyright {
	    margin-top: 40px; /* Adjust space above copyright */
	    font-size: 16px;
	}


   /------------end---------------/ 
@keyframes opaque { 0% {
	opacity: 0
}

to {
	opacity: 1
}

}
@
keyframes resizeanim { 0%, to { opacity:0
	
}

}
</style>
</head>

<body>
	<jsp:include page="Header.jsp"></jsp:include>
	
   
                <!-- Profile Picture -->
             <div class="col-md-12 text-center profile-container">
    <img src="${user.profilePicPath}" class="img-fluid" alt="Profile Picture">
    <h3>${user.firstName} ${user.lastName}</h3>
</div>

<!-- User Info -->
<div class="col-md-12 profile-card">
    <table class="table">
        <tr>
            <th>First Name</th>
            <td>${user.firstName}</td>
        </tr>
        <tr>
            <th>Last Name</th>
            <td>${user.lastName}</td>
        </tr>
        <tr>
            <th>Gender</th>
            <td>${user.gender}</td>
        </tr>
        <tr>
            <th>Email</th>
            <td>${user.email}</td>
        </tr>
        <tr>
            <th>Contact Number</th>
            <td>${user.contactNum}</td>
        </tr>
        <tr>
            <th>Role</th>
            <td>${user.role}</td>
        </tr>
        <tr>
            <th>Account Status</th>
            <td>${user.active}</td>
        </tr>
        <tr>
            <th>Joined On</th>
            <td>${user.createAt}</td>
        </tr>
    </table>
</div>
<div class="col-12 mt-5 text-center">
  		 <div class="login"> <p class="small">Back to <a href="admindashboard"><b>Dashboard</b> </a></div> </p>
</div>

        <c:if test="${not empty error}">
            <div class="alert alert-danger">
                ${error}
            </div>
        </c:if>
   
    
    	<jsp:include page="Footer.jsp"></jsp:include>
	<jsp:include page="AdminJs.jsp"></jsp:include>
	
	

	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
	<script type="text/javascript">
		$( document ).ready(function() {
			let table = new DataTable('#myTable',{	 
			});
		});
	</script>
	
</body>
</html>