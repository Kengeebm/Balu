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
	margin-bottom: 30px;
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

.container {
	width: 400px;
	height: 400px;
	background-color: #FCFCFB; 
	position: absolute;
	left: 35%;
	top: 25%;
}

.table1 {
	margin: 10px;
}

.submit1 {
	background-color: #4CAF50;
	color: white;
	font-size: 16px;
	border: none;
}

a:hover, a:active {
	background-color: #9A9A98;
	color: white;
}

.link {
	margin: 100px;
}

a:link, a:visited {
	background-color: white;
	color: black;
	border: 4px solid rgb(14, 15, 17);
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	margin: 10px;
	margin-bottom: 0px;
}

a:hover, a:active {
	background-color: #9A9A98;
	color: white;
}
</style>
</head>
<body>
	<div class="container">
		<form name="f1" action="EditServlet" method="post">
			<table align="center">
				<caption>
					<h3>
						Modification Page
						<h3>
				</caption>
				<div class="table1">
					<tr>
						<td><label>Employee id </label></td>
						<%
							String id = request.getParameter("id");
							String name = request.getParameter("name");
							String doj = request.getParameter("dob");
							String dob = request.getParameter("doj");
							String Dept = request.getParameter("dept");
							String Desig = request.getParameter("desg");
							
							//Integer userid= (Integer)session.getAttribute("empid");
							//Integer userid = Integer.parseInt((String)session.getAttribute("empid").toString());
							//int id= (int)session.getAttribute("empid");
						%>
						
 						<td><input type="text" value=<%=id%> name="id" readonly></td>
					</tr>
					<tr>
						<td><label for="id1">Full Name</label></td>
						<td><input type="text" value=<%=name%> name="n1" id="id1"
							placeholder="Type name here" required></td>
					</tr>
					<tr>
						<td><label for="id3">Date of joining </label></td>
						<td><input type="date" value=<%=doj%> name="n2" id="id3"
							placeholder="Type date of joining here" required></td>
					</tr>
					<tr>
						<td><label for="id4">Date of birth </label></td>
						<td><input type="date" value=<%=dob%> data-date-inline-picker="true"
							name="n3" id="id4" placeholder="Date of birth" required>
						</td>
					</tr>
					<tr>
						<td><label for="id5">Department</label></td>
						<td><select name="n4" value=<%=Dept %>>
								
								<option value="IT">IT</option>
								<option value="Admin">Admin</option>
								<option value="HR">HR</option>
						</select></td>
					</tr>
					<tr>
						<td><label for="id5">Designation </label></td>
						<td><select name="n5" value=<%=Desig %>>
								
								<option value="Developer">Developer</option>
								<option value="Senior Developer">Senior Developer</option>
								<option value="Testing">Testing</option>
								<option value="Quality ">Quality</option>
						</select></td>
					</tr>
				</div>
				<div class="submit1">
				<tr>
					<td><input type="submit" value="Save"></td>
				</tr>
				</div>
			</table>
		</form>
	</div>
	<div class="header">
		<h1>EMPLOYEE FORM</h1>
		<div class="dropdown">
			<button class="dropbtn">${name}</button>
			<div class="dropdown-content">
				<a href="Login.html">Logout</a>
			</div>
		</div>
	</div>
	<div class="link">
		<a href="Viewtable.jsp">Back</a><br>
	</div>

	<div class="footer">
		<h2>Employees Login Form</h2>

	</div>

</body>

</html> 