<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Account</title>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="styles.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
<jsp:include page="Admincss.jsp"></jsp:include>

</head>
<body>

<jsp:include page="Header.jsp"></jsp:include>
<jsp:include page="Sidebar.jsp"></jsp:include>

<main id="main" class="main">

    <div class="pagetitle">
        <h1>View Account</h1>
    
    </div>

    <section class="section dashboard">
        <div class="row" style="min-height: 500px;">
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body" style="background-color: black; color: gold;">

                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item" style="background-color: black; color: gold;">
                                        <span class="fw-bold icon-blue">Title:</span> <span class="value">${account.title}</span>
                                    </li>
                                    <li class="list-group-item" style="background-color: black; color: gold;">
                                        <span class="fw-bold icon-blue">Amount:</span> <span class="value">${account.amount}</span>
                                    </li>
                                    <li class="list-group-item" style="background-color: black; color: gold;">
                                        <span class="fw-bold icon-blue">Description:</span> <span class="value">${account.description}</span>
                                    </li>
                                    <div class="col-12 text-center" style="background-color: black; color: gold;">
				                      <p class="small">Back to <a href="ListAccount"><b>List</b></a></p>
				                    </div>
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

<jsp:include page="Footer.jsp"></jsp:include>
<jsp:include page="AdminJs.jsp"></jsp:include>

<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
<script src="https://cdn.datatables.net/2.2.2/js/dataTables.bootstrap5.min.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
        let table = new DataTable('#myTable', {});
    });
</script>

</body>
</html>
