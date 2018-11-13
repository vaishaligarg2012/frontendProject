<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page='Header.jsp' />
<jsp:include page='NavbarProducts.jsp' />
<link href="css/Category.css" rel="stylesheet" type="text/css"
	media="all" />

<body>

	<div class="split left">
		<div class="centered">

			<div>
				<a href="ViewAllCategory">View All Products</a>
			</div>
			<div class="tab-pane fade in active" id="home">
				<c:forEach items="${viewAllCategory}" var="pObj">

					<div class="list-group" style="margin-bottom: 0px">
						<a class="list-group-item" href="detailMails?mid=${pObj.name}">
							<span class="name"
							style="min-width: 120px; display: inline-block;"><b>${pObj.des}</b>
						</span>
						</a>

					</div>
				</c:forEach>
			</div>

		</div>
	</div>

	<div class="split right">
		<div class="centered">
    </div>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-6 mx-auto">
                <div class="card card-body" style="width: 155%;">
                    <h3 class="text-center mb-4">Add Product</h3>
                   
                    <fieldset>
                    <div class="form-group">
                            <select class="form-control input-lg">
                                <option selecterd="">Category</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <input class="form-control input-lg" placeholder="Enter Product Name" name="name" type="text">
                        </div>
                        <div class="form-group">
                            <input class="form-control input-lg" placeholder="Enter Price" name="price" value="" type="number">
                        </div>
                        <div class="form-group">
                            <input class="form-control input-lg" placeholder="Enter Quantity" name="quantity" value="" type="number">
                        </div>
                        <div class="form-group">
                       <textarea type="text" id="des" name="des" placeholder="Enter Description "class="form-control input-lg" rows="4"></textarea>
            </div>
                        
                        
                        <input class="btn btn-lg btn-primary btn-block" value="Add Product" type="submit">
                    </fieldset>
                </div>
        </div>
    </div>
</div>

	</div>