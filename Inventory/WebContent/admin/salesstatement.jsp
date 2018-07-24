<%-- 
    Document   : display
    Created on : Jun 1, 2018, 11:03:03 AM
    Author     : enizium
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>

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
        <link href="${pageContext.request.contextPath}/css/mystyle.css" rel="stylesheet">
    </head>

    <body class="fixed-nav sticky-footer bg-dark" id="page-top">
        <!-- Navigation-->
        <%@include file="header.jsp" %>

    

        <div class="content-wrapper">
            <div class="container-fluid">
                <!-- Breadcrumbs-->
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="#">Sales</a>
                    </li>
                    <li class="breadcrumb-item active">Statement</li>
                </ol>
                <!--display supplier table-->
                ${deleted}
                ${updated}
                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fa fa-table"></i> Sales Statement </div>
                    <div class="card-body">
                        <div class="table-responsive" style="overflow-x: auto">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" >
                                <thead>
                                    <tr>
                                    	<th>S.N</th>
                                        <th>Sales ID</th>
                                        <th>Product Name</th>
                                        <th>Brand</th>
                                        <th>Type</th>
                                        <th>category</th>
                                        <th>date</th>
                                        <th>quantity</th>
                                        <th>price</th>
                                        <th>Toal Price</th>
                                        
                                        <th>EDIT</>
                                        <th>DELETE</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                    	<th>S.N</th>
                                        <th>Sales ID</th>
                                        <th>Product Name</th>
                                        <th>Brand</th>
                                        <th>Type</th>
                                        <th>category</th>
                                        <th>date</th>
                                        <th>quantity</th>
                                        <th>price</th>
                                        <th>Toal Price</th>
                                        
                                        <th>EDIT</>
                                        <th>DELETE</th>
                                    </tr>
                                </tfoot>
                                <tbody>
                                	<% int i=1; %>
                                    <c:forEach items="${saleslist}" var="supplier" >
                                        <tr>
                                        	<td><%= i %> <% i++; %></td> 
                                            <td>${sales.id}</td>
                                            <td>${sales.name}</td>
                                            <td>${sales.brand}</td>
                                            <td>${sales.type}</td>
                                            <td>${sales.category}</td>
                                            <td>${sales.date}</td>
                                            <td>${sales.quantity}</td>
                                            <td>${sales.price}</td>
                                            <td>${sales.totalprice}</td>
                                            
                                            <td><a  class="btn btn-secondary btn-block" href="${cp}/Admin/Sale?action=edit&id=${sales.id}">EDIT</a></td>
                                            <td><a class="btn  btn-warning btn-block" href="${pageContext.request.contextPath}/Admin/Sale?action=delete&id=${sales.id}">DELETE</a></td>

                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
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

