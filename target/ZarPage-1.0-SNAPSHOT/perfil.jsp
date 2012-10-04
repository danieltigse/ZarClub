<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="org.apache.shiro.SecurityUtils"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Mi perfil</title>
    <meta name = "description" content = "" />
    <meta name = "keywords" content = "" />
    <link rel = "stylesheet" media = "screen" href = "css/layout.css" />
    <link rel = "stylesheet" media = "screen" href = "css/typography.css" />
    <link rel = "stylesheet" media = "screen" href = "css/general.css" />
    <link rel = "stylesheet" media = "screen" href = "css/home.css" />
    <link rel = "Shortcut Icon" href = "images/favicon.ico" />
    <link rel="stylesheet" href="cssVal/validationEngine.jquery.css" type="text/css"/>
	<link rel="stylesheet" href="cssVal/template.css" type="text/css"/>
	<script src="js/jquery-1.7.2.min.js" type="text/javascript">	</script>
	<script src="js/languages/jquery.validationEngine-es.js" type="text/javascript" charset="utf-8">	</script>
	<script src="js/jquery.validationEngine.js" type="text/javascript" charset="utf-8">	</script>
	
</head>
<body>
<div id = "header">
   <div class = "container">
        <a href = "index.htm" id = "logo"></a>
        <ul id = "main-menu">
            <li><a href = "index.jsp">Inicio</a></li>
            <shiro:authenticated>
            	<li class = "active"><a href = "VerPerfil">Mi Perfil</a></li> 
            	<li><a href = "LogoutUser">Salir</a></li>
            </shiro:authenticated>                       
        </ul>
	</div>     
</div>

<div id = "main">
	<div id = "wrapper">
    	<div class  = "container">
        	<div >
            	 <div >
                    <h1>Mi perfil</h1>
                    <div >		
						<shiro:authenticated>					
							<h2>Datos Personales</h2>
							<c:forEach var="mapa" items="${datosP}">
						      <p>${mapa.key}:<a>${mapa.value}</a></p>
						  	</c:forEach>
						  	<h2>Informacion Academica</h2>
							<c:forEach var="mapa" items="${informacionA}">
						      <p>${mapa.key}:<a>${mapa.value}</a></p>
						  	</c:forEach>
						  	<h2>Experiencia Laboral</h2>
							<c:forEach var="mapa" items="${experiencia}">
						      <p>${mapa.key}:<a>${mapa.value}</a></p>
						  	</c:forEach>								
						  	<h2>Idioma</h2>
							<c:forEach var="mapa" items="${idioma}">
						      <p>${mapa.key}:<a>${mapa.value}</a></p>
						  	</c:forEach>				
						  	<h2>Conocimiento de Informatica</h2>
							<c:forEach var="mapa" items="${informatica}">
						      <p>${mapa.key}:<a>${mapa.value}</a></p>
						  	</c:forEach>
						  	<h2>Otros conocimientos</h2>
							<c:forEach var="mapa" items="${conocimiento}">
						      <p>${mapa.key}:<a>${mapa.value}</a></p>
						  	</c:forEach>
						  	<h2>Referencia</h2>
							<c:forEach var="mapa" items="${referencia}">
						      <p>${mapa.key}:<a>${mapa.value}</a></p>
						  	</c:forEach>
						</shiro:authenticated>
                    </div>
                </div>
                
                
            </div>
        </div>
    </div>
</div>
<div id = "footer">
	<div class = "container">
        <div style="color: black;">
			Company Website &copy; 2012 All Rights Reserved. Powered By CatAnnie.
		</div>
    </div>	
</div>

</body>
</html>