<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
</head>
<body>

	<%@page import="com.dao.UserDao,com.bean.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<h1>Users List</h1>

	<%
		List<User> list = UserDao.getAllRecords();
		request.setAttribute("list", list);
	%>

<!-- Only display user name if someone is logged in  -->
	<c:if test="${not empty userSession}">
		<table>
			<tr>
				<td>You are logged in </td>
				<td>${ userSession.getName() }!</td>
			</tr>
			<tr>
				<td><a href="logout.jsp">Logout</a></td>
			</tr>
		</table>
	</c:if>
<!-- ^^ Makes use of jstl ^^  -->

	<table border="1" width="90%">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Password</th>
			<th>Email</th>
			<th>Sex</th>
			<th>Country</th>
			<th>Income</th>
			<th>Dept</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getId()}</td>
				<td>${u.getName()}</td>
				<td>${u.getPassword()}</td>
				<td>${u.getEmail()}</td>
				<td>${u.getSex()}</td>
				<td>${u.getCountry()}</td>
				<td>${u.getIncome()}</td>
				<td>${u.getDept()}</td>
				<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
				<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<a href="adduserform.jsp">Add New User</a>

</body>
</html>