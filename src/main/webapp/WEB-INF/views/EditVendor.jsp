<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Edit Vendor</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <!-- Bootstrap & Custom CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
  <link href="assets/css/style.css" rel="stylesheet">
  <jsp:include page="Admincss.jsp"></jsp:include>
</head>

<body>
  <jsp:include page="Header.jsp"></jsp:include>
  <jsp:include page="Sidebar.jsp"></jsp:include>

  <main id="main" class="main">
    <section class="section dashboard">
      <div class="row justify-content-center">
        <div class="col-lg-8">
          <div class="card">
            <div class="card-body">

              <div class="pt-4 pb-2">
                <h5 class="card-title text-center pb-0 fs-4">Edit Vendor Details</h5>
              </div>

              <form action="updatevendor" method="post" class="row g-3 needs-validation" novalidate>

                <div class="col-12">
                  <label for="title" class="form-label fw-bold icon-blue">Title</label>
                  <input type="text" name="title" class="form-control" value="${Vendor.title}" required placeholder="Enter vendor title">
                  <div class="invalid-feedback">Please enter a valid title!</div>
                </div>

                <input type="hidden" name="vendorId" value="${Vendor.vendorId}">

                <div class="col-12">
                  <button class="btn btn-primary w-100" type="submit">Update Vendor</button>
                </div>

                <div class="col-12 text-center">
                  <p class="small">Back to <a href="ListVendor"><b>List</b></a></p>
                </div>

              </form>

            </div>
          </div>
        </div>
      </div>
    </section>
  </main>

  <jsp:include page="Footer.jsp"></jsp:include>
  <jsp:include page="AdminJs.jsp"></jsp:include>

  <!-- Bootstrap Validation Script -->
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
