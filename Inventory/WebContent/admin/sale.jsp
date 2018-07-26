<%-- 
    Document   : sale
    Created on : Jun 10, 2018, 7:16:33 PM
    Author     : enizium
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Admin - Inventory Management System</title>
<!-- Bootstrap core CSS-->
<link
	href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Custom fonts for this template-->
<link
	href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Page level plugin CSS-->
<link
	href="${pageContext.request.contextPath}/vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="${pageContext.request.contextPath}/css/sb-admin.css"
	rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	<!-- Navigation-->
	<%@include file="header.jsp"%>

	<div class="content-wrapper">
		<div class="container-fluid">
			<!-- Breadcrumbs-->
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="#">Sales</a></li>
				<li class="breadcrumb-item active">Sale</li>
			</ol>
			<!--add product form-->

			<div class="card card-register mx-auto mt-5">
				<div class="card-header">Sales of Product</div>
				<div class="card-body">

					<form method="post" enctype="multipart/form-data"
						action="${pageContext.request.contextPath}/Admin/Sale?action=sale">
						<div class="form-group">
							<div class="form-row">${msg}</div>
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
										<option value="Samsung" selected>Samsung Mobile</option>
										<option value="Vivo">Vivo Mobile</option>
										<option value="Xiaomi">Xiaomi</option>
										<option value="other">Others</option>
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
											value="HighClass"> &nbsp; High Class &nbsp; <br>
										<input id="category2" name="category" type="radio"
											value="MidClass"> &nbsp; Mid Class &nbsp;<br> <input
											id="category3" name="category" type="radio" value="LowClass">
										&nbsp; Low Class &nbsp;<br>
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
						<div class="form-group">
							<div class="form-row">
								<div class="col-md-4">
									<label for="delivered">Sales Date</label> <input
										class="form-control" id="delivered" name="salesdate"
										type="date" palceholder="MM/dd/yyyy" required="required">
								</div>

							</div>
						</div>

						<div class="form-group">
							<div class="form-row">

								<div class="col-md-4">
									<label for="quantity">Quantity</label> <input
										class="form-control" id="qunatity" name="quantity" type="text"
										placeholder="Product quantity ">
								</div>
								<div class="col-md-4">
									<label for="price">Price Per Unit</label> <input
										class="form-control" id="price" name="ppu" type="text"
										placeholder="Price in RS">
								</div>

								<div class="col-md-4">
									<label for="totalamount">Total Amount</label> <input
										class="form-control" id="totalamount" name="totalamount"
										type="txt" placeholder="Total amount">
								</div>
							</div>
						</div>


						<button type="submit" class="btn btn-primary btn-block">Sale</button>
					</form>

				</div>
			</div>

		</div>
		<!-- /.container-fluid-->
		<!-- /.content-wrapper-->

		<!-- Scroll to Top Button-->

		<%@include file="footer.jsp"%>

		<!-- Bootstrap core JavaScript-->
		<script
			src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/vendor/popper/popper.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>
		<!-- Core plugin JavaScript-->
		<script
			src="${pageContext.request.contextPath}/vendor/jquery-easing/jquery.easing.min.js"></script>
		<!-- Page level plugin JavaScript-->
		<script
			src="${pageContext.request.contextPath}/vendor/chart.js/Chart.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/vendor/datatables/jquery.dataTables.js"></script>
		<script
			src="${pageContext.request.contextPath}/vendor/datatables/dataTables.bootstrap4.js"></script>
		<!-- Custom scripts for all pages-->
		<script src="${pageContext.request.contextPath}/js/sb-admin.min.js"></script>
		<!-- Custom scripts for this page-->
		<script
			src="${pageContext.request.contextPath}/js/sb-admin-datatables.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/js/sb-admin-charts.min.js"></script>
	</div>
</body>

</html>

