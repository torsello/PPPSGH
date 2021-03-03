<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Confirmacion de registro</title>
<link href="<c:url value='/static/plugins/bootstrap/css/bootstrap.css' />" rel="stylesheet"> 
	 <link href="<c:url value='/static/css/style.css' />" rel="stylesheet">
	<script src="<c:url value='/static/material/js/jquery-1.12.4.js' />" type="text/javascript"></script>
<script src="<c:url value='/static/material/js/bootstrap.min.js' />" type="text/javascript"></script>
	<link rel="icon" href="<c:url value='/static/favicon.ico' />" type="image/x-icon">
		<!-- Jquery Core Js -->
    <script src="<c:url value='/static/plugins/jquery/jquery.min.js' />"></script>

    <!-- Bootstrap Core Js -->
    <script src="<c:url value='/static/plugins/bootstrap/js/bootstrap.js' />"></script>

</head>
<body>
	<%@include file="authheader.jsp"%>
	<section class="content">
		<div class="alert alert-success lead">
	    	${success}
		</div>

		<span class="well floatRight">
			Ir a <a href="<c:url value='/list' />">Lista de Usuarios</a>
		</span>
	</section>
</body>

</html>