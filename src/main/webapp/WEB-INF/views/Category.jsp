<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Add Category</title>

  <!-- Vendor & Bootstrap CSS -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">

  <!-- Main CSS -->
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
              <div class="pt-2 pb-2 text-center">
                <h5 class="card-title pb-0 fs-4">Add New Category</h5>
              </div>

              <form class="row g-3 needs-validation" action="savecategory" method="post" novalidate>

                <div class="col-12">
                  <label for="options" class="form-label fw-bold icon-blue">Choose Category Type</label>
                  <select id="options" name="options" class="form-control dropdown-black" required>
                    <option value="" disabled selected>Select Category</option>
                    <option value="AutoMobile">AutoMobile</option>
                    <option value="HouseHold">HouseHold</option>
                    <option value="Personal">Personal</option>
                  </select>
                  <div class="invalid-feedback">Please select a category type!</div>
                </div>

                <div class="col-12">
                  <label for="title" class="form-label fw-bold icon-blue">Title</label>
                  <input type="text" id="title" name="title" class="form-control" placeholder="Enter category title" required>
                  <div class="invalid-feedback">Please enter the title!</div>
                </div>

                <div class="col-12">
                  <button class="btn btn-primary w-100" type="submit" style="color: gold; background-color: black;">Save Category</button>
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

</body>
</html>
