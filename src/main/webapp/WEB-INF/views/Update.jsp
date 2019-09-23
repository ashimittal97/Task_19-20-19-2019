<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="fr" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update--Student</title>
<style type="text/css">
table {
	border-collapse: collapse;
	width: 35%;
	height: 500px;
	text-align: center;
}

input[type=text]:hover {
	height: 35px;
	padding-left: 15px;
	border: 1px solid #ccc;
	box-shadow: 1px 1px grey;
	border-radius: 4px;
	resize: vertical;
}

input[type=password]:hover {
	height: 35px;
	padding-left: 15px;
	border: 1px solid #ccc;
	box-shadow: 1px 1px grey;
	border-radius: 4px;
	resize: vertical;
}

input[type=submit]:hover {
	height: 35px;
	padding-left: 15px;
	box-shadow: 2px 2px grey;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	float: center;
}

h6 {
	font-size: large;
}

.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 30px;
	width: 507px;
	margin-left: 475px;
}
</style>

</head>
<body>
<h3 align="center"
		style="color: #444; font-size: x-large; text-decoration: underline;">
		Update --student-- form</h3>
	<hr>
	<div class=container>
		<fr:form action="Updated" modelAttribute="student">
			
			<table align="center">
				<tr>
					<th>RollNo.</th>
					<td><fr:input path="rno"/></td>
				</tr>
				<tr>
					<th>Name</th>
					<td><fr:input path="name"/></td>
				</tr>
				<tr>
					<TH>Dept</TH>
					<TD><fr:input path="dept"/></TD>
				</tr>
				<TR>
					<TH>Semester</TH>
					<TD><fr:input path="sem"/></TD>
				</TR>
				

					<td align="center" colspan="2"><input type="submit"
						value="Update" /></td>
				</TR>
			

			</table>
			</fr:form>
	</div>

	</form>
	<hr>
  <a href="updateStudent">Update-more</a><br>
   <a href="index.jsp">Home</a>


</body>
</html>