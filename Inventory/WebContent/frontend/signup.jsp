<%-- 
    Document   : signup
    Created on : Jun 19, 2018, 10:32:05 AM
    Author     : enizium
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
	<li><a
		href="${pageContext.request.contextPath}/frontend/login.jsp">Login</a></li>
	<li class="colorlib-active"><a
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
								action="${pageContext.request.contextPath}/User?action=signup">
								<div class="form-group">
									<label> Your Name</label> <input type="text" id="name"
										name="name" class="form-control" placeholder="Jhon Methew"
										required>
								</div>
								<div class="form-group">
									<label> Your Email</label> <input type="email" id="email"
										name="email" class="form-control"
										placeholder="mysupermail@mail.com" required>
								</div>
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
								<div class="form-group">
									<label>Confirm Password</label> <input id="cpassword"
										name="cpassword" class="form-control" required="required"
										type="password" placeholder="eg. X8df!90EO" />
								</div>
								<div>
									<label class="form-group"> Phone</label> <input id="phone"
										name="phone" class="form-control" required="required"
										type="text" placeholder="98XXXXXXXXX" />
								</div>
								<br>
								<div>
									<label> Role </label>
								</div>
								<div class="search_categories">
									<div class="select">
										<select class="uname" id="role" name="role">
											<option value="admin">Admin</option>
											<option value="user">User</option>
										</select>
									</div>
								</div>

								<div>
									<label class="form-group">Gender</label> <input type="radio"
										id="gender1" name="gender" value="male" checked>&nbsp;
									Male &nbsp; <input type="radio" id="geder1" name="gender"
										value="female">&nbsp;Female
								</div>



								<div class="form-group">
									<input type="submit" class="btn btn-primary btn-send-message"
										value="Sign up">
								</div>
								<p class="change_link">
									Already a member ? <a href="login.jsp" class="to_register">
										Go and log in </a>
								</p>
							</form>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="js/jquery.waypoints.min.js"></script>
<!-- Flexslider -->
<script src="js/jquery.flexslider-min.js"></script>
<!-- Sticky Kit -->
<script src="js/sticky-kit.min.js"></script>
<!-- Owl carousel -->
<script src="js/owl.carousel.min.js"></script>
<!-- Counters -->
<script src="js/jquery.countTo.js"></script>
<!-- Google Map -->
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
<script src="js/google_map.js"></script>


<!-- MAIN JS -->
<script src="js/main.js"></script>

</body>
</html>