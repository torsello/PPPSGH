<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Panel Configuraciones</title>
	<link rel="icon" href="<c:url value='/static/material/images/favicon.ico?' />" type="image/x-icon">
	<script src="<c:url value='/static/material/js/jquery-1.12.4.js' />" type="text/javascript"></script>
<script src="<c:url value='/static/material/js/bootstrap.min.js' />" type="text/javascript"></script>
</head>

<body>
<%@include file="authheader.jsp" %>
	<section class="content">
		<div class="container-fluid">
		<div class="row clearfix">
				<div class="panel-heading">
					<div class="card">
						<div class="header bg-blue">
						<h2>PANEL CONFIGURACIONES</h2>
						</div>
				</div>
			</div>
		</div>
		
	 	<sec:authorize access="hasRole('ADMIN')" >
	 		<div class="well">
	 			<h3> Modulo Seguridad</h3>
		 		<a href="<c:url value='/usuarios/' />">Usuarios</a>
		 	</div>
		 	
		 	<div class="well">
		 		<h3> Gestion de Clientes</h3>
	 			<a href="<c:url value='/tipoDocumento/' />">Tipo de Documento</a><br>
	 			<a href="<c:url value='/caracteristicaPasajero/' />">Caracteristicas de Pasajeros</a><br>
	 			<a href="<c:url value='/pasajero/' />">Pasajero</a><br>
	 			<a href="<c:url value='/organizacion/' />">Organizacion</a>
		 	</div>
		 	<div class="well">
		 		<h3> Gestion de Estadia</h3>
		 		<a href="<c:url value='/hotel/' />">Hoteles</a><br>
		 		<a href="<c:url value='/tipoHabitacion/' />">Tipos de Habitaciones</a><br>
		 		<a href="<c:url value='/caracteristicaHabitacion/' />">Caracteristicas de Habitaciones</a><br>
		 		<a href="<c:url value='/estadoHabitacion/' />">Estados de Habitaciones</a><br>
	 			<a href="<c:url value='/habitacion/' />">Habitaciones</a><br>
	 			<a href="<c:url value='/tipoServicio/' />">Tipo de Servicios</a><br>
	 			<a href="<c:url value='/servicio/' />">Servicios</a><br>
	 			<a href="<c:url value='/planAlojamiento/' />">Plan Alojamiento</a><br>
	 			<a href="<c:url value='/estadoEstadia/' />">Estado Estadia</a><br>
		 		<a href="<c:url value='/estadia/' />">Estadia</a><br>
		 		<a href="<c:url value='/pasajeroEstadia/' />">Pasajeros por Estadia</a>
		 	</div>



	 	</sec:authorize>
	 	</div>
   	</section>
</body>
</html>