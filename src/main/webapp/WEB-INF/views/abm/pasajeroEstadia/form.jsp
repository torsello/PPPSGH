<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Asignar Habitacion/Pasajero a Estadia</title>
<link rel="icon" href="<c:url value='/static/material/images/favicon.ico?' />" type="image/x-icon"> 
<script src="<c:url value='/static/material/js/jquery-1.12.4.js' />" type="text/javascript"></script>
<script src="<c:url value='/static/material/js/bootstrap.min.js' />" type="text/javascript"></script>
	    
<script type="text/javascript">
     $(document).ready(function(){
    	 var dato = <%= request.getParameter("idEstadia") %>;
    	 if(dato != null)
    	 {
    		 $("#estadia").val(<%= request.getParameter("idEstadia") %>).attr('selected', 'selected');
    		 document.getElementById("estadia").setAttribute("readonly", true);

    	 }

    	 $("#Actualizar").attr("href", "<c:url value='list?idEstadia="+dato+"'/>");
    	 $("#Guardar").attr("href", "<c:url value='list?idEstadia="+dato+"'/>");

     });
     
</script>

</head>

<body>
<%@include file="../../authheader.jsp"%>
	<section class="content">
		<form:form method="POST" modelAttribute="entity"
			class="form-horizontal" >
						<%
				/* ******************************************************************************** *
				********************* COMIENZO DE LOS CAMPOS DE LA ENTIDAD ********************* *
					  ******************************************************************************** */
			%>
			
			<form:input type="hidden" path="idPasajeroEstadia" id="id" />
			
			<div class="row clearfix">
				<div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header bg-blue">
							<h2>PASAJERO/HABITACION A ESTADIA</h2>
						</div>
						<div class="body">
							<div class="row clearfix">
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
									<label for=estadia>Estadia</label>
								</div>
								<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
									<div class="form-group">
										<div class="form-line">
											<c:choose>				
						<c:when test="${not empty param.idEstadia}">							

    						<c:forEach items="${estadia}" var="miEstadia">
								<c:if test="${miEstadia.idEstadia == param.idEstadia}">
									<c:out value="${miEstadia.descripcion}"/>
									<form:input type="hidden" path="estadia" value="${miEstadia.idEstadia}" />
								</c:if>
							</c:forEach>
							
						</c:when>    
    					<c:otherwise> 

								<form:select path="estadia" items="${estadia}" id="estadia"
								multiple="false" itemValue="idEstadia"
								itemLabel="descripcion" class="form-control"/>
					
    					</c:otherwise>
    				</c:choose>	
											<div class="has-error">
												<form:errors path="estadia" class="help-inline" />
											</div>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
									<label for=pasajero>Pasajero</label>
								</div>
								<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
									<div class="form-group">
										<div class="form-line">
											<form:select path="pasajero"
											multiple="false" class="form-control" >
											<form:option  value="" />
											<form:options items="${pasajero}" itemValue="idContacto"
											itemLabel="nombreCompleto" />
											</form:select>
											<div class="has-error">
												<form:errors path="pasajero" class="help-inline" />
											</div>
										</div>
									</div>
								</div>
								
								<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
									<label for=habitacion>Habitacion</label>
								</div>
								<div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
									<div class="form-group">
										<div class="form-line">
											<c:choose>				
											<c:when test="${not empty habitacion}">							
											<form:select path="habitacion" items="${habitacion}"
												multiple="false" itemValue="idHabitacion"
												itemLabel="descripcion" class="form-control input-sm" />
										
											</c:when>    
											<c:otherwise>No hay habitaciones disponibles en la fecha indicada.
											</c:otherwise>
										</c:choose>		
											<div class="has-error">
												<form:errors path="habitacion" class="help-inline" />
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
	</section>
</body>
</html>