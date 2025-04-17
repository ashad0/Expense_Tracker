<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin | List SubCategory</title>

<jsp:include page="Admincss.jsp"></jsp:include>


<link  href="https://cdn.datatables.net/2.2.2/css/dataTables.bootstrap5.min.css" rel="stylesheet"/>


</head>
<body>
	<jsp:include page="Header2.jsp"></jsp:include>

	<jsp:include page="Sidebar2.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>List SubCategory</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item active">List SubCategory</li>
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
									<h5 class="card-title">
										SubCategory<span>/all</span>
									</h5>


									<table class="table datatable datatable-table table-hover" id="myTable">
										<thead>
											<tr>
												<th>Action</th>
												<th>Title</th>
											
											</tr>
										</thead>

										<tbody>
											<c:forEach items="${subList}" var="s">
												<tr>
												    <td>
												        <a href="ViewSub?subid=${s.subId}" class="btn btn-info btn-sm"><i class="bi bi-eye"></i></a> |
												        <a href="EditSub?subId=${s.subId }" class="btn btn-warning btn-sm"><i class="bi bi-pencil-square"></i></a> |
												        <a href="deletesub?subid=${s.subId}" 
												           class="btn btn-danger btn-sm" 
												           onclick="return confirm('Are you sure you want to delete this subcategory?');">
												           <i class="bi bi-trash"></i>
												        </a>
												    </td>
												    <td>${s.title}</td>
												</tr>

											</c:forEach>
										</tbody>

									</table>


<div class="col-12 text-center mt-3">
                    <a href="Category" class="btn btn-secondary w-100">Back of Category</a>
                </div>
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
		let table = new DataTable('#mySub',{
			 
		});
	});
	</script>

</body>
</html>