<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Resultados Busqueda</title>
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" media="screen" href="css/layout.css" />
		<link rel="stylesheet" media="screen" href="css/typography.css" />
		<link rel="stylesheet" media="screen" href="css/general.css" />
		<link rel="stylesheet" media="screen" href="css/home.css" />
		<link rel="Shortcut Icon" href="images/favicon.ico" />		
		<link rel="stylesheet" href="cssVal/validationEngine.jquery.css"	type="text/css" />
		<link rel="stylesheet" href="cssVal/template.css" type="text/css" />
		
		<script type="text/javascript" src="funcionesBusqueda.js"></script>		
		<script src="js/jquery-1.7.2.min.js" type="text/javascript">	</script>
		<script src="js/languages/jquery.validationEngine-en.js"	type="text/javascript" charset="utf-8">	</script>
		<script src="js/jquery.validationEngine.js" type="text/javascript" charset="utf-8">	</script>
		<script>
			jQuery(document).ready(function() {
				// binds form submission and fields to the validation engine
				jQuery("#formBusqueda").validationEngine();
			});
		</script>
	</head>
	<body >
		<div id = "header">
		   <div class = "container">
		        <a href = "index.jsp" id = "logo"></a>
		        <ul id = "main-menu">
		           <li><a href = "index.jsp">Inicio</a></li> 
		           <shiro:authenticated>
		           		<shiro:hasRole name="administrador">					
						    <li class = "active"><a href="busqueda.jsp">Buscar</a></li>
						</shiro:hasRole>
		           		<li><a href = "LogoutUser">Salir</a></li>
		           </shiro:authenticated>                       
		        </ul>
			</div>     
		</div>
		<div id="main">
			<div id="wrapper">
				<div class="container">
					<div >
						<div >
							<h1>Resultado de la Busqueda</h1>
							<div >
								<table id="accounts2" class='display'>
	                                <thead>
	                                    <tr class='odd gradeX'>
	                                        <th>Nombre</th>
	                                        <th>Apellido Paterno</th>
	                                        <th>Apellido Materno</th>
	                                    </tr>
	                                </thead>
	                                <tbody>
	                                    <c:forEach var="dato" items="${aspirantes}">
	                                        <tr class='odd gradeU'>
	                                            <c:forEach var="dato2" items="${dato.value}">
	                                                <td>${dato2}</td>
	                                            </c:forEach>
	                                        </tr>
	                                    </c:forEach>
	                                </tbody>
	                            </table>
	                            <p><a href="busqueda.jsp">Otra busqueda.</a></p>
							</div>
						</div>	
					</div>
				</div>
			</div>
		</div>
	<div id = "footer">
		<div class = "container">                
	        <div style="color: black;">
				Company Website &copy; 2012 All Rights Reserved.
			</div>
	    </div>	
	</div>
	</body>
</html>
