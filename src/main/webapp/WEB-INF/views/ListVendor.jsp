<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin | List Vendor</title>

<jsp:include page="Admincss.jsp"></jsp:include>


<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>


</head>
<body>
	<jsp:include page="Header.jsp"></jsp:include>

	<jsp:include page="Sidebar.jsp"></jsp:include>

	<main id="main" class="main" style="background-color: gold;">

		<div class="pagetitle">
			<h1>Vendor User</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">List Vendor</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row" style="min-height: 500px;">

				<!-- Left side columns -->
				<div class="col-lg-12">
					<div class="row">
						<!-- Reports -->
						<div class="col-12">
							<div class="card">


								<div class="card-body" style="background-color: black; color: gold;">
									<h5 class="card-title">
										Vendors<span>/all</span>
									</h5>
								

									<table class="table datatable datatable-table table-hover" id="myTable">
										<thead>
											<tr>
												<th style="background-color: gold; color: black;">Title</th>
												<th style="background-color: gold; color: black;">Action</th>
											
											</tr>
										</thead>

										<tbody>
											<c:forEach items="${vendorList}" var="v">
												<tr>
													<td style="background-color: black; color: gold;">${v.title}</td>
													
													<td style="background-color: black; color: gold;">
													    <a href="ViewVendor?vendorid=${v.vendorId}" class="btn btn-info btn-sm"><i class="bi bi-eye"></i></a> |
													    <a href="EditVendor?vendorId=${v.vendorId}" class="btn btn-warning btn-sm"><i class="bi bi-pencil-square"></i></a> |
													    <a href="deletevendor?vendorid=${v.vendorId}" 
													       class="btn btn-danger btn-sm" 
													       onclick="return confirm('Are you sure you want to delete this vendor?');">
													       <i class="bi bi-trash"></i>
													    </a>
													</td>


												</tr>
											</c:forEach>
										</tbody>

									</table>



								</div>

							</div>
						</div>
						<!-- End Reports -->

					</div>
				</div>
				<!-- End Left side columns -->

				<!-- Right side columns -->
				<!-- End Right side columns -->

			</div>
		</section>

	</main>
	<!-- main content end  -->


	<jsp:include page="Footer.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
	
	

	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
  
 
 

	<script type="text/javascript">

	$( document ).ready(function() {
		let table = new DataTable('#myvendor',{
			 
		});
	});
	</script>

</body>
</html>