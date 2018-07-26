<%-- 
    Document   : index.jsp
    Created on : May 23, 2018, 10:52:27 AM
    Author     : enizium
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.navbar {
	overflow: hidden;
	background-color: #333;
	font-family: Arial, Helvetica, sans-serif;
}

.navbar a {
	float: left;
	font-size: 16px;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: red;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}
</style>

</head>
<body>


	<h1 align="center">Welcome to Online Book Store</h1>
	<div class="navbar">
		<a href="${pageContext.request.contextPath}/Book?action=index">Home</a>
		<a href="${pageContext.request.contextPath}/Book?action=display">List
			of Books</a> <a href="${pageContext.request.contextPath}/Book?action=add">Add
			Book</a> <a href="${pageContext.request.contextPath}/Admin?action=home">Admin
			Dashboard</a> <a
			href="${pageContext.request.contextPath}/User?action=login">Login</a>
		<a href="frontend/adduser.jsp">Signup</a>
	</div>
	<h1>This is a home page</h1>

</body>
</html>

