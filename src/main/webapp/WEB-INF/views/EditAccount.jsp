<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Edit Account</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans|Nunito|Poppins" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
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
                    <h5 class="card-title text-center pb-0 fs-4">Edit Account Details</h5>
                  </div>

                  <form class="row g-3 needs-validation" action="updateaccount" method="post" novalidate>

                    <div class="col-12">
                      <label for="title" class="form-label fw-bold icon-blue">Title</label>
                      <input type="text" class="form-control" id="title" name="title" value="${Account.title}" required placeholder="Enter title">
                      <div class="invalid-feedback">Please enter a valid title!</div>
                    </div>

                    <div class="col-6">
                      <label for="amount" class="form-label fw-bold icon-blue">Amount</label>
                      <input type="text" class="form-control" id="amount" name="amount" value="${Account.amount}" required placeholder="Enter amount">
                      <div class="invalid-feedback">Please enter a valid amount!</div>
                    </div>

                    <div class="col-6">
                      <label for="description" class="form-label fw-bold icon-blue">Description</label>
                      <input type="text" class="form-control" id="description" name="description" value="${Account.description}" required placeholder="Enter description">
                      <div class="invalid-feedback">Please enter a description!</div>
                    </div>

                    <input type="hidden" name="accountId" value="${Account.accountId}" />

                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Update Account</button>
                    </div>

                    <div class="col-12 text-center">
                      <p class="small">Back to <a href="ListAccount"><b>List</b></a></p>
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

</body>
</html>
