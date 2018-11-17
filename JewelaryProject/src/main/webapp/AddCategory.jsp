<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page='Header.jsp' />
<jsp:include page='NavbarProducts.jsp' />
<link href="css/Category.css" rel="stylesheet" type="text/css"
	media="all" />

<body>

	<div class="split left">
		<div class="">
			<div>
			<button style="margin-left: 2%;color:white" type="button" class="btn btn-dark">
				<a href="ViewAllCategory" style="color:white">View All Category</a>
				</button>
			</div>
			<div class="container" style="width: auto">
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th>#Id</th>
							<th>Name</th>
							<th>Description</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listCategory}" var="pObj">
							<tr>
								<td>${pObj.categoryId}</td>
								<td style="width: 30%">${pObj.categoryName}</td>
								<td>${pObj.categoryDesc}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<div class="split right">
		<div class="">
			<h4>${msg}</h4>
			<div class="col-md-8">
				<div class="card card-body" style="width: 155%;">
					<h3 class="text-center mb-4">Add Category</h3>
					<form class="text-center" action="AddCategory" method="post"
						style="color: #757575;">

						<fieldset>

							<div class="form-group">
								<input class="form-control input-lg"
									placeholder="Enter Category Name" name="name" type="text">
							</div>

							<div class="form-group">
								<textarea id="des" name="des" placeholder="Enter Category Description "
									class="form-control input-lg" rows="4"></textarea>
							</div>


							<input class="btn btn-lg btn-primary btn-block"
								value="Add Product" type="submit">
						</fieldset>
					</form>
				</div>
			</div>

			<!-- Material form contact -->

		</div>
	</div>