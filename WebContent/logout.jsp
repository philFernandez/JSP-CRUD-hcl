<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout Page</title>
</head>
<body>
<p>You are logged out...</p>
<%session.invalidate(); %>

<a href="adduserform.jsp">Add User</a>
<a href="viewusers.jsp">View Users</a>

</body>
</html>