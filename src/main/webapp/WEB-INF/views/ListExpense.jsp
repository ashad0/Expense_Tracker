<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin | List Expense</title>


<jsp:include page="Admincss.jsp"></jsp:include>


<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>


</head>
<body>
		<jsp:include page="Header.jsp"></jsp:include>

	<jsp:include page="Sidebar.jsp"></jsp:include>

	<main id="main" class="main" style="background-color: gold;">

		<div class="pagetitle">
			<h1>Expense User</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">List Expense</li>
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
										Expenses<span>/all</span>
									</h5>
									 
									
										<!-- ✅ Total Expense Box at top-right -->
										<div style="display: flex; justify-content: right; margin-bottom: 10px;">
											<div style="background-color: black; color: gold; padding: 10px 20px; border-radius: 8px; font-weight: bold; font-size: 16px;">
												Total Expense: ₹${totalExpense}
											</div>
										</div>
										
											
									<table class="table datatable datatable-table table-hover"  id="myTable" >
										<thead >
													
											<tr >
												<th style="background-color: gold; color: black;">Title</th>
												<th style="background-color: gold; color: black;">Status</th>
												<th style="background-color: gold; color: black;">Amount</th>
												<th style="background-color: gold; color: black;">TransactionDate</th>
												<th style="background-color: gold; color: black;">Description</th>
												<th style="background-color: gold; color: black;">Action</th>
											</tr>
										</thead>

										<tbody >
											<c:forEach items="${expenseList}" var="e">
												<tr>
													<td style="background-color: black; color: gold;">${e.title}</td>
													<td style="background-color: black; color: gold;">${e.status}</td>
													<td style="background-color: black; color: gold;">${e.amount}</td>
													<td style="background-color: black; color: gold;">${e.transactionDate}</td>
													<td style="background-color: black; color: gold;">${e.description}</td>
													<td style="background-color: black; color: gold;">
													 <a href="ViewExpense?expenseid=${e.expenseId}" class="btn btn-info btn-sm"><i class="bi bi-eye"></i></a> |
													<a href="EditExpense?expenseId=${e.expenseId }" class="btn btn-warning btn-sm"><i class="bi bi-pencil-square"></i></a> |
													<a href="deleteexpense?expenseid=${e.expenseId}" class="btn btn-danger btn-sm"><i class="bi bi-trash"></i></a>
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
		let table = new DataTable('#myAccount',{
			 
		});
	});
	</script>


</body>
</html>