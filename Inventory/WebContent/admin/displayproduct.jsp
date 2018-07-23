<%-- 
    Document   : displayproduct
    Created on : Jun 8, 2018, 10:54:01 AM
    Author     : enizium
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>



<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>productdisplay </title>
        <!-- Bootstrap core CSS-->
        <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom fonts for this template-->
        <link href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Custom styles for this template-->
        <link href="${pageContext.request.contextPath}/css/sb-admin.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="${pageContext.request.contextPath}/css/thumbnail-gallery.css" rel="stylesheet">
    </head>

    <body class="fixed-nav sticky-footer bg-dark" id="page-top">
        <!-- Navigation-->
        <%@include file="header.jsp" %>

        <div class="content-wrapper">
            <div class="container-fluid">
                <!-- Breadcrumbs-->
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="#">Product</a>
                    </li>
                    <li class="breadcrumb-item active">Display Product</li>
                </ol>


                <div class="container">

                    <div class="row">

                        <div class="col-lg-12">
                            <h1 class="page-header">Products</h1>
                        </div>
                        <c:forEach items="${productlist}" var="product">
                            <div class="col-lg-3 col-md-4 col-xs-6 thumb">
                                
                                <div style="height: 280px; overflow:hidden;">
                                    <a class="thumbnail" href="#">
                                        <img class="img-responsive" value="originalIamge"
                                         src="<c:url value="${pageContext.request.contextPath}/photo/${product.image}" />" 
                                             alt="${product.image}" style="width:100%">
                                            
                                    </a>
                                </div>
                                <div>
                                    <ul type ="none">
                                        <li>${product.name}</li>
                                        <li>${product.category}</li>
                                        <li>${product.type}</li>
                                        <li>Rs.${product.price}</li>
                                        <li>${product.brand}</li>
                                        <li>Quantity: ${product.quantity} pcs</li>
                                        <li> <a href="${pageContext.request.contextPath}/Admin/Product?action=edit&id=${product.id}">Edit</a>
                                        <li><a href="${pageContext.request.contextPath}/Admin/Product?action=delete&id=${product.id}">Delete</a>

                                    </ul>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>





            </div>
            <!-- /.container-fluid-->
            <!-- /.content-wrapper-->

            <!-- Scroll to Top Button-->

            <%@include file ="footer.jsp"%>

            <!-- Bootstrap core JavaScript-->
            <script src="${pageContext.request.contextPath}/vendor/jquery/jquery.min.js"></script>
            <script src="${pageContext.request.contextPath}/vendor/popper/popper.min.js"></script>
            <script src="${pageContext.request.contextPath}/vendor/bootstrap/js/bootstrap.min.js"></script>
            <!-- Core plugin JavaScript-->
            <script src="${pageContext.request.contextPath}/vendor/jquery-easing/jquery.easing.min.js"></script>

            <!-- Custom scripts for all pages-->
            <script src="${pageContext.request.contextPath}/js/sb-admin.min.js"></script>
            <!-- Custom scripts for this page-->
            <script src="${pageContext.request.contextPath}/js/sb-admin-datatables.min.js"></script>
            <script src="${pageContext.request.contextPath}/js/sb-admin-charts.min.js"></script>

            <script src="${pageContext.request.contextPath}/vender/jquery/jquery.js"></script>
            <script src="${pageContext.request.contextPath}/vender/bootstarp/js/bootstrap.min.js"></script>
        </div>
    </body>

</html>

