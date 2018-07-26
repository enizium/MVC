<%@include file="header.jsp"%>

<ul>
	<li><a
		href="${pageContext.request.contextPath}/frontend/index.jsp">Home</a></li>
	<li><a href="${pageContext.request.contextPath}/Admin?action=home">Admin
			Dashboard</a></li>
	<li><a
		href="${pageContext.request.contextPath}/Admin/Stock?action=fstock">Stock</a></li>
	<li><a href="${pageContext.request.contextPath}/frontend/sale.jsp">Sales</a></li>
	<li class="colorlib-active"><a
		href="${pageContext.request.contextPath}/frontend/purchase.jsp">Purchase</a></li>
	<li><a
		href="${pageContext.request.contextPath}/frontend/login.jsp">Login</a></li>
	<li><a
		href="${pageContext.request.contextPath}/frontend/signup.jsp">SignUp</a></li>
</ul>
</nav>
</aside>

<div id="colorlib-main">

	<div class="colorlib-contact">
		<div class="colorlib-narrow-content">
			<div class="row">
				<div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">

					<h2 class="colorlib-heading">Purchase</h2>
				</div>
			</div>
			<div class="row">

				<div class="col-md-10 col-md-push-1">
					<div class="row">



						<form method="post" enctype="multipart/form-data"
							action="${pageContext.request.contextPath}/Admin/Product?action=add">
							<div class="form-group">
								<div class="form-row">
									<div class="col-md-6">
										<label for="name">Name</label> <input class="form-control"
											id="name" name="name" type="text"
											placeholder="Enter Product Name" required="required">
									</div>
									<div class="col-md-6">

										<label for="brand">Brand</label> <select class="form-control"
											id="brand" name="brand">
											<option value="Apple">Apple Corporation</option>
											<option value="Gionee">Gionee</option>
											<option value="Huawei">Huawei Electronics</option>
											<option value="Oppo">Oppo Phone</option>
											<option value="Samsung">Samsung Mobile</option>
											<option value="Vivo">Vivo Mobile</option>
											<option value="Xiaomi">Xiaomi</option>
											<option value="Other" selected>Other</option>
										</select>
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="form-row">
									<div class="col-md-6">

										<label for="category1">Category</label>
										<div class="form-control">
											<input id="category1" name="category" type="radio"
												value="High Class"> &nbsp; High Class &nbsp; <br>
											<input id="category2" name="category" type="radio"
												value="Mid Class"> &nbsp; Mid Class &nbsp;<br>
											<input id="category3" name="category" type="radio"
												value="Low Class"> &nbsp; Low Class &nbsp;<br>
										</div>
									</div>
									<div class="col-md-6">
										<label for="type1">Type</label>
										<div class="form-control">
											<input id="type1" name="type" type="checkbox" value="Android">
											&nbsp; Android &nbsp;<br> <input id="type2" name="type"
												type="checkbox" value="iOS">&nbsp; iSO &nbsp;<br>
											<input id="type3" name="type" type="checkbox" value="GSM">&nbsp;
											GSM &nbsp;<br> <input id="type4" name="type"
												type="checkbox" value="CMDA">&nbsp; CMDA &nbsp;<br>
										</div>
									</div>

								</div>
							</div>
							<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
							<div class="form-group">
								<div class="form-row">
									<div class="col-md-6">
										<label for="image">Image</label> <input class="form-control"
											id="image" name="image" type="file">
									</div>
									<div class="col-md-6">
										<label for="description">Description</label>
										<textarea class="form-control" rows="5" cols="50"
											textareaObject.value="description" id="description"
											name="description" placeholder="Enter Prodect Description"></textarea>
									</div>
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<div class="form-row">
									<div class="col-md-4">
										<label for="delivered">Delivered ON</label> <input
											class="form-control" id="delivered" name="delivered"
											type="date" placeholder="MM/dd/yyyy" required="required">
									</div>
									<div class="col-md-4">
										<label for="quantity">Quantity</label> <input
											class="form-control" id="qunatity" name="quantity"
											type="text" placeholder="Product Amount ">
									</div>
									<div class="col-md-4">
										<label for="price">Price</label> <input class="form-control"
											id="price" name="price" type="text" placeholder="Price in RS">
									</div>
								</div>
							</div>
							<br /> <br />
							<div class="form-group">
								<div class="form-row">
									<div class="col-md-4"></div>
									<div class="col-md-4">
										<label for="price"></label>
										<button type="submit" class="btn btn-primary btn-block">Register</button>

									</div>
									<div class="col-md-4"></div>

								</div>
							</div>

						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@include file="footer.jsp"%>