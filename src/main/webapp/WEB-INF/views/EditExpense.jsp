<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Edit Expense</title>

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
  <jsp:include page="Admincss.jsp"></jsp:include>
</head>
<body>

  <jsp:include page="Header.jsp"/>
  <jsp:include page="Sidebar.jsp"/>

  <main id="main" class="main">
    <section class="section dashboard">
      <div class="row" style="min-height: 500px;">
        <div class="col-lg-12">
          <div class="row">
            <div class="col-12">
              <div class="card">
                <div class="card-body">

                  <div class="pt-2 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Edit Expense Details</h5>
                  </div>

                  <form class="row g-3 needs-validation" action="updateexpense" method="post" novalidate>

                    <div class="col-12">
                      <label for="title" class="form-label fw-bold icon-blue">Title</label>
                      <input type="text" class="form-control" id="title" name="title" value="${Expense.title}" required>
                      <div class="invalid-feedback">Please enter a title!</div>
                    </div>

                    <div class="col-12">
                      <label for="status" class="form-label fw-bold icon-blue">Status</label>
                      <input type="text" class="form-control" id="status" name="status" value="${Expense.status}" required>
                      <div class="invalid-feedback">Please enter a status!</div>
                    </div>

                    <div class="col-6">
                      <label for="amount" class="form-label fw-bold icon-blue">Amount</label>
                      <input type="text" class="form-control" id="amount" name="amount" value="${Expense.amount}" required>
                      <div class="invalid-feedback">Please enter amount!</div>
                    </div>

                    <div class="col-6">
                      <label for="transactionDate" class="form-label fw-bold icon-blue">Transaction Date</label>
                      <input type="date" class="form-control" id="transactionDate" name="transactionDate" value="${Expense.transactionDate}" required>
                      <div class="invalid-feedback">Please enter transaction date!</div>
                    </div>

                    <div class="col-12">
                      <label for="description" class="form-label fw-bold icon-blue">Description</label>
                      <input type="text" class="form-control" id="description" name="description" value="${Expense.description}" required>
                      <div class="invalid-feedback">Please enter description!</div>
                    </div>

                    <input type="hidden" name="expenseId" value="${Expense.expenseId}" />

                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Update Expense</button>
                    </div>

                    <div class="col-12 text-center">
                      <div class="login">
                        <p class="small">Back to <a href="ListExpense"><b>List</b></a></p>
                      </div>
                    </div>

                  </form>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </main>

  <jsp:include page="Footer.jsp"/>
  <jsp:include page="AdminJs.jsp"/>

</body>
</html>
