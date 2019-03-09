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
	<div class="phHeadBanner">

		<div class="container">
			<div class="row">
				<div class="col-md-1 logo"></div>
				<div class="col-md-9">Menu Bar</div>
				<div class="col-md-2 user">User</div>
			</div>
		</div>
	</div>
</body>
</html>