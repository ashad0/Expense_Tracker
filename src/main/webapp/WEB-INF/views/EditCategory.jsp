<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Edit Category</title>

  <!-- Vendor & Custom CSS -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/css/style.css" rel="stylesheet">
  <jsp:include page="Admincss.jsp" />
</head>
<body>

<jsp:include page="Header.jsp" />
<jsp:include page="Sidebar.jsp" />

<main id="main" class="main">
  <section class="section dashboard">
    <div class="row" style="min-height: 500px;">
      <div class="col-lg-12">
        <div class="card">
          <div class="card-body">

            <div class="pt-3 pb-2">
              <h5 class="card-title text-center pb-0 fs-4">Edit Category</h5>
            </div>

            <form class="row g-3 needs-validation" action="updatecategory" method="post" novalidate>
              
              <div class="col-12">
                <label for="title" class="form-label fw-bold icon-blue">Category Title</label>
                <input type="text" class="form-control" id="title" name="title" value="${Category.title}" required>
                <div class="invalid-feedback">Please enter category title!</div>
              </div>

              <input type="hidden" name="categoryId" value="${Category.categoryId}" />

              <div class="col-12">
                <button class="btn btn-primary w-100" type="submit">Update Category</button>
              </div>

              <div class="col-12 text-center">
                <p class="small">Back to <a href="ListCategory"><b>List</b></a></p>
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

<!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>

</body>
</html>
