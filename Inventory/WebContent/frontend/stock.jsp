<%@include file="header.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<ul>
	<li><a
		href="${pageContext.request.contextPath}/frontend/index.jsp">Home</a></li>
	<li><a href="${pageContext.request.contextPath}/Admin?action=home">Admin
			Dashboard</a></li>
	<li class="colorlib-active"><a
		href="${pageContext.request.contextPath}/Admin/Stock?action=fstock">Stock</a></li>
	<li><a href="${pageContext.request.contextPath}/frontend/sale.jsp">Sales</a></li>
	<li><a
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

					<h2 class="colorlib-heading">Stock of product</h2>
				</div>
			</div>




			<div class="table-responsive" style="overflow-x: auto">
				<table class="table table-bordered" id="dataTable" width="80%"
					cellspacing="0">
					<thead>
						<tr>
							<th>S.N</th>
							<th>Stock ID</th>
							<th>Product Name</th>
							<th>Brand</th>
							<th>Quantity</th>

						</tr>
					</thead>
					<tfoot>
						<tr>
							<th>S.N</th>
							<th>Stock ID</th>
							<th>Product Name</th>
							<th>Brand</th>
							<th>Quantity</th>

						</tr>
					</tfoot>
					<tbody>
						<% int i = 1;%>
						<c:forEach items="${stock}" var="stock">
							<tr>
								<td><%=i%> <%i++;%></td>
								<td>${stock.id}</td>
								<td>${stock.name}</td>
								<td>${stock.brand}</td>
								<td>${stock.quantity}</td>


							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

	</div>



</div>



<%@include file="footer.jsp"%>