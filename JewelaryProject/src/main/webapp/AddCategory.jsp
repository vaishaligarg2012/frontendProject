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
<!-- Material form contact -->
<div class="card" style="width:138%">

    <h5 class="card-header info-color white-text text-center py-4">
        <strong>Add Category</strong>
    </h5>
	<h4>${msg}</h4>

    <!--Card content-->
    <div class="card-body px-lg-5 pt-0">

        <!-- Form -->
        <form class="text-center" action="AddCategory" method="post"  style="color: #757575;">

            <!-- Name -->
            <div class="md-form mt-3">
             <label for="materialContactFormName">Category Name</label>
            
                <input type="text" id="name" name="name" placeholder="eg: Bangles Set" class="form-control">
               </div>
            <!--Message-->
            <div class="md-form">
                <label for="materialContactFormMessage">Description</label>
            
                <textarea type="text" id="des" name="des" placeholder="eg:About product "class="form-control md-textarea" rows="4"></textarea>
            </div>
            <!-- Send button -->
            <button class="btn btn-outline-info btn-rounded btn-block z-depth-0 my-4 waves-effect" style="background-color: yellowgreen;color: white;" type="submit">Add</button>

        </form>
        <!-- Form -->

    </div>

</div>
<!-- Material form contact -->

		</div>
	</div>