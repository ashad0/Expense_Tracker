<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View SubCategory</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <jsp:include page="Admincss.jsp" />
</head>
<body>

<jsp:include page="Header2.jsp" />
<jsp:include page="Sidebar2.jsp" />

<main id="main" class="main">
    <div class="pagetitle">
        <h1>View SubCategory</h1>
       
    </div>

    <section class="section dashboard">
        <div class="row" style="min-height: 500px;">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">
                                <span class="fw-bold icon-blue">SubCategory Title:</span>
                                <span class="value">${sub.title}</span>
                                
                                 <div class="col-12 text-center">
				                      <p class="small">Back to <a href="ListSub"><b>List</b></a></p>
				                    </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

<jsp:include page="Footer2.jsp" />
<jsp:include page="AdminJs.jsp" />

</body>
</html>
