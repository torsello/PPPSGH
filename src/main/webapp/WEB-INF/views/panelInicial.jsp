<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Panel Principal</title>
<link rel="icon" href="<c:url value='/static/material/images/favicon.ico?' />" type="image/x-icon">
 
<script src="<c:url value='/static/material/js/jquery-1.12.4.js' />" type="text/javascript"></script>
<script src="<c:url value='/static/material/js/bootstrap.min.js' />" type="text/javascript"></script>
 
</head>

<body>	
		<%@include file="authheader.jsp"%>
 

</body>
</html>