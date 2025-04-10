<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Add Income</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <!-- Bootstrap & Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
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
                    <h5 class="card-title text-center pb-0 fs-4">Add Income</h5>
                  </div>

                  <form class="row g-3 needs-validation" action="saveincome" method="post" novalidate>
                    <div class="col-12">
                      <label for="title" class="form-label fw-bold icon-blue">Title</label>
                      <input type="text" id="title" name="title" class="form-control" placeholder="Enter income title" required>
                      <div class="invalid-feedback">Please enter the title!</div>
                    </div>

                    <div class="col-md-6">
                      <label for="status" class="form-label fw-bold icon-blue">Status</label>
                      <input type="text" id="status" name="status" class="form-control" placeholder="Enter status" required>
                      <div class="invalid-feedback">Please enter status!</div>
                    </div>

                    <div class="col-md-6">
                      <label for="amount" class="form-label fw-bold icon-blue">Amount</label>
                      <input type="text" id="amount" name="amount" class="form-control" placeholder="Enter amount" required>
                      <div class="invalid-feedback">Please enter amount!</div>
                    </div>

                    <div class="col-12">
                      <label for="transcationDate" class="form-label fw-bold icon-blue">Transaction Date</label>
                      <input type="text" id="transcationDate" name="transcationDate" class="form-control" placeholder="YYYY-MM-DD" required>
                      <div class="invalid-feedback">Please enter transaction date!</div>
                    </div>

                    <div class="col-12">
                      <label for="description" class="form-label fw-bold icon-blue">Description</label>
                      <input type="text" id="description" name="description" class="form-control" placeholder="Enter description" required>
                      <div class="invalid-feedback">Please enter description!</div>
                    </div>

                    <div class="col-12">
                      <label for="accountId" class="form-label fw-bold icon-blue">Account</label>
                      <select name="accountId" id="accountId" class="form-control dropdown-black" required>
                        <option value="" disabled selected>Select Account</option>
                        <c:forEach items="${accountList}" var="a">
                          <option value="${a.accountId}">${a.title}</option>
                        </c:forEach>
                      </select>
                      <div class="invalid-feedback">Please select account!</div>
                    </div>

                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit" style="color: gold; background-color: black;">Save Income</button>
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

  <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
  <script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>
</body>

</html>
