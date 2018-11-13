<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page='Header.jsp' />
<jsp:include page='NavbarProducts.jsp' />
<link href="css/Category.css" rel="stylesheet" type="text/css"
	media="all" />

<body>

	<div class="split left">
		<div class="centered">

			<div>
				<a href="ViewAllCategory">View All Category</a>
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
<div class="container-fluid bg-light py-3">
    <div class="row">
        <div class="col-md-6 mx-auto">
                <div class="card card-body" style="width: 155%;">
                    <h3 class="text-center mb-4">Add Product</h3>
                    <div class="alert alert-danger">
                        <a class="close font-weight-light" data-dismiss="alert" href="#">×</a>Password is too short.
                    </div>
                    <fieldset>
                        <div class="form-group has-error">
                            <input class="form-control input-lg" placeholder="E-mail Address" name="email" type="text">
                        </div>
                        <div class="form-group has-success">
                            <input class="form-control input-lg" placeholder="Password" name="password" value="" type="password">
                        </div>
                        <div class="form-group has-success">
                            <input class="form-control input-lg" placeholder="Confirm Password" name="password" value="" type="password">
                        </div>
                        <div class="form-group">
                            <select class="form-control input-lg">
                                <option selecterd="">Sequrity Question</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <input class="form-control input-lg" placeholder="Sequrity Answer" name="answer" value="" type="text">
                        </div>
                        <div class="checkbox">
                            <label class="small">
                                <input name="terms" type="checkbox">I have read and agree to the <a href="#">terms of service</a>
                            </label>
                        </div>
                        <input class="btn btn-lg btn-primary btn-block" value="Sign Me Up" type="submit">
                    </fieldset>
                </div>
        </div>
    </div>
</div>

	</div>