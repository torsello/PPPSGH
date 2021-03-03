<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Organizaciones</title>
<link rel="icon" href="<c:url value='/static/material/images/favicon.ico?' />" type="image/x-icon">
<script src="<c:url value='/static/material/js/jquery-1.12.4.js' />" type="text/javascript"></script>
<script src="<c:url value='/static/material/js/bootstrap.min.js' />" type="text/javascript"></script>
</head>

<body>
<%@include file="../../authheader.jsp"%>
<section class="content">
	<div class="container-fluid">
		<form:form method="POST" modelAttribute="entity" class="form-horizontal">
			<%
				/* ******************************************************************************** *
				********************* COMIENZO DE LOS CAMPOS DE LA ENTIDAD ********************* *
					  ******************************************************************************** */
			%>
			
			<form:input type="hidden" path="idContacto" id="id" />
			
			<div class="row clearfix">
				<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header bg-blue">
							<h2>ORGANIZACION</h2>
						</div>
						<div class="body">
							<div class="row clearfix">
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
									<label for="razonSocial">Razon Social</label>
								</div>
								<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" path="razonSocial" id="razonSocial"
											class="form-control" />
											<div class="has-error">
												<form:errors path="razonSocial" class="help-inline" />
											</div>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
									<label for="cuit">CUIT</label>
								</div>
								<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" path="cuit" id="cuit"
											class="form-control" />
											<div class="has-error">
												<form:errors path="cuit" class="help-inline" />
											</div>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
									<label for="telefono">Telefono</label>
								</div>
								<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" path="telefono" id="telefono"
											class="form-control" />
											<div class="has-error">
												<form:errors path="telefono" class="help-inline" />
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
									<label for="email">Email</label>
								</div>
								<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
									<div class="form-group">
										<div class="form-line">
											<form:input type="text" path="email" id="email"
											class="form-control" />
											<div class="has-error">
												<form:errors path="email" class="help-inline" />
											</div>
										</div>
									</div>
								</div>
								
							
					
							</div>
							<%
								/* ******************************************************************************** *
									  ********************** FIN DE LOS CAMPOS DEL FORMULATION *********************** *
									  ******************************************************************************** */
							%>							
						             <div class="row clearfix">						                 
						                 <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 m-b-20">
						                     <c:choose>
												 <c:when test="${edit}">
													<input type="submit" value="ACTUALIZAR"
														class="btn btn-block btn-lg btn-primary waves-effect" id="btnSubmit" />
												</c:when>
												<c:otherwise>
												<input type="submit" value="GUARDAR"
													class="btn btn-block btn-lg btn-primary waves-effect" id="btnSubmit" />
											</c:otherwise>
										</c:choose>
						                 </div>
						                 <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 m-b-20">
						                    <a class="btn btn-block btn-lg btn-default waves-effect"
													href="<c:url value='list' />">VOLVER</a>
						                 </div>			             
									</div>
								
							
						</div>
					</div>
				</div>
			</div>
		</form:form>
	</div>
	</section>
</body>
</html>