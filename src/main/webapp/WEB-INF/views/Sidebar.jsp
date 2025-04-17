<style>


/* Sidebar background black */
.sidebar {
  background-color: #000 !important;
}

/* Sidebar nav items background black and text golden */
.sidebar-nav .nav-item,
.sidebar-nav .nav-link,
.sidebar-nav .nav-content a {
  background-color: #000 !important;
  color: gold !important;
}

/* Icons and arrows golden */
.sidebar-nav .bi,
.sidebar-nav .nav-link i,
.sidebar-nav .nav-content i {
  color: gold !important;
}

/* Hover effect for nav links */
.sidebar-nav .nav-link:hover,
.sidebar-nav .nav-content a:hover {
  background-color: #111 !important;
  color: gold !important;
}

/* Form fields background black and text golden */
input,
select,
textarea {
  background-color: #000 !important;
  color: gold !important;
  border: 1px solid gold !important;
}

/* Placeholder text golden */
input::placeholder,
textarea::placeholder {
  color: gold !important;
}

/* For disabled fields */
input:disabled,
select:disabled,
textarea:disabled {
  background-color: #222 !important;
  color: gold !important;
  opacity: 0.6;
}

/* Bootstrap form controls if used */
.form-control,
.form-select {
  background-color: #000 !important;
  color: gold !important;
  border: 1px solid gold !important;
}


</style>

<aside id="sidebar" class="sidebar">

	<ul class="sidebar-nav" id="sidebar-nav">

		<!-- End Dashboard Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
				<i  class="bi bi-person"></i><span>Users</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="components-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="Signup"> <i class="bi bi-circle"></i><span>Add
							User</span>
				</a></li>
				<li><a href="ListUser"> <i class="bi bi-circle"></i><span>List
							User</span>
				</a></li>
			</ul>
		</li>
		<!-- End Components Nav -->




		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#"> <i
				class="bi bi-gem"></i><span>Account</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="icons-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="Account"> <i class="bi bi-circle"></i><span>Add 
							Account</span>
				</a></li>
				<li><a href="ListAccount"> <i class="bi bi-circle"></i><span>List 
							Account</span>
				</a></li>
			</ul></li>
		<!-- End Icons Nav -->

	<li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#vendors-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-bag-plus"></i><span>Vendors</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="vendors-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="Vendor">
              <i class="bi bi-circle"></i><span>Add Vendor</span>
            </a>
          </li>
          <li>
            <a href="ListVendor">
              <i class="bi bi-circle"></i><span>List Vendor</span>
            </a>
          </li>
        </ul>
      </li>
      
	</ul>
	
</aside>









