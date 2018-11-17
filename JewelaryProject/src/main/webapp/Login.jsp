
<!DOCTYPE html>
<html lang="en">
<head>
<title>Login</title>
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
		<h2>Login Form</h2>
		${msg}
		<form action="Login" method="POST">
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
			<div>
				<button type="submit" class="btn btn-default">Submit</button>
				<a href="/JewelaryProject/Register.jsp" class="btn btn-default">Create An
					Account</a>
			</div>
		</form>
	</div>
</body>
