<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin | List Income</title>

<style>
	.main{
		margin-top: 50px;
	}
</style>

</head>
<body>

	<jsp:include page="Header2.jsp"></jsp:include>

	<jsp:include page="Sidebar2.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Income User</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item active">List Income</li>
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

								<div class="card-body">
								
									
									<div style="display: flex; justify-content: flex-end; margin-bottom: 10px;">
										<div style="padding: 10px 20px; font-weight: bold;">
											Total Income: ₹${totalIncome}
										</div>
									</div>
										
									<table class="table datatable table-hover" id="myTable">
										<thead>
											<tr>
												<th>Title</th>
												<th>Status</th>
												<th>Amount</th>
												<th>Transaction Date</th>
												<th>Description</th>
												<th>Action</th>
											</tr>
										</thead>

										<tbody>
											<c:forEach items="${incomeList}" var="i">
												<tr>
													<td>${i.title}</td>
													<td>${i.status}</td>
													<td>${i.amount}</td>
													<td>${i.transcationDate}</td>
													<td>${i.description}</td>
													<td>
													    <a href="ViewIncome?incomeid=${i.incomeId}" class="btn btn-info btn-sm">View</a> |
													    <a href="EditIncome?incomeId=${i.incomeId}" class="btn btn-warning btn-sm">Edit</a> |
													    <a href="deleteincome?incomeid=${i.incomeId}" 
													       class="btn btn-danger btn-sm" 
													       onclick="return confirm('Are you sure you want to delete this income?');">
													       Delete
													    </a>
													</td>

												</tr>
											</c:forEach>
										</tbody>

									</table>

								</div>
<div class="col-12 text-center mt-3">
                    <a href="Income" class="btn btn-secondary w-100">Back of Income</a>
                </div>
							</div>
						</div>
						<!-- End Reports -->

					</div>
				</div>
				<!-- End Left side columns -->

			</div>
			
		</section>

	</main>
	<!-- main content end  -->

	<jsp:include page="Footer2.jsp"></jsp:include>


	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>

 	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>

	<script type="text/javascript">
	$( document ).ready(function() {
		let table = new DataTable('#myTable',{
			// Customization options can be added here
		});
	});
	</script>

</body>
</html>
