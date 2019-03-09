<%@page import="controller.RegisterSignInController"%>
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
		<jsp:setProperty name="user" property="firstName"
			value='<%=request.getParameter("firstName")%>' />
		<jsp:setProperty name="user" property="lastName"
			value='<%=request.getParameter("lastName")%>' />
		<jsp:setProperty name="user" property="email"
			value='<%=request.getParameter("emailAddress")%>' />
		<jsp:setProperty name="user" property="city"
			value='<%=request.getParameter("city")%>' />
		<jsp:setProperty name="user" property="state"
			value='<%=request.getParameter("state")%>' />
		<jsp:setProperty name="user" property="zip"
			value='<%=request.getParameter("zip")%>' />
		<jsp:setProperty name="user" property="stuId"
			value='<%=request.getParameter("studentId")%>' />
		<jsp:setProperty name="user" property="password"
			value='<%=request.getParameter("signup_password")%>' />
		<jsp:setProperty name="user" property="gender"
			value='<%=request.getParameter("gender")%>' />
	</jsp:useBean>

	<%
		try {
			boolean result = new RegisterSignInController().doSignUp(user);
			if (result) {
				session = request.getSession();
				session.setAttribute("email", user.getEmail());
				session.setAttribute("password", user.getPassword());
				response.sendRedirect("../../views/layout/layout.jsp");
			} else {
				session = request.getSession();
				session.removeAttribute("loginGuid");
				session.setAttribute("errorMsg", "Something Wrong ! Try Again");
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