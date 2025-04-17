<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Edit SubCategory</title>

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet">

  <jsp:include page="Admincss.jsp" />
</head>

<body>
  <jsp:include page="Header2.jsp" />
  <jsp:include page="Sidebar2.jsp" />

  <main id="main" class="main">
    <section class="section dashboard">
      <div class="row justify-content-center" style="min-height: 500px;">
        <div class="col-lg-6">
          <div class="card">
            <div class="card-body">

              <div class="pt-4 pb-2">
                <h5 class="card-title text-center pb-0 fs-4">Edit SubCategory</h5>
              </div>

              <form action="updatesub" method="post" class="row g-3 needs-validation" novalidate>

                <!-- SubCategory Title -->
                <div class="col-12">
                  <label for="title" class="form-label fw-bold icon-blue">SubCategory Title</label>
                  <input type="text" class="form-control" id="title" name="title" value="${Sub.title}" required>
                  <div class="invalid-feedback">Please enter subcategory title!</div>
                </div>

                <!-- Category Dropdown -->
                <div class="col-12">
                  <label for="categoryId" class="form-label fw-bold icon-blue">Select Category</label>
                  <select class="form-control" name="categoryId" id="categoryId" required>
                    <option value="" disabled>Select category</option>
                    <c:forEach items="${categoryList}" var="cat">
                      <option value="${cat.categoryId}" ${cat.categoryId == Sub.categoryId ? 'selected' : ''}>${cat.title}</option>
                    </c:forEach>
                  </select>
                  <div class="invalid-feedback">Please select a category.</div>
                </div>

                <!-- Hidden SubCategory ID -->
                <input type="hidden" name="subId" value="${Sub.subId}" />

                <!-- Submit Button -->
                <div class="col-12">
                  <button class="btn btn-primary w-100" type="submit">Update SubCategory</button>
                </div>

                <!-- Back to List -->
                <div class="col-12 text-center">
                  <p class="small">Back to <a href="ListSub"><b>List</b></a></p>
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
