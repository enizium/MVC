<%-- 
    Document   : index
    Created on : Jun 18, 2018, 4:54:05 PM
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
        <script src="${pageContext.request.contextPath}/frontend/js/modernizr-2.6.2.min.js"></script>
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
                        <li class="colorlib-active"><a href="${pageContext.request.contextPath}/frontend/index.jsp">Home</a></li>
                        <li><a href="${pageContext.request.contextPath}/Admin?action=home">Admin Dashboard</a></li>
                        <li><a href="${pageContext.request.contextPath}/frontend/about.html">About</a></li>
                        <li><a href="${pageContext.request.contextPath}/frontend/services.html">Services</a></li>
                        <li><a href="${pageContext.request.contextPath}/frontend/blog.html">Blog</a></li>
                        <li><a href="${pageContext.request.contextPath}/frontend/login.jsp">Login</a></li>
                        <li><a href="${pageContext.request.contextPath}/frontend/signup.jsp">SignUp</a></li>
                    </ul>
                </nav>
            </aside>

            <div id="colorlib-main">
                <aside id="colorlib-hero" class="js-fullheight">
                    <div class="flexslider js-fullheight">
                        <ul class="slides">
                            <li style="background-image: url(${pageContext.request.contextPath}/frontend/images/img_bg_1.jpg);">
                                <div class="overlay"></div>
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-md-6 col-md-offset-3 col-md-push-3 col-sm-12 col-xs-12 js-fullheight slider-text">
                                            <div class="slider-text-inner">
                                                <div class="desc">
                                                    <h1>An Inspiring Built Space</h1>
                                                    <h2>100% html5 bootstrap templates Made by <a href="https://colorlib.com/" target="_blank">colorlib.com</a></h2>
                                                    <p><a class="btn btn-primary btn-learn">View Project <i class="icon-arrow-right3"></i></a></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li style="background-image: url(${pageContext.request.contextPath}/frontend/images/img_bg_2.jpg);">
                                <div class="overlay"></div>
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-md-6 col-md-offset-3 col-md-push-3 col-sm-12 col-xs-12 js-fullheight slider-text">
                                            <div class="slider-text-inner">
                                                <div class="desc">
                                                    <h1>Interior Design Studio</h1>
                                                    <h2>100% html5 bootstrap templates Made by <a href="https://colorlib.com/" target="_blank">colorlib.com</a></h2>
                                                    <p><a class="btn btn-primary btn-learn">View Project <i class="icon-arrow-right3"></i></a></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li style="background-image: url(${pageContext.request.contextPath}/frontend/images/img_bg_3.jpg);">
                                <div class="overlay"></div>
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-md-6 col-md-offset-3 col-md-push-3 col-sm-12 col-xs-12 js-fullheight slider-text">
                                            <div class="slider-text-inner">
                                                <div class="desc">
                                                    <h1>The National Gallery</h1>
                                                    <h2>100% html5 bootstrap templates Made by <a href="https://colorlib.com/" target="_blank">colorlib.com</a></h2>
                                                    <p><a class="btn btn-primary btn-learn">View Project <i class="icon-arrow-right3"></i></a></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </aside>

                <div class="colorlib-about">
                    <div class="colorlib-narrow-content">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="about-img animate-box" data-animate-effect="fadeInLeft" style="background-image: url(${pageContext.request.contextPath}/frontend/images/img_bg_2.jpg);">
                                </div>
                            </div>
                            <div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
                                <div class="about-desc">
                                    <span class="heading-meta">Welcome</span>
                                    <h2 class="colorlib-heading">Who we are</h2>
                                    <p>On her way she met a copy. The copy warned the Little Blind Text, that where it came from it would have been rewritten a thousand times and everything that was left from its origin would be the word "and" and the Little Blind Text should turn around and return to its own, safe country.</p>
                                    <p>A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                </div>
                                <div class="row padding">
                                    <div class="col-md-4 no-gutters animate-box" data-animate-effect="fadeInLeft">
                                        <a href="#" class="steps active">
                                            <p class="icon"><span><i class="icon-check"></i></span></p>
                                            <h3>We are <br>pasionate</h3>
                                        </a>
                                    </div>
                                    <div class="col-md-4 no-gutters animate-box" data-animate-effect="fadeInLeft">
                                        <a href="#" class="steps">
                                            <p class="icon"><span><i class="icon-check"></i></span></p>
                                            <h3>Honest <br>Dependable</h3>
                                        </a>
                                    </div>
                                    <div class="col-md-4 no-gutters animate-box" data-animate-effect="fadeInLeft">
                                        <a href="#" class="steps">
                                            <p class="icon"><span><i class="icon-check"></i></span></p>
                                            <h3>Always <br>Improving</h3>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="colorlib-services">
                    <div class="colorlib-narrow-content">
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
                                <span class="heading-meta">What I do?</span>
                                <h2 class="colorlib-heading">Here are some of my expertise</h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="colorlib-feature animate-box" data-animate-effect="fadeInLeft">
                                            <div class="colorlib-icon">
                                                <i class="flaticon-worker"></i>
                                            </div>
                                            <div class="colorlib-text">
                                                <h3>General Conctructing</h3>
                                                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
                                            </div>
                                        </div>

                                        <div class="colorlib-feature animate-box" data-animate-effect="fadeInLeft">
                                            <div class="colorlib-icon">
                                                <i class="flaticon-sketch"></i>
                                            </div>
                                            <div class="colorlib-text">
                                                <h3>Pre-Contruction Design</h3>
                                                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
                                            </div>
                                        </div>

                                        <div class="colorlib-feature animate-box" data-animate-effect="fadeInLeft">
                                            <div class="colorlib-icon">
                                                <i class="flaticon-engineering"></i>
                                            </div>
                                            <div class="colorlib-text">
                                                <h3>Building &amp; Modeling</h3>
                                                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
                                            </div>
                                        </div>

                                        <div class="colorlib-feature animate-box" data-animate-effect="fadeInLeft">
                                            <div class="colorlib-icon">
                                                <i class="flaticon-crane"></i>
                                            </div>
                                            <div class="colorlib-text">
                                                <h3>Construction Management</h3>
                                                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="col-md-6">
                                        <a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
                                            <div class="services-img" style="background-image: url(${pageContext.request.contextPath}/frontend/images/services-1.jpg)"></div>
                                            <div class="desc">
                                                <h3>Design &amp; Build</h3>
                                            </div>
                                        </a>
                                        <a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
                                            <div class="services-img" style="background-image: url(${pageContext.request.contextPath}/frontend/images/services-2.jpg)"></div>
                                            <div class="desc">
                                                <h3>House Remodeling</h3>
                                            </div>
                                        </a>
                                        <a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
                                            <div class="services-img" style="background-image: url(${pageContext.request.contextPath}/frontend/images/services-3.jpg)"></div>
                                            <div class="desc">
                                                <h3>Construction Management</h3>
                                            </div>
                                        </a>
                                    </div>
                                    <div class="col-md-6 move-bottom">
                                        <a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
                                            <div class="services-img" style="background-image: url(${pageContext.request.contextPath}/frontend/images/services-4.jpg)"></div>
                                            <div class="desc">
                                                <h3>Painting &amp; Tiling</h3>
                                            </div>
                                        </a>
                                        <a href="services.html" class="services-wrap animate-box" data-animate-effect="fadeInRight">
                                            <div class="services-img" style="background-image: url(${pageContext.request.contextPath}/frontend/images/services-5.jpg)"></div>
                                            <div class="desc">
                                                <h3>Kitchen Remodeling</h3>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="colorlib-counter" class="colorlib-counters" style="background-image: url(${pageContext.request.contextPath}/frontend/images/cover_bg_1.jpg);" data-stellar-background-ratio="0.5">
                    <div class="overlay"></div>
                    <div class="colorlib-narrow-content">
                        <div class="row">
                        </div>
                        <div class="row">
                            <div class="col-md-3 text-center animate-box">
                                <span class="icon"><i class="flaticon-skyline"></i></span>
                                <span class="colorlib-counter js-counter" data-from="0" data-to="1539" data-speed="5000" data-refresh-interval="50"></span>
                                <span class="colorlib-counter-label">Projects</span>
                            </div>
                            <div class="col-md-3 text-center animate-box">
                                <span class="icon"><i class="flaticon-engineer"></i></span>
                                <span class="colorlib-counter js-counter" data-from="0" data-to="3653" data-speed="5000" data-refresh-interval="50"></span>
                                <span class="colorlib-counter-label">Employees</span>
                            </div>
                            <div class="col-md-3 text-center animate-box">
                                <span class="icon"><i class="flaticon-architect-with-helmet"></i></span>
                                <span class="colorlib-counter js-counter" data-from="0" data-to="5987" data-speed="5000" data-refresh-interval="50"></span>
                                <span class="colorlib-counter-label">Constructor</span>
                            </div>
                            <div class="col-md-3 text-center animate-box">
                                <span class="icon"><i class="flaticon-worker"></i></span>
                                <span class="colorlib-counter js-counter" data-from="0" data-to="3999" data-speed="5000" data-refresh-interval="50"></span>
                                <span class="colorlib-counter-label">Partners</span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="colorlib-work">
                    <div class="colorlib-narrow-content">
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
                                <span class="heading-meta">My Work</span>
                                <h2 class="colorlib-heading animate-box">Recent Work</h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
                                <div class="project" style="background-image: url(${pageContext.request.contextPath}/frontend/images/img-1.jpg);">
                                    <div class="desc">
                                        <div class="con">
                                            <h3><a href="work.html">Work 01</a></h3>
                                            <span>Building</span>
                                            <p class="icon">
                                                <span><a href="#"><i class="icon-share3"></i></a></span>
                                                <span><a href="#"><i class="icon-eye"></i> 100</a></span>
                                                <span><a href="#"><i class="icon-heart"></i> 49</a></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 animate-box" data-animate-effect="fadeInLeft">
                                <div class="project" style="background-image: url(${pageContext.request.contextPath}/frontend/images/img-2.jpg);">
                                    <div class="desc">
                                        <div class="con">
                                            <h3><a href="work.html">Work 02</a></h3>
                                            <span>House, Apartment</span>
                                            <p class="icon">
                                                <span><a href="#"><i class="icon-share3"></i></a></span>
                                                <span><a href="#"><i class="icon-eye"></i> 100</a></span>
                                                <span><a href="#"><i class="icon-heart"></i> 49</a></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 animate-box" data-animate-effect="fadeInLeft">
                                <div class="project" style="background-image: url(${pageContext.request.contextPath}/frontend/images/img-3.jpg);">
                                    <div class="desc">
                                        <div class="con">
                                            <h3><a href="work.html">Work 03</a></h3>
                                            <span>Dining Room</span>
                                            <p class="icon">
                                                <span><a href="#"><i class="icon-share3"></i></a></span>
                                                <span><a href="#"><i class="icon-eye"></i> 100</a></span>
                                                <span><a href="#"><i class="icon-heart"></i> 49</a></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 animate-box" data-animate-effect="fadeInLeft">
                                <div class="project" style="background-image: url(${pageContext.request.contextPath}/frontend/images/img-4.jpg);">
                                    <div class="desc">
                                        <div class="con">
                                            <h3><a href="work.html">Work 04</a></h3>
                                            <span>House, Building</span>
                                            <p class="icon">
                                                <span><a href="#"><i class="icon-share3"></i></a></span>
                                                <span><a href="#"><i class="icon-eye"></i> 100</a></span>
                                                <span><a href="#"><i class="icon-heart"></i> 49</a></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 animate-box" data-animate-effect="fadeInLeft">
                                <div class="project" style="background-image: url(${pageContext.request.contextPath}/frontend/images/img-5.jpg);">
                                    <div class="desc">
                                        <div class="con">
                                            <h3><a href="work.html">Work 05</a></h3>
                                            <span>Condo, Pad</span>
                                            <p class="icon">
                                                <span><a href="#"><i class="icon-share3"></i></a></span>
                                                <span><a href="#"><i class="icon-eye"></i> 100</a></span>
                                                <span><a href="#"><i class="icon-heart"></i> 49</a></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
                                <div class="project" style="background-image: url(${pageContext.request.contextPath}/frontend/images/img-6.jpg);">
                                    <div class="desc">
                                        <div class="con">
                                            <h3><a href="work.html">Work 06</a></h3>
                                            <span>Table, Chairs</span>
                                            <p class="icon">
                                                <span><a href="#"><i class="icon-share3"></i></a></span>
                                                <span><a href="#"><i class="icon-eye"></i> 100</a></span>
                                                <span><a href="#"><i class="icon-heart"></i> 49</a></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="colorlib-blog">
                    <div class="colorlib-narrow-content">
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
                                <span class="heading-meta">Read</span>
                                <h2 class="colorlib-heading">Recent Blog</h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                                <div class="blog-entry">
                                    <a href="blog.html" class="blog-img"><img src="${pageContext.request.contextPath}/frontend/images/blog-1.jpg" class="img-responsive" alt="HTML5 Bootstrap Template by colorlib.com"></a>
                                    <div class="desc">
                                        <span><small>April 14, 2018 </small> | <small> Web Design </small> | <small> <i class="icon-bubble3"></i> 4</small></span>
                                        <h3><a href="blog.html">Renovating National Gallery</a></h3>
                                        <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                                <div class="blog-entry">
                                    <a href="blog.html" class="blog-img"><img src="${pageContext.request.contextPath}/frontend/images/blog-2.jpg" class="img-responsive" alt="HTML5 Bootstrap Template by colorlib.com"></a>
                                    <div class="desc">
                                        <span><small>April 14, 2018 </small> | <small> Web Design </small> | <small> <i class="icon-bubble3"></i> 4</small></span>
                                        <h3><a href="blog.html">Wordpress for a Beginner</a></h3>
                                        <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                                <div class="blog-entry">
                                    <a href="blog.html" class="blog-img"><img src="${pageContext.request.contextPath}/frontend/images/blog-3.jpg" class="img-responsive" alt="HTML5 Bootstrap Template by colorlib.com"></a>
                                    <div class="desc">
                                        <span><small>April 14, 2018 </small> | <small> Inspiration </small> | <small> <i class="icon-bubble3"></i> 4</small></span>
                                        <h3><a href="blog.html">Make website from scratch</a></h3>
                                        <p>Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="get-in-touch" class="colorlib-bg-color">
                    <div class="colorlib-narrow-content">
                        <div class="row">
                            <div class="col-md-6 animate-box" data-animate-effect="fadeInLeft">
                                <h2>Get in Touch!</h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box" data-animate-effect="fadeInLeft">
                                <p class="colorlib-lead">Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
                                <p><a href="#" class="btn btn-primary btn-learn">Contact me!</a></p>
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


        <!-- MAIN JS -->
        <script src="${pageContext.request.contextPath}/frontend/js/main.js"></script>

    </body>
</html>

