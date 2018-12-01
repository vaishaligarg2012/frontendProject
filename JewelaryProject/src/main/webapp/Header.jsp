<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>RJ</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
    .bs-example{
    	margin: 20px;
    }
</style>
	
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <script src="//netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
<link rel="stylesheet"
	href="css/Login.css">
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
</head> 
<body>
<div class="bs-example">
    <nav class="navbar navbar-default">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand"><img src="images/logo.png" width="57px" height="40px" /></a>

        </div>
        <!-- Collection of nav links and other content for toggling -->
        
        <div id="navbarCollapse" class="collapse navbar-collapse">
        
            <ul class="nav navbar-nav">

     
    
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="#">Home</a></li>
                <li><a class="nav-link" href="#">
          <span class="glyphicon glyphicon-map-marker"></span>SHOPS
        </a></li>
                <li>   <a class="nav-link" href="#">  
        <span class="glyphicon glyphicon-shopping-cart"></span>
        CART</a>
     </li>     <li><a class="nav-link" href="#"><span class="glyphicon glyphicon-heart"></span>
        WISHLIST</a></li>
        <li style="cursor: pointer;" class="nav-item dropdown"> <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
          aria-expanded="false"> <span class="glyphicon glyphicon glyphicon-user"></span>
          Account</a>
         
    <c:if test="${not empty sessionScope.userObject}">    
    <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item"  >${userObject.FName} ${userObject.LName}</a><br>
          <a class="dropdown-item" href="LogoutController"> <span class="glyphicon glyphicon-log-out"></span>
          Logout</a>
        </div>
      
    </c:if>   
		 <c:if test="${empty sessionScope.userObject}">    
 	<div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="Login.jsp"><span class="glyphicon .glyphicon-glyphicon-log-in"></span>
          Login / Signup</a><br>
          <a class="dropdown-item" href="#"><span class="glyphicon .glyphicon-glyphicon-download-alt"></span> Order History</a>
         <br> <a class="dropdown-item" href="#">  <span class="glyphicon .glyphicon-glyphicon-download-alt"></span>
          Download App</a>
        </div>
       </c:if>
	
      </li>        </ul>
        </div>
    </nav>
</div>
                         