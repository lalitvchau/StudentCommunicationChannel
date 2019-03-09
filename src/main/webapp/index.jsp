<!doctype html>
<%@page import="models.User"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="assets/css/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/style.css">

<title>Student Communication Channel</title>
</head>
<body>
	&nbsp;
	<%
		try {
			session = request.getSession();
			String email = (session.getAttribute("email") != null ? session.getAttribute("email").toString()
					: null);
			if (email != null) {
				response.sendRedirect("views/layout/layout.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	<div id="modelS" class="container">
		<div class="row">
			<div class="col-12">
				<%
					String errMsg = "ok";
					try {

						errMsg = (session.getAttribute("errorMsg") != null ? session.getAttribute("errorMsg").toString()
								: null);
						session.removeAttribute("errorMsg");
					} catch (Exception e) {
						e.printStackTrace();
					}
					if (errMsg != null) {
				%>
				<div class="alert alert-danger" role="alert">
					<%=errMsg%>
				</div>
				<%
					}
				%>
				<div class="row">
					<div class="col-4">
						<form id="loginForm" action="controller/registerSignin/LogIN.jsp"
							method="POST">
							<h5>Sign In</h5>
							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label>
								<div class="input-group mb-2">
									<div class="input-group-prepend">
										<div class="input-group-text">@</div>
									</div>
									<input type="email" class="form-control" id="email"
										name="email" aria-describedby="emailHelp"
										placeholder="Enter email"> <small id="emailHelp"
										class="form-text text-muted">We'll never share your
										email with anyone else.</small>
									<div class="valid-tooltip">Please Enter a valid Email
										Address ..!</div>
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="password"
									name="password" placeholder="Password">
								<div class="valid-tooltip">Please Enter a valid Password
									..!</div>
							</div>
							<input type="submit" value="Sign In" class="btn btn-primary" />
							<div class="valid-tooltip">Please Press the Sign In button
								to log in to system ..!</div>
						</form>
					</div>
					<div class="col-8">
						<h5>Sign Up part</h5>
						<form action="controller/registerSignin/SignUp.jsp" method="POST">
							<div class="form-row">
								<div class="col-md-4 mb-3">
									<label for="validationDefault01">First name</label> <input
										type="text" class="form-control" id="firstName"
										name="firstName" placeholder="First name" required>
								</div>
								<div class="col-md-4 mb-3">
									<label for="validationDefault02">Last name</label> <input
										type="text" class="form-control" id="lastName" name="lastName"
										placeholder="Last name" required>
								</div>
								<div class="col-md-4 mb-3">
									<label for="validationDefaultUsername">Email Address</label>
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text" id="inputGroupPrepend2">@</span>
										</div>
										<input type="email" class="form-control" id="emailAddress"
											name="emailAddress" placeholder="Email Address"
											aria-describedby="validationDefaultUsername" required>
									</div>
								</div>
							</div>
							<div class="form-row">
								<div class="col-md-6 mb-3">
									<label for="validationDefault03">City</label> <input
										type="text" class="form-control" id="city" name="city"
										placeholder="City" required>
								</div>
								<div class="col-md-3 mb-3">
									<label for="validationDefault04">State</label> <input
										type="text" class="form-control" id="state" name="state"
										placeholder="State" required>
								</div>
								<div class="col-md-3 mb-3">
									<label for="validationDefault05">Zip</label> <input type="text"
										class="form-control" id="zip" name="zip" placeholder="Zip"
										required>
								</div>

							</div>
							<div class="form-row">
								<div class="col-md-6 mb-3">
									<label for="validationDefault03" id="msgPass">Password</label> <input
										type="password" class="form-control" id="signup_password"
										name="signup_password" placeholder="Password" required>
								</div>
								<div class="col-md-6 mb-3">
									<label for="validationDefault03" id="msgPass1">Conform Password</label> <input
										type="password" class="form-control" id="signup_conf_password"
										placeholder="Conform Password" required>
								</div>

							</div>
							<div class="form-row">

								<div class="col-md-6 mb-3">
									<label for="validationDefault05">Student ID</label> <input
										type="text" class="form-control" id="studentId"
										name="studentId" placeholder="Student Id" required>
								</div>
								<div class="form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										id="gender" value="male" name="gender" checked> <label
										class="form-check-label" for="exampleRadios1">Male</label>
								</div>
								<div class="form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										id="gender" value="female"> <label
										class="form-check-label" for="exampleRadios2"> Female</label>
								</div>
								<div class="form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										id="gender" value="other"> <label
										class="form-check-label" for="exampleRadios3">Other </label>
								</div>
								<div class="col-md-2 mb-2">
									<input type="submit" value="Sign up" class="btn btn-primary" onclick="return doMatchPassword()"/>
								</div>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="assets/js/jquery-3.3.1.slim.min.js"></script>
	<script src="assets/js/popper.min.js"></script>
	<script src="assets/js/bootstrap/bootstrap.min.js"></script>
	<script src="assets/js/index.js"></script>
</body>
</html>