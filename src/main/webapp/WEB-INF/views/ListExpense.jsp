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
		<jsp:include page="Header2.jsp"></jsp:include>

	<jsp:include page="Sidebar2.jsp"></jsp:include>

	<main id="main" class="main" >

		<div class="pagetitle">
			<h1>Expense User</h1>
			<nav>
				<ol class="breadcrumb">
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


								<div class="card-body" >
									
									
										<!-- ✅ Total Expense Box at top-right -->
										<div style="display: flex; justify-content: right; margin-bottom: 10px;">
											<div style="padding: 10px 20px; border-radius: 8px; font-weight: bold; font-size: 16px;">
												Total Expense: ₹${totalExpense}
											</div>
										</div>
										
											
									<table class="table datatable datatable-table table-hover"  id="myTable" >
										<thead >
													
											<tr >
												<th>Title</th>
												<th>Status</th>
												<th>Amount</th>
												<th>TransactionDate</th>
												<th>Description</th>
												<th>Action</th>
											</tr>
										</thead>

										<tbody >
											<c:forEach items="${expenseList}" var="e">
												<tr>
													<td>${e.title}</td>
													<td>${e.status}</td>
													<td>${e.amount}</td>
													<td>${e.transactionDate}</td>
													<td>${e.description}</td>
													<td>
													    <a href="ViewExpense?expenseid=${e.expenseId}" class="btn btn-info btn-sm"><i class="bi bi-eye"></i></a> |
													    <a href="EditExpense?expenseId=${e.expenseId}" class="btn btn-warning btn-sm"><i class="bi bi-pencil-square"></i></a> |
													    <a href="deleteexpense?expenseid=${e.expenseId}" 
													       class="btn btn-danger btn-sm" 
													       onclick="return confirm('Are you sure you want to delete this expense?');">
													       <i class="bi bi-trash"></i>
													    </a>
													</td>

												</tr>
											</c:forEach>
											
										</tbody>

									</table>



								</div>
<div class="col-12 text-center mt-3">
                    <a href="Expense" class="btn btn-secondary w-100">Back of Expense</a>
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


	<jsp:include page="Footer2.jsp"></jsp:include>

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