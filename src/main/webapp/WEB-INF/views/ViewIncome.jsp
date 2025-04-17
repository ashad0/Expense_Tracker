<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>View Income</title>
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
    <h1>View Income</h1>
   
  </div>

  <section class="section dashboard">
    <div class="row" style="min-height: 500px;">
      <div class="col-lg-12">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-body">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item">
                    <span class="fw-bold icon-blue">Title:</span> <span class="value">${income.title}</span>
                  </li>
                  <li class="list-group-item">
                    <span class="fw-bold icon-blue">Status:</span> <span class="value">${income.status}</span>
                  </li>
                  <li class="list-group-item">
                    <span class="fw-bold icon-blue">Amount:</span> <span class="value">${income.amount}</span>
                  </li>
                  <li class="list-group-item">
                    <span class="fw-bold icon-blue">Transaction Date:</span> <span class="value">${income.transcationDate}</span>
                  </li>
                  <li class="list-group-item">
                    <span class="fw-bold icon-blue">Description:</span> <span class="value">${income.description}</span>
                  </li>
                   <div class="col-12 text-center">
				                      <p class="small">Back to <a href="ListIncome"><b>List</b></a></p>
				                    </div>
                </ul>
              </div> <!-- card-body -->
            </div> <!-- card -->
          </div> <!-- col-12 -->
        </div> <!-- row -->
      </div> <!-- col-lg-12 -->
    </div> <!-- row -->
  </section>
</main>

<jsp:include page="Footer2.jsp"></jsp:include>

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>

</body>
</html>
