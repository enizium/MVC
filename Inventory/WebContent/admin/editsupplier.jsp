<%-- 
    Document   : editsupplier
    Created on : Jun 1, 2018, 8:17:56 PM
    Author     : enizium
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<li class="breadcrumb-item"><a href="#">Supplier</a></li>
				<li class="breadcrumb-item active">Edit Supplier</li>
			</ol>
			<!--add supplier form-->


			<div class="card card-register mx-auto mt-5">
				<div class="card-header">Update Supplier</div>
				<div class="card-body">

					<form method="post"
						action="${pageContext.request.contextPath}/Admin/Supplier?action=update">

						<div class="form-group">
							<div class="form-row">
								<div class="col-md-3">
									<label for="id">Supplier's ID</label> <input
										class="form-control" id="id" value="${supplierlist.id}"
										name="id" type="text" readonly>
								</div>

							</div>
							<div class="form-row">

								<div class="col-md-6">
									<label for="name">Name</label> <input class="form-control"
										id="name" value="${supplierlist.name}" name="name" type="text"
										placeholder="Enter Supplier Name" required="required">
								</div>
								<div class="col-md-6">
									<label for="email">Email</label> <input class="form-control"
										id="email" value="${supplierlist.email}" name="email"
										type="email" placeholder="Enter Email ID " required>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label>Address</label>
						</div>
						<div class="form-group">
							<div class="form-row">
								<div class="col-md-6">

									<label for="country">Country</label> <select
										class="form-control" id="country" name="country"
										value="${supplierlist.country}">
										<option value="Nepal"
											<c:if test="${supplierlist.country.equals('Nepal')}"> selected</c:if>>
											Nepal</option>
										<option value="Bangladesh"
											<c:if test="${supplierlist.country.equals('Bangladesh')}"> selected</c:if>>Bangladesh</option>
										<option value="Bhutan"
											<c:if test="${supplierlist.country.equals('Bhutan')}"> selected</c:if>>Bhutan</option>
										<option value="China"
											<c:if test="${supplierlist.country.equals('China')}"> selected</c:if>>China</option>
										<option value="India"
											<c:if test="${supplierlist.country.equals('India')}"> selected</c:if>>India</option>
										<option value="sirlanda"
											<c:if test="${supplierlist.country.equals('Sir Lanka')}"> selected</c:if>>Sir
											Lanka</option>
										<option value="maldives"
											<c:if test="${supplierlist.country.equals('Maldives')}"> selected</c:if>>Maldives</option>
									</select>
								</div>
								<div class="col-md-6">
									<label for="city">City </label> <input class="form-control"
										id="city" name="city" value="${supplierlist.city}" type="text"
										placeholder=" city" required>
								</div>

							</div>
						</div>

						<div class="form-group">
							<div class="form-row">
								<div class="col-md-6">
									<label for="street">Street/House</label> <input
										class="form-control" id="street" name="street"
										value="${supplierlist.street}" type="text"
										placeholder="Enter street Name/House Number"
										required="required">
								</div>
								<div class="col-md-6">
									<label for="postalCode">Postal Code</label> <input
										class="form-control" id="postalCode" type="text"
										name="postalCode" value="${supplierlist.postalcode}"
										placeholder="Enter Postal Code ">
								</div>
							</div>
						</div>



						<div class="form-group">
							<div class="form-row">
								<div class="col-md-4">
									<label for="phone">Phone Number</label> <input
										class="form-control" id="phone" value="${supplierlist.phone}"
										name="phone" type="text" placeholder="Enter Phone Number"
										required="required">
								</div>
								<div class="col-md-4">
									<label for="acc_bank">Bank Name</label> <input
										class="form-control" id="acc_bank"
										value="${supplierlist.acc_bank}" name="acc_bank" type="text"
										placeholder="Enter Bank Number ">
								</div>
								<div class="col-md-4">
									<label for="acc_no">Account Number</label> <input
										class="form-control" id="acc_no" name="acc_no"
										value="${supplierlist.acc_no}" type="text"
										placeholder="Enter Account Number ">
								</div>
							</div>
						</div>


						<button type="submit" class="btn btn-primary btn-block">Update</button>
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
