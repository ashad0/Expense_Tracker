 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.11.0/gsap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.17.0/xlsx.full.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>
    <style>
        .sidebar {
            height: 100vh;
            width: 220px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #343a40;
            padding-top: 60px;
        }
        .sidebar a {
            padding: 15px;
            text-decoration: none;
            font-size: 16px;
            color: white;
            display: block;
            transition: 0.3s;
        }
        .sidebar a:hover {
            background-color: #495057;
        }
        .main {
            margin-left: 230px;
            padding: 20px;
        }
        .navbar-custom {
            background-color: #343a40;
        }
    </style>
    
    <li><a href="Profile"><i class="fa fa-user-circle"></i> Profile</a></li>
    

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
