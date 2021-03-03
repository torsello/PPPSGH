<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Lista de Usuarios</title>
	<script src="<c:url value='/static/material/js/jquery-1.12.4.js' />" type="text/javascript"></script>
<script src="<c:url value='/static/material/js/bootstrap.min.js' />" type="text/javascript"></script>
	<link rel="icon" href="<c:url value='/static/material/images/favicon.ico?' />" type="image/x-icon">
</head>

<body>
	<%@include file="authheader.jsp" %>
	<section class="content">
        	<div class="container-fluid">

<div class="block-header">
	<h2>
		USUARIOS <small>Lista de usuarios</small>
	</h2>
</div>

	

<!-- Basic Examples -->
<div class="row clearfix">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<div class="card">
			<div class="header"> 
				 <sec:authorize access="hasRole('ADMIN')">
					<td><a href="<c:url value='new' />" class="btn btn-primary custom-width">Crear usuario</a></td>
	 			</sec:authorize>
	 			</div>
                        <div class="body table-responsive">
                            <table class="table table-bordered table-striped table-hover js-basic-example dataTable">
	    		<thead>
		      		<tr>
				        <th>Nombre</th>
				        <th>Apellido</th>
				        <th>Email</th>
				        <th>Usuario</th>
				        <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
				        	<th width="0" class="noExport">Acciones</th>
				        </sec:authorize>
				        <!--<sec:authorize access="hasRole('ADMIN')">
				        	<th width="100"></th>
				        </sec:authorize>-->

					</tr>
		    	</thead>
	    		<tbody>
				<c:forEach items="${users}" var="user">
					<tr>
						<td>${user.firstName}</td>
						<td>${user.lastName}</td>
						<td>${user.email}</td>
						<td>${user.ssoId}</td>
					    <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
							<td><a href="<c:url value='/edit-user-${user.ssoId}' />" class="btn btn-default btn-circle waves-effect waves-circle waves-float"><i class="material-icons">mode_edit</i></a>
				        </sec:authorize>
				        <sec:authorize access="hasRole('ADMIN')">
							<a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn bg-red btn-circle waves-effect waves-circle waves-float"><i class="material-icons">delete</i></a></td>
        				</sec:authorize>
					</tr>
				</c:forEach>
	    		</tbody>
	    	</table>
		</div>
	</div>
	</div>
	</div>
	</div>
   	</section>
	<!-- JQuery dataTable -->
 <script
	src="<c:url value='/static/material/plugins/jquery-datatable/jquery.dataTables.js' />"
	type="text/javascript"></script>
<script
	src="<c:url value='/static/material/plugins/jquery-datatable/skin/bootstrap/js/dataTables.bootstrap.js' />"
	type="text/javascript"></script>
	<script
	src="<c:url value='/static/material/plugins/jquery-datatable/extensions/export/dataTables.buttons.min.js' />"
	type="text/javascript"></script>
	<script
	src="<c:url value='/static/material/plugins/jquery-datatable/extensions/export/buttons.flash.min.js' />"
	type="text/javascript"></script>
	<script
	src="<c:url value='/static/material/plugins/jquery-datatable/extensions/export/jszip.min.js' />"
	type="text/javascript"></script>
	<script
	src="<c:url value='/static/material/plugins/jquery-datatable/extensions/export/pdfmake.min.js' />"
	type="text/javascript"></script>
	<script
	src="<c:url value='/static/material/plugins/jquery-datatable/extensions/export/vfs_fonts.js' />"
	type="text/javascript"></script>
	<script
	src="<c:url value='/static/material/plugins/jquery-datatable/extensions/export/buttons.html5.min.js' />"
	type="text/javascript"></script>
	<script
	src="<c:url value='/static/material/plugins/jquery-datatable/extensions/export/buttons.print.min.js' />"
	type="text/javascript"></script>
	<script src="<c:url value='/static/material/js/comprobante.js' />"
	type="text/javascript"></script>
</body>
</html>