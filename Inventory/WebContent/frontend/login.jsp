<%-- 
    Document   : login
    Created on : Jun 18, 2018, 4:52:52 PM
    Author     : enizium
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<%@include file="header.jsp"%>
<ul>
	<li><a
		href="${pageContext.request.contextPath}/frontend/index.jsp">Home</a></li>
	<li><a href="${pageContext.request.contextPath}/Admin?action=home">Admin
			Dashboard</a></li>
	<li><a
		href="${pageContext.request.contextPath}/Admin/Stock?action=fstock">Stock</a></li>
	<li><a href="${pageContext.request.contextPath}/frontend/sale.jsp">Sales</a></li>
	<li><a
		href="${pageContext.request.contextPath}/frontend/purchase.jsp">Purchase</a></li>
	<li class="colorlib-active"><a
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

					<h2 class="colorlib-heading">Registration</h2>
				</div>
			</div>
			<div class="row">

				<div class="col-md-5 col-md-push-1">
					<div class="row">
						<div class="col-md-10 col-md-offset-1 col-md-pull-1 animate-box"
							data-animate-effect="fadeInLeft">
							<form method="post"
								action="${pageContext.request.contextPath}/Login">
								<div class="form-group">${msg}</div>

								<div class="form-group">

									<label>Your username</label> <input id="username"
										name="username" class="form-control" required="required"
										type="text" placeholder="mysuperusername690" />
								</div>
								<div class="form-group">
									<label>Your Password</label> <input id="password"
										name="password" class="form-control" required="required"
										type="password" placeholder="eg. X8df!90EO" />
								</div>
								<div>
									<input type="checkbox" name="loginkeeping" id="loginkeeping"
										value="loginkeeping" /> <label for="loginkeeping">Keep
										me logged in</label>
								</div>
								<div class="form-group">
									<input type="submit" class="btn btn-primary btn-send-message"
										value="Login">
								</div>
								<p class="change_link">
									Not a member ? <a href="signup.jsp" class="to_register"> Go
										and Sign up in </a>
								</p>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>

<!-- jQuery -->
<script
	src="${pageContext.request.contextPath}/frontend/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script
	src="${pageContext.request.contextPath}/frontend/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script
	src="${pageContext.request.contextPath}/frontend/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script
	src="${pageContext.request.contextPath}/frontend/js/jquery.waypoints.min.js"></script>
<!-- Flexslider -->
<script
	src="${pageContext.request.contextPath}/frontend/js/jquery.flexslider-min.js"></script>
<!-- Sticky Kit -->
<script
	src="${pageContext.request.contextPath}/frontend/js/sticky-kit.min.js"></script>
<!-- Owl carousel -->
<script
	src="${pageContext.request.contextPath}/frontend/js/owl.carousel.min.js"></script>
<!-- Counters -->
<script
	src="${pageContext.request.contextPath}/frontend/js/jquery.countTo.js"></script>
<!-- Google Map -->
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
<script
	src="${pageContext.request.contextPath}/frontend/js/google_map.js"></script>


<!-- MAIN JS -->
<script src="${pageContext.request.contextPath}/frontend/js/main.js"></script>

</body>
</html>

