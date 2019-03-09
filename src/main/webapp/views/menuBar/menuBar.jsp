<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
	<%
		try {
			session = request.getSession();
			String email = (session.getAttribute("email") != null ? session.getAttribute("email").toString()
					: null);
			if (email == null) {
				response.sendRedirect("../../index.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>

	<div class="container">
		<div class="row"></div>
	</div>

</body>
</html>