<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page='Header.jsp' />
<jsp:include page='navbar.jsp' />

<link href="css/Category.css" rel="stylesheet" type="text/css"
	media="all" />


<div>
	<div class="split left" style="top: 106px;">
        <div class="">
			<div>
				<button style="margin-left: 2%;" type="button" class="btn btn-dark">
					<a href="viewAllProduct" style="color: white">View All Products</a>
				</button>

			</div>
			<div class="container" style="width: auto">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th>#Id</th>
							<th>Name</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Description</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listProuct}" var="pObj">
							<tr>
								<td>${pObj.productId}</td>
								<td style="width: 30%">${pObj.productName}</td>
								<td>${pObj.price}</td>
								<td>${pObj.quantity}</td>
								<td>${pObj.description}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</div>
	</div>

	<div class="split right" style="top: 106px;">
		<div class="centered"></div>
		<div class="container-fluid">
			<div class="">
				${msg}

				<div class="col-md-8">
					<div class="card card-body" style="width: 155%;">
						<h3 class="text-center mb-4">Add Product</h3>
						<form class="text-center" action="addProduct" method="post"
							style="color: #757575;">

							<fieldset>
								<div class="form-group">
									<select class="form-control input-lg" name="categoryNameGet">
										<option selected>Category</option>
										<c:forEach items="${CategoryNames}" var="category">
											<option value="${category.categoryId}">${category.categoryName}
											</option>
										</c:forEach>

									</select>
								</div>
								<div class="form-group">
									<input class="form-control input-lg"
										placeholder="Enter Product Name" name="name" type="text">
								</div>
								<div class="form-group">
									<input class="form-control input-lg" placeholder="Enter Price"
										name="price" value="" type="number">
								</div>
								<div class="form-group">
									<input class="form-control input-lg"
										placeholder="Enter Quantity" name="quantity" value=""
										type="number">
								</div>
								<div class="form-group">
									<textarea id="des" name="des" placeholder="Enter Description "
										class="form-control input-lg" rows="4"></textarea>
								</div>


								<input class="btn btn-lg btn-primary btn-block"
									value="Add Product" type="submit">
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
</div>
</div>