<!doctype html>
<%@page import="models.User"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="../../assets/css/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="../../assets/css/layout.css">

<title>Student Communication Channel</title>
</head>
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
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-16">
				<jsp:include page="../headerPane/headerPane.jsp" />
			</div>
		</div>

	</div>
	&nbsp; asd
	<br /> asd
	<br /> asd
	<br />asd
	<br /> asd
	<br />asd
	<br /> asd
	<br /> asd
	<br /> asd
	<br /> asd
	<br /> asd
	<br /> asd
	<br /> asd
	<br />asd
	<br /> asd
	<br />asd
	<br /> asd
	<br /> asd
	<br /> asd
	<br />asd
	<br /> asd
	<br /> asd
	<br /> asd
	<br /> asd
	<br />asd
	<br /> asd
	<br />asd
	<br /> asd
	<br /> asd
	<br />asd
	<br /> asd
	<br />asd
	<br /> asd
	<br /> asd
	<br /> asd
	<br /> asd
	<br /> asd
	<br /> asd
	<br /> asd
	<br />asd
	<br /> asd
	<br />asd
	<br /> asd
	<br /> asd
	<br /> asd
	<br />asd
	<br /> asd
	<br /> asd
	<br /> asd
	<br /> asd
	<br />asd
	<br /> asd
	<br />
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="../../assets/js/jquery-3.3.1.slim.min.js"></script>
	<script src="../../assets/js/popper.min.js"></script>
	<script src="../../assets/js/bootstrap/bootstrap.min.js"></script>

</body>
</html>