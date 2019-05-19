<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #9A9A98;
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

a:hover, a:active {
	background-color: #FCFCFB;
	color: white;
}

.container {
	width: 700px;
	height: 400px;
	position: absolute;
	left: 25%;
	top: 20%;
	
}

table {
  width: 100%;
  
	  
}

table, td {
  border-collapse: collapse;
  border: 1px solid #000;
}

thead {
  display: calc (tbody - 17px); /* to take the same width as tr */
  
}

tbody {
  display: block; /* to enable vertical scrolling */
  max-height: 700px; /* e.g. */
  width: 100%;
  overflow-y: scroll; /* keeps the scrollbar even if it doesn't need it; display purpose */					
}




.link {
	margin: 100px;
	width: 25%;
}

a:link, a:visited {
	background-color: white;
	color: black;
	border: 2px solid ;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	margin-bottom: 0px;
	right: 15px;
}

a:hover, a:active {
	background-color: green;
	color: white;
}

.searchtab {
	background-color: white;
	color: black;
	border: 1.5px solid ;
	padding: 1px 1px;
	text-align: center;
	text-decoration: none;
	display: block;
	width: 100%;
	margin-bottom: 0px;
}

.button {
	
}
</style>
</head>
<body>
	<div class="header">
		<h1>KNG SOLUTIONS</h1>
		<div class="dropdown">
			<button class="dropbtn">${name}</button>
			<div class="dropdown-content">
				<a href="Login.html ">Logout</a>
			</div>
		</div>
	</div>

	<div class="footer">
		<h2>Employees Login Form</h2>
	</div>
	<div class="link">
		<a href="Mainpage.jsp">Back</a><br>
	</div>
	<div class="container">
		<sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost/naveen" user="root" password="root" />
		<sql:query dataSource="${snapshot}" var="result">
         SELECT * from emp_table;
      </sql:query>
		<div class="searchtab">

			<form action="Search" method="post">
				
					
						<input type="text" name="search" placeholder="Search..."
							size="25">
						
							<a class="button">
								<button type="submit">Search</button>
							</a>
				

					
		
			</form>
		</div>
			
				<b>List of Employee</b>
			<table><thead><tr>
				<td width = "14%"><b>Emp ID</b></td>
				<td width = "14%"><b>Name</b></td>
				<td width = "14%"><b>Date of joining</b></td>
				<td width = "14%"><b>Date of birth</b></td>
				<td width = "14%"><b>Designation</b></td>
				<td width = "14%"><b>Department</b></td>
				<td width = "14%"><b>Action</b></td>
			</tr></thead>
			<c:forEach var="row" items="${result.rows}">
				<tbody><tr>
					<td><c:out value="${row.emp_id}" /></td>
					<td><c:out value="${row.FullName}"/></td>
			 		<td><c:out value="${row.DOJ}" /></td>
					<td><c:out value="${row.DOB}" /></td>
					<td><c:out value="${row.Department}" /></td>
					<td><c:out value="${row.Designation}" /></td>
					<td><a
								href="EditEmployee.jsp?id=<c:out value='${row.emp_id}'/>&name=<c:out value='${row.FullName }'/>&doj=<c:out value ='${row.DOJ}'/>&dob=<c:out value= '${row.DOB}'/>&dept=<c:out value= '${row.Department}'/>&desg=<c:out value='${row.Designation }'/>">
								 
								Edit</a>
						</td>
				</tr></tbody>
			</c:forEach>
		</table>
	</div>
</body> 
</html>