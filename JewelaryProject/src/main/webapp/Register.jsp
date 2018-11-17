<!DOCTYPE html>
<html lang="en">
<head>
<title>Register</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<jsp:include page='Header.jsp' />

	<div class="container">
${msg}
		<h2>Register Form</h2>
		<form action="Register" method="post">
			<div class="form-group">
				<label for="email">Email:</label> <input type="email"
					class="form-control" id="email" placeholder="Enter email"
					name="email">
			</div>
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" id="pass" placeholder="Enter password"
					name="pass">
			</div>
			<div class="form-group">
				<label for="pwd">First Name:</label> <input type="text"
					class="form-control" id="fname" placeholder="Enter First Name"
					name="fname">
			</div>
			<div class="form-group">
				<label for="pwd">Last Name:</label> <input type="text"
					class="form-control" id="lname" placeholder="Enter Last Name"
					name="lname">
			</div>
			<div class="form-group">
				<label for="pwd">Role:</label> <input type="text"
					class="form-control" id="role" placeholder="Admin/User" name="role">
			</div>

			<div>
				<button type="submit" class="btn btn-default">Create</button>
			</div>
		</form>
	</div>

</body>
<br>