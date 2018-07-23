<%-- 
    Document   : editproduct
    Created on : Jun 6, 2018, 8:24:04 AM
    Author     : enizium
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Admin - Inventory Management System </title>
        <!-- Bootstrap core CSS-->
        <link href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom fonts for this template-->
        <link href="${pageContext.request.contextPath}/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Page level plugin CSS-->
        <link href="${pageContext.request.contextPath}/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
        <!-- Custom styles for this template-->
        <link href="${pageContext.request.contextPath}/css/sb-admin.css" rel="stylesheet">
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
                    <li class="breadcrumb-item active">Add Product</li>
                </ol>
                <!--add product form-->

                <div class="card card-register mx-auto mt-5">
                    <div class="card-header">Register new Product</div>
                    <div class="card-body">

                        <form  method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/Admin/Product?action=update">
                            <div class="form-group">

                                <div class="form-row">
                                    <div class="col-md-3">
                                        <label for="id">Product ID</label>

                                        <input class="form-control" id="id" name="id" type="text" value="${productlist1.id}" required="required" readonly>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="col-md-6">
                                        <label for="name">Name</label>

                                        <input class="form-control" id="name" name="name" type="text" value="${productlist1.name}" placeholder="Enter Supplier Name" required="required">
                                    </div>
                                    <div class="col-md-6">

                                        <label for="brand">Brand</label>
                                        <select class="form-control" id="brand" name ="brand" value="${productlist1.brand}">

                                            <option value="Apple" <c:if test="${productlist1.brand.equals('Apple')}">selected </c:if>> Apple Corporation</option>
                                            <option value="Gionee"<c:if test="${productlist1.brand.equals('Gionee')}">selected </c:if>> Gionee</option>
                                            <option value="Huawei"<c:if test="${productlist1.brand.equals('Huawei')}">selected </c:if>> Huawei Electronics</option>
                                            <option value="Oppo"<c:if test="${productlist1.brand.equals('Oppo')}">selected </c:if>> Oppo Phone</option>
                                            <option value="Samsung"<c:if test="${productlist1.brand.equals('Samsung')}">selected </c:if>> Samsung Mobile</option>
                                            <option value ="Vivo"<c:if test="${productlist1.brand.equals('Vivo Mobile')}">selected </c:if>> Vivo Mobile</option>
                                            <option value="Xiaomi"<c:if test="${productlist1.brand.equals('Xiaomi')}">selected </c:if>>Xiaomi</option>
                                            <option value="Other"<c:if test="${productlist1.brand.equals('Other')}">selected </c:if>>Other</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="form-row">
                                        <div class="col-md-6">

                                            <label for="category1">Category</label>
                                            <div class="form-control">
                                                <input  id="category1" name="category" type="radio"  value="High Class" <c:if test="${productlist1.category.equals('High Class')}" >checked</c:if>> &nbsp; High Class &nbsp; <br>
                                                <input id="category2" name="category" type="radio"  value="Mid Class" <c:if test="${productlist1.category.equals('Middle Class')}" >checked</c:if>> &nbsp; Mid Class &nbsp;<br>
                                                <input id="category3" name="category" type="radio" value="Low Class" <c:if test="${productlist1.category.equals('Low Class')}" >checked</c:if> > &nbsp; Low Class &nbsp;<br>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="type1">Type</label>
                                            <div class="form-control">
                                                <input id="type1" name="type" type="checkbox"  value="Android" <c:if test="${productlist1.type.contains('Android')}">checked</c:if> > &nbsp; Android  &nbsp;<br>
                                                <input id="type2" name="type" type="checkbox"  value="iOS" <c:if test="${productlist1.type.contains('iOS')}">checked</c:if>>&nbsp; iSO &nbsp;<br>
                                                <input id="type3" name="type" type="checkbox"  value="GSM" <c:if test="${productlist1.type.contains('GSM')}">checked</c:if>>&nbsp;  GSM &nbsp;<br>
                                                <input id="type4" name="type" type="checkbox"  value="CMDA" <c:if test="${productlist1.type.contains('CDMA')}">checked</c:if>>&nbsp; CMDA &nbsp;<br>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="form-row">
                                        <div class="col-md-6">
                                            <label for="image">Image</label>
                                            <input class="form-control" id="image" name="image"   type="file"  >
                                            <code> * Image should be of height 280px. </code>
                                            <br>
                                            <label for="originalImage" >Original Filename</label>
                                            <input type="text" style="border: none"  name="originalImage" value="${productlist1.image}" readonly> 



                                    </div>
                                    <div class="col-md-6">
                                        <label for="description">Description</label>

                                        <textarea class="form-control"  rows="10" cols="50" id="description"  name ="description" 
                                                  placeholder="Enter Prodect Description">${productlist1.description}</textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="form-row">
                                    <div class="col-md-4">
                                        <label for="delivered">Delivered ON</label>
                                        <input class="form-control" id="delivered" name="delivered" type="date" value="${productlist1.deliveredOn}" required="required">
                                    </div>
                                    <div class="col-md-4">
                                        <label for="quantity">Quantity</label>
                                        <input class="form-control" id="qunatity" name="quantity" type="text"  value="${productlist1.quantity}"placeholder="Product Amount ">
                                    </div>
                                    <div class="col-md-4">
                                        <label for="price">Price </label>
                                        <input class="form-control" id="price" name="price" type="text" value="${productlist1.price}"placeholder="Price in RS">
                                    </div>
                                </div>
                            </div>


                            <button type="submit" class="btn btn-primary btn-block" >Update Product</button>
                        </form>

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
            <!-- Page level plugin JavaScript-->
            <script src="${pageContext.request.contextPath}/vendor/chart.js/Chart.min.js"></script>
            <script src="${pageContext.request.contextPath}/vendor/datatables/jquery.dataTables.js"></script>
            <script src="${pageContext.request.contextPath}/vendor/datatables/dataTables.bootstrap4.js"></script>
            <!-- Custom scripts for all pages-->
            <script src="${pageContext.request.contextPath}/js/sb-admin.min.js"></script>
            <!-- Custom scripts for this page-->
            <script src="${pageContext.request.contextPath}/js/sb-admin-datatables.min.js"></script>
            <script src="${pageContext.request.contextPath}/js/sb-admin-charts.min.js"></script>
        </div>
    </body>

</html>
