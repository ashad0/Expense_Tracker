<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <title>Edit User</title>

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
      <div class="row justify-content-center" style="min-height: 500px;">
        <div class="col-lg-6">
          <div class="card">
            <div class="card-body">

              <div class="pt-4 pb-2">
                <h5 class="card-title text-center pb-0 fs-4">Edit User</h5>
              </div>

              <form action="updateuser" method="post" class="row g-3 needs-validation" novalidate>

                <!-- First Name -->
                <div class="col-12">
                  <label for="firstName" class="form-label fw-bold icon-blue">First Name</label>
                  <input type="text" class="form-control" id="firstName" name="firstName" value="${user.firstName}" required>
                  <div class="invalid-feedback">Please enter first name!</div>
                </div>

                <!-- Last Name -->
                <div class="col-12">
                  <label for="lastName" class="form-label fw-bold icon-blue">Last Name</label>
                  <input type="text" class="form-control" id="lastName" name="lastName" value="${user.lastName}" required>
                  <div class="invalid-feedback">Please enter last name!</div>
                </div>

                <!-- Email -->
                <div class="col-12">
                  <label for="email" class="form-label fw-bold icon-blue">Email</label>
                  <input type="email" class="form-control" id="email" name="email" value="${user.email}" required>
                  <div class="invalid-feedback">Please enter valid email!</div>
                </div>

                <!-- Mobile Number -->
                <div class="col-12">
                  <label for="mobileNumber" class="form-label fw-bold icon-blue">Mobile Number</label>
                  <input type="text" class="form-control" id="mobileNumber" name="mobileNumber" value="${user.mobileNumber}" required>
                  <div class="invalid-feedback">Please enter mobile number!</div>
                </div>

                <!-- Hidden User ID -->
                <input type="hidden" name="userid" value="${user.userid}" />

                <!-- Submit Button -->
                <div class="col-12">
                  <button class="btn btn-primary w-100" type="submit">Update User</button>
                </div>

                <!-- Back to List -->
                <div class="col-12 text-center">
                  <p class="small">Back to <a href="ListUser"><b>List</b></a></p>
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
