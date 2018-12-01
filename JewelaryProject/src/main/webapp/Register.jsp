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
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<body>

	<jsp:include page='Header.jsp' />

	
<div class="span3" style="margin-left:41%">
    <h2>Sign Up</h2>
    <form action="Register" method="post">
    <label>First Name</label>
    <input type="text" name="fname" id="fname" class="span3">
    <label>Last Name</label>
    <input type="text" name="lname" id="lname" class="span3">
    <label>Email Address</label>
    <input type="email" name="email" id="email" class="span3">
   
    <label>Password</label>
    <input type="password" name="pass" id="pass" class="span3">
    <label>Role</label>
    <input type="text" name="role" id="role" class="span3">
    
    <input type="submit" value="Sign up" class="btn btn-primary pull-right">
    <div class="clearfix"></div>
    </form>
</div>
</body>
<br>