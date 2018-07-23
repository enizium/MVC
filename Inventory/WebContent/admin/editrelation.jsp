<%-- 
    Document   : editrelation
    Created on : Jun 14, 2018, 8:32:19 AM
    Author     : enizium
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="sppid" value="${productsupplier.pid}"/>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title> Admin - Inventory Management System</title>
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
                        <a href="#">Relationship</a>
                    </li>
                    <li class="breadcrumb-item active">Edit Product-Supplier Relation</li>
                </ol>
                <!--add supplier form-->


                <div class="card card-register mx-auto mt-5">
                    <div class="card-header">Edit Relation</div>
                    <div class="card-body">

                        <form  method="post" action="${pageContext.request.contextPath}/Admin/Relation?action=update">
                            <div class="form-group">
                                 <div class="form-row">
                                      <div class="col-md-3">
                                        <label for="id">Product-Supplier Id</label>
                                        <input class="form-control" type="text" name="id" id="id" value="${productsupplier.id}" readonly>
                                      </div>
                                 </div>
                                <div class="form-row">
                                    <div class="col-md-6">
                                        <label for="product">Product</label>
                                        <select class="form-control" id="product" name="product"   >
                                            <c:forEach items="${productdata}" var="prod">
                                                <option value="${prod.id}"<c:if test="${prod.id.equals('${sppid}')}"> 
                                                        selected</c:if>>${prod.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-md-6">
                                        <label for="supplier">Supplier</label>
                                         <select class="form-control" id="supplier" name="supplier">
                                             
                                            <c:forEach items="${supplierdata}" var="supp"  >
                                                <option value="${supp.id}"<c:if test="${supp.id.equals('${productsupplier.sid}')}"> 
                                                        selected</c:if>>${supp.name}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block" >Update Relationship</button>
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

