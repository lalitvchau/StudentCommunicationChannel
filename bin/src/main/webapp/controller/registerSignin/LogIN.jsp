<%@page import="models.User"%>
<%@page import="controller.RegisterSignInController"%>
<%@page import="connection.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="user" class="models.User">
		
		<jsp:setProperty name="user" property="email"
			value='<%=request.getParameter("email")%>' />
		<jsp:setProperty name="user" property="password"
			value='<%=request.getParameter("password")%>' />
	</jsp:useBean>

	<%
		try {
			boolean result = new RegisterSignInController().doSignIn(user);
			if (result) {
				session = request.getSession();
				session.setAttribute("email", user.getEmail());
				session.setAttribute("password", user.getPassword());
				response.sendRedirect("../../views/layout/layout.jsp");
			} else {
				session = request.getSession();
				session.removeAttribute("loginGuid");
				session.setAttribute("errorMsg", "Email or Password invaild ! Try Again");
				response.sendRedirect("../../index.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
			session = request.getSession();
			session.removeAttribute("loginGuid");
			session.setAttribute("errorMsg", e.getMessage());
			response.sendRedirect("../../index.jsp");
		}
	%>
</body>
</html>