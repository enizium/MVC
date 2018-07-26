<%-- 
    Document   : header
    Created on : May 28, 2018, 11:16:59 AM
    Author     : enizium
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
	id="mainNav">
	<a class="navbar-brand" href="index.html"><h1>Inventory
			Management System</h1></a>
	<button class="navbar-toggler navbar-toggler-right" type="button"
		data-toggle="collapse" data-target="#navbarResponsive"
		aria-controls="navbarResponsive" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarResponsive">
		<ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Dashboard"><a class="nav-link"
				href="${pageContext.request.contextPath}/Admin?action=home"> <i
					class="fa fa-fw fa-dashboard"></i> <span class="nav-link-text">Dashboard</span>
			</a></li>
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Charts"><a class="nav-link"
				href="${pageContext.request.contextPath}/Admin/Stock?action=stock">
					<i class="fa fa-fw fa-area-chart"></i> <span class="nav-link-text">Stocks</span>
			</a></li>



			<!-- 1                    -------------------------------------------- -->
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Product"><a class="nav-link nav-link-collapse collapsed"
				data-toggle="collapse" href="#collapseProduct"
				data-parent="#exampleAccordion"> <i
					class="fa fa-fw fa-product-hunt"></i> <span class="nav-link-text">Product</span>
			</a>
				<ul class="sidenav-second-level collapse" id="collapseProduct">
					<li><a class="nav-link"
						href="${pageContext.request.contextPath}/Admin/Product?action=add">
							<i class="fa fa-fw fa-plus"></i>Add
					</a></li>
					<li><a class="nav-link"
						href="${pageContext.request.contextPath}/Admin/Product?action=display">
							<i class="fa fa-fw fa-television"></i>Display
					</a></li>
				</ul></li>

			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="sales"><a class="nav-link nav-link-collapse collapsed"
				data-toggle="collapse" href="#collapseSale"
				data-parent="#exampleAccordion"> <i
					class="fa fa-fw fa-shopping-cart"></i> <span class="nav-link-text">Sales</span>
			</a>
				<ul class="sidenav-second-level collapse" id="collapseSale">
					<li><a class="nav-link"
						href="${pageContext.request.contextPath}/Admin/Sale?action=sale">
							<i class="fa fa-fw fa-balance-scale"></i>Sale
					</a></li>
					<li><a class="nav-link"
						href="${pageContext.request.contextPath}/Admin/Sale?action=salesstatement">
							<i class="fa fa-fw fa-file-alt"></i>Sales Statement
					</a></li>
				</ul></li>

			<!-- 2                    -------------------------------------------- -->

			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Supplier"><a
				class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
				href="#collapseSuppiler" data-parent="#exampleAccordion"> <i
					class="fa fa-fw fa-truck"></i> <span class="nav-link-text">Supplier</span>
			</a>
				<ul class="sidenav-second-level collapse" id="collapseSuppiler">
					<li><a class="nav-link"
						href="${pageContext.request.contextPath}/Admin/Supplier?action=add">
							<i class="fa fa-fw fa-plus"></i>Add
					</a></li>
					<li><a class="nav-link"
						href="${pageContext.request.contextPath}/Admin/Supplier?action=display">
							<i class="fa fa-fw fa-television"></i>Display
					</a></li>
				</ul></li>


			<!-- 3                    -------------------------------------------- -->
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Reorder"><a class="nav-link nav-link-collapse collapsed"
				data-toggle="collapse" href="#collapseReorder"
				data-parent="#exampleAccordion"> <i class="fa fa-fw fa-reorder"></i>
					<span class="nav-link-text">Re-Order</span>
			</a>
				<ul class="sidenav-second-level collapse" id="collapseReorder">
					<li><a class="nav-link"
						href="${pageContext.request.contextPath}/Admin/Reorder?action=add">
							<i class="fa fa-fw fa-plus"></i>Add
					</a></li>
					<li><a class="nav-link"
						href="${pageContext.request.contextPath}/Admin/Reorder?action=display">
							<i class="fa fa-fw fa-television"></i>Display
					</a></li>
				</ul></li>


			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Relation"><a
				class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
				href="#collapseRelation" data-parent="#exampleAccordion"> <i
					class="fa fa-fw fa-user-couple"></i> <span class="nav-link-text">Relation</span>
			</a>
				<ul class="sidenav-second-level collapse" id="collapseRelation">
					<li><a class="nav-link"
						href="${pageContext.request.contextPath}/Admin/Relation?action=add">
							<i class="fa fa-fw fa-plus"></i>Add
					</a></li>
					<li><a class="nav-link"
						href="${pageContext.request.contextPath}/Admin/Relation?action=display">
							<i class="fa fa-fw fa-television"></i>Display
					</a></li>
				</ul></li>
			<!--more menu items-->


		</ul>
		<ul class="navbar-nav sidenav-toggler">
			<li class="nav-item"><a class="nav-link text-center"
				id="sidenavToggler"> <i class="fa fa-fw fa-angle-left"></i>
			</a></li>
		</ul>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown"
				href="#" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fa fa-fw fa-envelope"></i> <span
					class="d-lg-none">Messages <span
						class="badge badge-pill badge-primary">12 New</span>
				</span> <span class="indicator text-primary d-none d-lg-block"> <i
						class="fa fa-fw fa-circle"></i>
				</span>
			</a>
				<div class="dropdown-menu" aria-labelledby="messagesDropdown">
					<h6 class="dropdown-header">New Messages:</h6>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#"> <strong>David
							Miller</strong> <span class="small float-right text-muted">11:21 AM</span>
						<div class="dropdown-message small">Hey there! This new
							version of SB Admin is pretty awesome! These messages clip off
							when they reach the end of the box so they don't overflow over to
							the sides!</div>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#"> <strong>Jane Smith</strong>
						<span class="small float-right text-muted">11:21 AM</span>
						<div class="dropdown-message small">I was wondering if you
							could meet for an appointment at 3:00 instead of 4:00. Thanks!</div>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#"> <strong>John Doe</strong> <span
						class="small float-right text-muted">11:21 AM</span>
						<div class="dropdown-message small">I've sent the final
							files over to you for review. When you're able to sign off of
							them let me know and we can discuss distribution.</div>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item small" href="#">View all messages</a>
				</div></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown"
				href="#" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fa fa-fw fa-bell"></i> <span
					class="d-lg-none">Alerts <span
						class="badge badge-pill badge-warning">6 New</span>
				</span> <span class="indicator text-warning d-none d-lg-block"> <i
						class="fa fa-fw fa-circle"></i>
				</span>
			</a>
				<div class="dropdown-menu" aria-labelledby="alertsDropdown">
					<h6 class="dropdown-header">New Alerts:</h6>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#"> <span class="text-success">
							<strong> <i class="fa fa-long-arrow-up fa-fw"></i>Status
								Update
						</strong>
					</span> <span class="small float-right text-muted">11:21 AM</span>
						<div class="dropdown-message small">This is an automated
							server response message. All systems are online.</div>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#"> <span class="text-danger">
							<strong> <i class="fa fa-long-arrow-down fa-fw"></i>Status
								Update
						</strong>
					</span> <span class="small float-right text-muted">11:21 AM</span>
						<div class="dropdown-message small">This is an automated
							server response message. All systems are online.</div>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#"> <span class="text-success">
							<strong> <i class="fa fa-long-arrow-up fa-fw"></i>Status
								Update
						</strong>
					</span> <span class="small float-right text-muted">11:21 AM</span>
						<div class="dropdown-message small">This is an automated
							server response message. All systems are online.</div>
					</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item small" href="#">View all alerts</a>
				</div></li>
			<li class="nav-item">
				<form class="form-inline my-2 my-lg-0 mr-lg-2">
					<div class="input-group">
						<input class="form-control" type="text"
							placeholder="Search for..."> <span
							class="input-group-btn">
							<button class="btn btn-primary" type="button">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>
			</li>
			<li class="nav-item"><a class="nav-link" data-toggle="modal"
				data-target="#exampleModal"
				href="${pageContext.request.contextPath}/Logout?action=Logout">
					<i class="fa fa-fw fa-sign-out"></i>Logout
			</a></li>
		</ul>
	</div>
</nav>

