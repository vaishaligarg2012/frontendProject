<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page='Header.jsp' />
<jsp:include page='navbar.jsp' />

<link href="css/adminHome.css" rel="stylesheet" type="text/css" media="all" />


<div class="container-fluid">
    <div class="row text-center" style="margin-left:15%">
        <h3 class="headermessage" >Choice yours!!</h3>
    </div>
    <div class="row" style="margin-left: 11%;margin-bottom: 1%;" >  
        <a class="image-block col-sm-4" href="AddCategory.jsp" style="cursor: -webkit-grab;height:233px;background: url(https://i.ytimg.com/vi/2QvOxa_7wEw/maxresdefault.jpg) no-repeat center top;background-size:cover;">
            <p> Category </p>
        </a>
        <a class="image-block col-sm-4" href="Products.jsp"  style="margin-left: 22%;height:233px;cursor: -webkit-grab;background: url(https://www.printwand.com/blog/media/2012/01/ultimate-guide-to-your-product-launch.jpg) no-repeat center top;background-size:cover;">
            <p> Product </p>
        </a>
        
    </div>
</div>

