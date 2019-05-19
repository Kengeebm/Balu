<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
} 

form {
	border: 3px solid #f1f1f1;
}
.header {
	position: fixed;
	left: 0;
	top: 0;
	width: 100%;
	background-color: rgb(1, 14, 86);
	color: white;
	text-align: center;
}

.logoutLblPos {
	padding: 10px 20px;
	position: fixed;
	right: 15px;
	top: 25px;
	background-color: black;
}

.dropbtn {
	background-color: #9A9A98;
	color: white;
	padding: 16px;
	font-size: 16px;
	border: none;
}

.dropdown {
	position: absolute;
	display: inline-block;
	right: 130px;
	top: 25px;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f1f1f1;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
}

.dropdown-content a:hover {
	background-color: rgb(14, 15, 17);
}

.dropdown:hover .dropdown-content {
	display: inline-block;
}

.dropdown:hover .dropbtn {
	background-color: #9A9A98);
}

.footer {
	position: fixed;
	left: 0;
	bottom: 0;
	width: 100%;
	background-color: rgb(1, 14, 86);
	color: white;
	text-align: center;
}

.link {
	margin: 100px;
}

a:link, a:visited {
	background-color: white;
	color: black;
	border: 2px solid rgb(14, 15, 17);
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	width: 30%;
	margin: 10px;
	margin-bottom: 0px;
}

a:hover, a:active {
	background-color: #9A9A98;
	color: white;
}
</style>
</head>
<center>
	<body>
		<div class="link">
			<a href="Registration.jsp">Register New Employee</a><br> <a
				href="Viewtable.jsp">List of All Employees</a>
		</div>
</center>
<div class="header">
	<h1>SRS BUSINESS SOLUTIONS</h1>
	<div class="dropdown">
		<button class="dropbtn">${name}</button>
		<div class="dropdown-content">
			<a href="Login.html">Logout</a>
		</div>
	</div>
</div>

<div class="footer">
	<h2>Employees Login Form</h2>

</div>

</body>

</html>