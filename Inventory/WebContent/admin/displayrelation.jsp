<%-- 
    Document   : displayrelation
    Created on : Jun 12, 2018, 11:52:02 AM
    Author     : enizium
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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

        ${deleted}
        ${updated}

        <div class="content-wrapper">
            <div class="container-fluid">
                <!-- Breadcrumbs-->
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="#">Relatioship</a>
                    </li>
                    <li class="breadcrumb-item active">Display Product-Supplier Relationship</li>
                </ol>
                <!--display supplier table-->
               
                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fa fa-table"></i> List</div>
                    <div class="card-body">
                        <div class="table-responsive" style="overflow-x: auto">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" >
                                <thead>
                                    <tr>
                                    	<th>S.N</th>
                                        <th>ID</th>
                                        <th>Product Name</th>
                                        <th>Supplier Name</th>
                                        <th>EDIT</>
                                        <th>DELETE</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                      <tr>
                                      	<th>S.N</th>
                                        <th>ID</th>
                                        <th>Product Name</th>
                                        <th>Supplier Name</th>
                                        <th>EDIT</>
                                        <th>DELETE</th>
                                    </tr>
                                </tfoot>
                                <tbody>
                                	<% int i=1 ;%>
                                    <c:forEach items="${productsupplierdata}" var="ps" >
                                        <tr>
                                        	<td><%= i %> <% i++; %></td> 
                                            <td>${ps.id}</td>
                                            <td>${ps.pname}</td>
                                            <td>${ps.sname}</td>                                           
                                            <td><a class="btn btn-secondary btn-block" href="${pageContext.request.contextPath}/Admin/Relation?action=edit&id=${ps.id}">EDIT</a></td>
                                            <td><a class="btn  btn-warning btn-block"  href="${pageContext.request.contextPath}/Admin/Relation?action=delete&id=${ps.id}">DELETE</a></td>

                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="card-footer small text-muted"></div>
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

