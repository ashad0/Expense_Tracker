<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Add Expense</title>

  <!-- Vendor CSS Files (from hoarding page) -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- Custom style -->
  <style>
    .form-label {
      font-weight: bold;
      color: #012970;
    }

    .form-control {
      border-radius: 6px;
    }

    .card {
      margin-top: 30px;
    }

    .btn-primary {
      background-color: #4154f1;
      border: none;
    }

    .btn-primary:hover {
      background-color: #3a47c2;
    }
  </style>
</head>
<body>

  <jsp:include page="Header.jsp"/>
  <jsp:include page="Sidebar.jsp"/>

  <main id="main" class="main">
    <section class="section dashboard">
      <div class="row" style="min-height: 500px;">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-body">
              <div class="pt-4 pb-2">
                <h5 class="card-title text-center pb-0 fs-4">Add New Expense</h5>
              </div>

              <form action="saveexpense" method="post" class="row g-3 needs-validation" novalidate>

                <div class="col-12">
                  <label for="title" class="form-label">Title</label>
                  <input type="text" class="form-control" id="title" name="title" placeholder="Enter expense title" required>
                  <div class="invalid-feedback">Please enter a title!</div>
                </div>

                <div class="col-12">
                  <label for="status" class="form-label">Status</label>
                  <input type="text" class="form-control" id="status" name="status" placeholder="Enter status" required>
                  <div class="invalid-feedback">Please enter a status!</div>
                </div>

                <div class="col-6">
                  <label for="amount" class="form-label">Amount</label>
                  <input type="text" class="form-control" id="amount" name="amount" placeholder="Enter amount" required>
                  <div class="invalid-feedback">Please enter the amount!</div>
                </div>

                <div class="col-6">
                  <label for="transationdate" class="form-label">Transaction Date</label>
                  <input type="text" class="form-control" id="transationdate" name="transationdate" placeholder="YYYY-MM-DD" required>
                  <div class="invalid-feedback">Please enter the date!</div>
                </div>

                <div class="col-12">
                  <label for="description" class="form-label">Description</label>
                  <input type="text" class="form-control" id="description" name="description" placeholder="Enter description" required>
                  <div class="invalid-feedback">Please enter a description!</div>
                </div>

                <div class="col-12">
                  <label for="categoryId" class="form-label">Category</label>
                  <select name="categoryId" class="form-control" required>
                    <c:forEach items="${categoryList}" var="c">
                      <option value="${c.categoryId}">${c.title}</option>
                    </c:forEach>
                  </select>
                </div>

                <div class="col-12">
                  <label for="vendorId" class="form-label">Vendor</label>
                  <select name="vendorId" class="form-control" required>
                    <c:forEach items="${vendorList}" var="v">
                      <option value="${v.vendorId}">${v.title}</option>
                    </c:forEach>
                  </select>
                </div>

                <div class="col-12">
                  <label for="subId" class="form-label">Sub Category</label>
                  <select name="subId" class="form-control" required>
                    <c:forEach items="${subList}" var="s">
                      <option value="${s.subId}">${s.title}</option>
                    </c:forEach>
                  </select>
                </div>

                <div class="col-12">
                  <label for="accountId" class="form-label">Account</label>
                  <select name="accountId" class="form-control" required>
                    <c:forEach items="${accountList}" var="a">
                      <option value="${a.accountId}">${a.title}</option>
                    </c:forEach>
                  </select>
                </div>

                <div class="col-12">
                  <button class="btn btn-primary w-100" type="submit" style="color: gold; background-color: black;">Save Expense</button>
                </div>

              </form>

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
