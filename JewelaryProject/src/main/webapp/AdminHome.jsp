<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page='Header.jsp' />
<jsp:include page='navbar.jsp' />

<link href="css/adminHome.css" rel="stylesheet" type="text/css" media="all" />


<div class="container-fluid">
    <div class="row text-center" style="margin-left:15%">
        <h3 class="headermessage" >Choice yours!!</h3>
    </div>
    <div class="row" style="margin-left: 11%;margin-bottom: 1%;" >  
        <a class="image-block col-sm-4" href="AddCategory.jsp" style="cursor: -webkit-grab;background: url(https://s3.amazonaws.com/uploads.intercomcdn.com/i/o/16658179/cd639af50d6939f77a77be1d/subcat_graphics-0.jpg) no-repeat center top;background-size:cover;">
            <p> Category </p>
        </a>
        <a class="image-block col-sm-4" href="Products.jsp"  style="margin-left: 22%;cursor: -webkit-grab;background: url(http://www.b2bfinpal.com/wp-content/uploads/2017/04/product.jpg) no-repeat center top;background-size:cover;">
            <p> Product </p>
        </a>
        
    </div>
</div>

