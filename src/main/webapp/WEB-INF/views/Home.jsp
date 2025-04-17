<%@ page import="com.grownited.entity.userentity" %>
<%@ page session="true" %>
<%
    userentity user = (userentity) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Trackify Home Page</title>
   <style>
   	.main{
   		margin-top: 50px;
   	}
   </style>
</head>

	<jsp:include page="Sidebar2.jsp"></jsp:include>

<body class="bg-light text-dark">	
<!-- Navbar -->
	<jsp:include page="Header2.jsp"></jsp:include>


<!-- Sidebar -->
<div class="sidebar">
    <a href="Home"><i class="fa fa-home"></i> Dashboard</a>
    <a href="Income"><i class="fa fa-money-bill"></i> Income</a>
    <a href="Expense"><i class="fa fa-receipt"></i> Expense</a>
    <a href="Category"><i class="fa fa-layer-group"></i> Category</a>
    <a href="Sub"><i class="fa fa-stream"></i> Sub-Category</a>
    <a href="MonthlyReport"><i class="fa fa-chart-line"></i> Monthly Report</a>
        <a href="MyProfile"><i class="fa fa-user-circle"></i> Profile</a>
    
    <a href="logout" class="text-danger"><i class="fa fa-sign-out-alt"></i> Logout</a>
</div>

<!-- Main Content -->
<div class="main">
    <div class="row mb-4">
        <div class="col-md-3">
            <div class="card text-white bg-success" id="card1">
                <div class="card-body">
                    <h5 class="card-title">Total Income</h5>
                    <p class="card-text">₹15,000</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-white bg-danger" id="card2">
                <div class="card-body">
                    <h5 class="card-title">Total Expense</h5>
                    <p class="card-text">₹8,000</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-white bg-primary" id="card3">
                <div class="card-body">
                    <h5 class="card-title">Balance</h5>
                    <p class="card-text">₹7,000</p>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-white bg-warning" id="card4">
                <div class="card-body">
                    <h5 class="card-title">This Month</h5>
                    <p class="card-text">April</p>
                </div>
            </div>
        </div>
    </div>

    <div class="card mb-4">
        <div class="card-header">Income vs Expense Chart</div>
        <div class="card-body">
            <canvas id="expenseChart" height="100"></canvas>
        </div>
    </div>

    <div class="mb-4">
        <button onclick="exportPDF()" class="btn btn-danger me-2">Export PDF</button>
        <button onclick="exportExcel()" class="btn btn-success">Export Excel</button>
    </div>
</div>

<script>
    function toggleDarkMode() {
        document.body.classList.toggle("bg-dark");
        document.body.classList.toggle("text-white");
    }

    const ctx = document.getElementById('expenseChart').getContext('2d');
    new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['Jan', 'Feb', 'Mar', 'Apr'],
            datasets: [
                {
                    label: 'Income',
                    data: [12000, 15000, 11000, 14000],
                    backgroundColor: 'rgba(40, 167, 69, 0.7)',
                },
                {
                    label: 'Expense',
                    data: [8000, 9000, 7000, 8500],
                    backgroundColor: 'rgba(220, 53, 69, 0.7)',
                }
            ]
        }
    });

    function exportPDF() {
        const { jsPDF } = window.jspdf;
        const doc = new jsPDF();
        doc.text("Monthly Report", 10, 10);
        doc.text("Income: ₹15000", 10, 20);
        doc.text("Expense: ₹8000", 10, 30);
        doc.save("report.pdf");
    }

    function exportExcel() {
        const wb = XLSX.utils.book_new();
        const ws = XLSX.utils.json_to_sheet([
            { Month: "April", Income: 15000, Expense: 8000, Balance: 7000 }
        ]);
        XLSX.utils.book_append_sheet(wb, ws, "Report");
        XLSX.writeFile(wb, "report.xlsx");
    }

    gsap.from("#card1, #card2, #card3, #card4", {
        duration: 1, y: 50, opacity: 0, stagger: 0.2
    });
</script>

	<jsp:include page="Footer2.jsp"></jsp:include>

</body>
</html>
