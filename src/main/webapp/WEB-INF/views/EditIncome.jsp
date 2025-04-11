<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Edit Income</title>

  <!-- Google Fonts & Vendor CSS -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|Nunito:300,400,600,700|Poppins:300,400,500,600,700" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet">
  <jsp:include page="Admincss.jsp"></jsp:include>
</head>

<body>
  <jsp:include page="Header.jsp"></jsp:include>
  <jsp:include page="Sidebar.jsp"></jsp:include>

  <main id="main" class="main">
    <section class="section dashboard">
      <div class="row" style="min-height: 500px;">
        <div class="col-lg-12">
          <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-body">

                  <div class="pt-2 pb-2">
                    <div class="alpha">
                      <h5 class="card-title text-center pb-0 fs-4">Edit Income Details</h5>
                    </div>
                  </div>

                  <form class="row g-3 needs-validation" action="updateincome" method="post" novalidate>
                    <div class="col-12">
                      <label for="title" class="form-label fw-bold icon-blue">Title</label>
                      <input type="text" class="form-control" id="title" name="title" value="${Income.title}" placeholder="Enter income title" required>
                      <div class="invalid-feedback">Please enter the title!</div>
                    </div>

                    <div class="col-md-6">
                      <label for="status" class="form-label fw-bold icon-blue">Status</label>
                      <input type="text" class="form-control" id="status" name="status" value="${Income.status}" placeholder="Enter status" required>
                      <div class="invalid-feedback">Please enter status!</div>
                    </div>

                    <div class="col-md-6">
                      <label for="amount" class="form-label fw-bold icon-blue">Amount</label>
                      <input type="text" class="form-control" id="amount" name="amount" value="${Income.amount}" placeholder="Enter amount" required>
                      <div class="invalid-feedback">Please enter amount!</div>
                    </div>

                    <div class="col-12">
                      <label for="transcationDate" class="form-label fw-bold icon-blue">Transaction Date</label>
                      <input type="date" class="form-control" id="transcationDate" name="transcationDate" value="${Income.transcationDate}" required>
                      <div class="invalid-feedback">Please enter transaction date!</div>
                    </div>

                    <div class="col-12">
                      <label for="description" class="form-label fw-bold icon-blue">Description</label>
                      <input type="text" class="form-control" id="description" name="description" value="${Income.description}" placeholder="Enter description" required>
                      <div class="invalid-feedback">Please enter description!</div>
                    </div>

                    <input type="hidden" name="incomeId" value="${Income.incomeId}">

                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Update Income</button>
                    </div>

                    <div class="col-12 text-center">
                      <div class="login">
                        <p class="small">Back to <a href="ListIncome"><b>List</b></a></p>
                      </div>
                    </div>
                  </form>

                </div> <!-- card-body -->
              </div> <!-- card -->
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>

  <jsp:include page="Footer.jsp"></jsp:include>
  <jsp:include page="AdminJs.jsp"></jsp:include>

  <!-- Optional JS -->
  <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
  <script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>

</body>

</html>
