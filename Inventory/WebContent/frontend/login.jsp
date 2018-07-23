<%-- 
    Document   : login
    Created on : Jun 18, 2018, 4:52:52 PM
    Author     : enizium
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Balay Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <meta name="author" content="" />
        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico">

        <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">

        <!-- Animate.css -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/css/animate.css">
        <!-- Icomoon Icon Fonts-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/css/icomoon.css">
        <!-- Bootstrap  -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/css/bootstrap.css">
        <!-- Flexslider  -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/css/flexslider.css">
        <!-- Flaticons  -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/fonts/flaticon/font/flaticon.css">
        <!-- Owl Carousel -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/css/owl.carousel.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/css/owl.theme.default.min.css">
        <!-- Theme style  -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/frontend/css/style.css">

        <!-- Modernizr JS -->
        <script src="js/modernizr-2.6.2.min.js"></script>
        <!-- FOR IE9 below -->
        <!--[if lt IE 9]>
        <script src="js/respond.min.js"></script>
        <![endif]-->

    </head>
    <body>
        <div id="colorlib-page">
            <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
            <aside id="colorlib-aside" role="complementary" class="border js-fullheight">
                <h1 id="colorlib-logo"><a href="index.html">Balay</a></h1>
                <nav id="colorlib-main-menu" role="navigation">
                    <ul>
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="work.html">Project</a></li>
                        <li><a href="about.html">About</a></li>
                        <li><a href="services.html">Services</a></li>
                        <li><a href="blog.html">Blog</a></li>
                        <li class="colorlib-active"><a href="login.jsp">Login</a></li>
                        <li ><a href="signup.jsp">SignUp</a></li>
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
                                    <div class="col-md-10 col-md-offset-1 col-md-pull-1 animate-box" data-animate-effect="fadeInLeft">
                                        <form method="post" action="${pageContext.request.contextPath}/Login">
                                            <div class="form-group">
                                                ${msg}
                                            </div>
                                            
                                            <div class="form-group">
                                               
                                                <label>Your username</label>
                                                <input id="username" name="username" class="form-control" required="required" type="text" placeholder="mysuperusername690" />
                                            </div>
                                            <div class="form-group">
                                                <label>Your Password</label>
                                                <input id="password" name="password" class="form-control" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                            </div>
                                            <div >
                                                 <input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
                                                <label for="loginkeeping">Keep me logged in</label>
                                            </div>
                                            <div class="form-group">
                                                <input type="submit" class="btn btn-primary btn-send-message" value="Login">
                                            </div>
                                            <p class="change_link">  
                                                Not a member ?
                                                <a href="signup.jsp" class="to_register"> Go and Sign up in </a>
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
        <script src="${pageContext.request.contextPath}/frontend/js/jquery.min.js"></script>
        <!-- jQuery Easing -->
        <script src="${pageContext.request.contextPath}/frontend/js/jquery.easing.1.3.js"></script>
        <!-- Bootstrap -->
        <script src="${pageContext.request.contextPath}/frontend/js/bootstrap.min.js"></script>
        <!-- Waypoints -->
        <script src="${pageContext.request.contextPath}/frontend/js/jquery.waypoints.min.js"></script>
        <!-- Flexslider -->
        <script src="${pageContext.request.contextPath}/frontend/js/jquery.flexslider-min.js"></script>
        <!-- Sticky Kit -->
        <script src="${pageContext.request.contextPath}/frontend/js/sticky-kit.min.js"></script>
        <!-- Owl carousel -->
        <script src="${pageContext.request.contextPath}/frontend/js/owl.carousel.min.js"></script>
        <!-- Counters -->
        <script src="${pageContext.request.contextPath}/frontend/js/jquery.countTo.js"></script>
        <!-- Google Map -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
        <script src="${pageContext.request.contextPath}/frontend/js/google_map.js"></script>


        <!-- MAIN JS -->
        <script src="${pageContext.request.contextPath}/frontend/js/main.js"></script>

    </body>
</html>

