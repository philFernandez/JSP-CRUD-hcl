<%@page import="com.dao.UserDao"%>
<jsp:useBean id="u" class="com.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u" />

<%
	int i = UserDao.save(u);
	if (i > 0) {
		session.setAttribute("userSession", u); // add entire User object
		response.sendRedirect("viewusers.jsp");
	} else {
		response.sendRedirect("adduser-error.jsp");
	}
%>