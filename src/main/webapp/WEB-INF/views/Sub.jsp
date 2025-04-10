<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Add SubCategory</title>

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet">
  
  <jsp:include page="Admincss.jsp" />
</head>
<body>

  <jsp:include page="Header.jsp" />
  <jsp:include page="Sidebar.jsp" />

  <main id="main" class="main">
    <section class="section dashboard">
      <div class="row justify-content-center">
        <div class="col-lg-6">
          <div class="card">
            <div class="card-body">

              <div class="pt-4 pb-2">
                <h5 class="card-title text-center pb-0 fs-4">Add SubCategory</h5>
              </div>

              <form action="savesub" method="post" class="row g-3 needs-validation" novalidate>

                <!-- Subcategory Title -->
                <div class="col-12">
                  <label for="title" class="form-label fw-bold icon-blue">SubCategory Title</label>
                  <input type="text" class="form-control" id="title" name="title" placeholder="Enter subcategory title" required>
                  <div class="invalid-feedback">Please enter subcategory title.</div>
                </div>

                <!-- Category Dropdown -->
                <div class="col-12">
                  <label for="categoryId" class="form-label fw-bold icon-blue">Select Category</label>
                  <select class="form-select" name="categoryId" id="categoryId" required>
                    <option value="" disabled selected>Select category</option>
                    <c:forEach items="${categoryList}" var="c">
                      <option value="${c.categoryId}">${c.title}</option>
                    </c:forEach>
                  </select>
                  <div class="invalid-feedback">Please select a category.</div>
                </div>

                <!-- Submit Button -->
                <div class="col-12">
                  <button class="btn btn-primary w-100" type="submit" style="color: gold; background-color: black;">Save SubCategory</button>
                </div>

              </form>

            </div>
          </div>
        </div>
      </div>
    </section>
  </main>

  <jsp:include page="Footer.jsp" />
  <jsp:include page="AdminJs.jsp" />

  <!-- Bootstrap validation script -->
  <script>
    (() => {
      'use strict';
      const forms = document.querySelectorAll('.needs-validation');
      Array.from(forms).forEach(form => {
        form.addEventListener('submit', event => {
          if (!form.checkValidity()) {
            event.preventDefault();
            event.stopPropagation();
          }
          form.classList.add('was-validated');
        }, false);
      });
    })();
  </script>

</body>
</html>
