<style>
.dark-mode {
    background-color: #121212 !important;
    color: #f1f1f1 !important;
}

.dark-mode .navbar {
    background-color: #1e1e1e !important;
}

.dark-mode .dropdown-menu {
    background-color: #2c2c2c;
    color: #f1f1f1;
}

.dark-mode .dropdown-menu .dropdown-item {
    color: #f1f1f1;
}

.dark-mode .dropdown-menu .dropdown-item:hover {
    background-color: #3a3a3a;
}
</style>

<nav class="navbar navbar-expand-lg fixed-top navbar-light" style="background-color: #343a40;">
    <div class="container-fluid">
        <a href="Home.jsp" class="navbar-brand logo-container">
            <span class="logo-text" style="padding-left: 20px; color: white;">Trackify</span>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
             
             <li class="nav-item dropdown pe-3">

         <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
    <img src="${user.profilePicPath}" alt="Profile" class="rounded-circle" style="width: 40px;">
    <span class="d-none d-md-block dropdown-toggle ps-2" style="color: white;">${user.firstName}</span>
</a>
	<li class="nav-item d-flex align-items-center pe-3">
    <button id="darkModeToggle" class="btn btn-sm text-white">
        <i class="bi bi-moon-fill" id="darkModeIcon"></i>
    </button>
</li>
	
          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>${user.firstName }&nbsp;${user.lastName}</h6>
              <span>Web Designer</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="myprofile">
                <i class="bi bi-person"></i>
                <span>My Profile</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-gear"></i>
                <span>Account Settings</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>Need Help?</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="logout">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
           </ul>
        </div>
    </div>
</nav>

<script>
    const toggleBtn = document.getElementById("darkModeToggle");
    const icon = document.getElementById("darkModeIcon");

    // Load mode from local storage
    if (localStorage.getItem("darkMode") === "enabled") {
        document.body.classList.add("dark-mode");
        icon.classList.replace("bi-moon-fill", "bi-sun-fill");
    }

    toggleBtn.addEventListener("click", () => {
        document.body.classList.toggle("dark-mode");

        if (document.body.classList.contains("dark-mode")) {
            icon.classList.replace("bi-moon-fill", "bi-sun-fill");
            localStorage.setItem("darkMode", "enabled");
        } else {
            icon.classList.replace("bi-sun-fill", "bi-moon-fill");
            localStorage.setItem("darkMode", "disabled");
        }
    });
</script>
