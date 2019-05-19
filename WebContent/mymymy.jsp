<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

.container {
width: 900px;
height: 338px;
position: absolute;
left: 20%;
top: 25%;
border: 2px solid black;
}
table {
max-width:980px;
table-layout:fixed;
margin:auto;
}
th, td {
padding:5px 10px;
border:1px solid #000;
}
thead {
background:lightgrey;
display:table;
width:100%;
width:calc(100% - 15px);
}
tbody {
height:300px;
overflow:auto;
overflow-x:hidden;
display:block;
width:100%;
}
tbody tr {
display:table;
width:100%;
table-layout:fixed;
}
h3 {
  position: absolute;
  left: 580px;
  top: 60px;
  text-transform: uppercase;
  font-family:Helvetica;
  text-decoration: underline;
}

}
</style>
</head>

<body>
<h3>List of Employees</h3>
<div class="container">
<sql:setDataSource var="snapshot" driver="com.mysql.cj.jdbc.Driver"
url="jdbc:mysql://localhost/naveen" user="root" password="root" />
<sql:query dataSource="${snapshot}" var="result">
         SELECT * from emp_table;
      </sql:query>
      <div>
  <table>
  <thead>
    <tr>
      <td width = "14%"><b>Emp ID</b> </td>
				<td width = "14%"><b>Name</b></td>
				<td width = "14%"><b>Date of joining</b></td>
				<td width = "14%"><b>Date of birth</b></td>
				<td width = "14%"><b>Designation</b></td>
				<td width = "14%"><b>Department</b></td>
				<td width = "14%"><b>Action</b></td>
			</tr></thead>
			<c:forEach var="row" items="${result.rows}">
				<tbody><tr>
					<td width = "14%"><c:out value="${row.emp_id}" /></td>
					<td width = "14%"><c:out value="${row.FullName}"/></td>
			 		<td width = "14%"><c:out value="${row.DOJ}" /></td>
					<td width = "14%"><c:out value="${row.DOB}" /></td>
					<td width = "14%"><c:out value="${row.Department}" /></td>
					<td width = "14%"><c:out value="${row.Designation}" /></td>
					<td width = "14%"><a
								href="EditEmployee.jsp?id=<c:out value='${row.emp_id}'/>&name=<c:out value='${row.FullName }'/>&doj=<c:out value ='${row.DOJ}'/>&dob=<c:out value= '${row.DOB}'/>&dept=<c:out value= '${row.Department}'/>&desg=<c:out value='${row.Designation }'/>">Edit</a>
						</td></tr>
</c:forEach>
  </tbody>
</table>
</div>
</div>
</body>
</html>

 
