<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Following Details Stored</h3>
	<hr>
	<pre>
		${student.rno}
		${student.name}
		${student.dept}
		${student.sem}
	</pre>
	<hr>
<a href="updateStudent">Update-more</a><br>
   <a href="index.jsp">Home</a>
</body>
</html>