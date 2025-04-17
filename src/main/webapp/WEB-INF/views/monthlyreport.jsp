<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Monthly Report</title>
    <jsp:include page="Admincss.jsp"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
</head>
<body>
    <jsp:include page="Header.jsp"/>
    <jsp:include page="Sidebar.jsp"/>

    <main id="main" class="main" style="background-color: gold;">
        <div class="pagetitle">
            <h1>Monthly Report</h1>
            <nav>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="dashboard">Home</a></li>
                    <li class="breadcrumb-item active">Report</li>
                </ol>
            </nav>
        </div>

        <section class="section dashboard">
            <form method="get" action="getMonthlyReport" class="row mb-4">
                <div class="col-md-4">
                    <label for="month" class="form-label">Select Month</label>
                    <input type="month" name="monthYear" class="form-control" required>
                </div>
                <div class="col-md-2 align-self-end">
                    <button class="btn btn-dark w-100">Generate</button>
                </div>
            </form>

            <div class="row">
                <!-- Summary Cards -->
                <div class="col-md-4">
                    <div class="card text-center bg-black text-gold">
                        <div class="card-body">
                            <h5>Total Income</h5>
                            <h3>₹${incomeTotal}</h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card text-center bg-black text-gold">
                        <div class="card-body">
                            <h5>Total Expense</h5>
                            <h3>₹${expenseTotal}</h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card text-center bg-black text-gold">
                        <div class="card-body">
                            <h5>Balance</h5>
                            <h3>₹${incomeTotal - expenseTotal}</h3>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Transaction Table -->
            <div class="card mt-4">
                <div class="card-body" style="background-color: black; color: gold;">
                    <h5 class="card-title">Transactions</h5>
                    <table class="table table-hover text-gold" id="reportTable">
                        <thead>
                            <tr style="background-color: gold; color: black;">
                                <th>Date</th>
                                <th>Type</th>
                                <th>Category</th>
                                <th>Amount</th>
                                <th>Description</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${reportList}" var="t">
                                <tr>
                                    <td>${t.date}</td>
                                    <td>${t.type}</td>
                                    <td>${t.category}</td>
                                    <td>₹${t.amount}</td>
                                    <td>${t.description}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

        </section>
    </main>

    <jsp:include page="Footer.jsp"/>
    <jsp:include page="AdminJs.jsp"/>

    <script src="https://cdn.datatables.net/2.2.2/js/dataTables.min.js"></script>
    <script>
        new DataTable('#reportTable');
    </script>
</body>
</html>
