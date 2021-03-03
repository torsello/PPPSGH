<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<%
request.setAttribute("success", request.getParameter("success"));
%>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Tipos de Documento</title>
	<link rel="icon" href="<c:url value='/static/material/images/favicon.ico?' />" type="image/x-icon">
	<script src="<c:url value='/static/material/js/jquery-1.12.4.js' />" type="text/javascript"></script>
<script src="<c:url value='/static/material/js/bootstrap.min.js' />" type="text/javascript"></script>
</head>


<body>
<%@include file="../../authheader.jsp" %>
	<section class="content">
	<div class="container-fluid">

<div class="block-header">
	<h2>
		TIPOS DE DOCUMENTO <small>Lista de tipos</small>
	</h2>
</div>

	

<!-- Basic Examples -->
<div class="row clearfix">
<c:choose>
    <c:when test="${success != null}">
        <div class="alert alert-success alert-dismissible">
			<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button>${success}
		</div>
    </c:when>   
</c:choose> 
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<div class="card">
			<div class="header"> 
				 <sec:authorize access="hasRole('ADMIN')">
					<td><a href="<c:url value='new' />" class="btn btn-primary custom-width">Crear tipo</a></td>
	 			</sec:authorize>
	 			</div>
                        <div class="body table-responsive">
                            <table class="table table-bordered table-striped table-hover js-basic-example dataTable">
	    		<thead>
		      		<tr>

<% /* ******************************************************************************** *
	  ********************* COMIENZO DE LOS CAMPOS DE LA ENTIDAD ********************* *
	  ******************************************************************************** */ %>
				        <th>Descripción</th>

				      <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
				        	<th width="100" class="noExport">Acciones</th>
				        </sec:authorize>
				        <!--<sec:authorize access="hasRole('ADMIN')">
				        	<th width="100"></th>
				        </sec:authorize>-->
					</tr>
		    	</thead>
	    		<tbody>
				<c:forEach items="${entities}" var="entity">
					<tr>

<% /* ******************************************************************************** *
	  ********************* COMIENZO DE LOS CAMPOS DE LA ENTIDAD ********************* *
	  ******************************************************************************** */ %>
						<td>${entity.descripcion}</td>

<% /* ******************************************************************************** *
	  *********************** FIN DE LOS CAMPOS DE LA ENTIDAD ************************ *
	  ******************************************************************************** */ %>

					    <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
							<td><a href="<c:url value='edit-${entity.id}' />" class="btn btn-default btn-circle waves-effect waves-circle waves-float"><i class="material-icons">mode_edit</i></a>
				        </sec:authorize>
				        <sec:authorize access="hasRole('ADMIN')">
							<a href="<c:url value='delete-${entity.id}' />" class="btn bg-red btn-circle waves-effect waves-circle waves-float"><i class="material-icons">delete</i></a></td>
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