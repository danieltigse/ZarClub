<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page import="org.apache.shiro.SecurityUtils"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Lo sentimos</title>
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
	<script>
		jQuery(document).ready(function(){
			// binds form submission and fields to the validation engine
			jQuery("#formLogin").validationEngine();
		});
	</script>
</head>
<body>
<div id = "header">
   <div class = "container">
        <a href = "index.jsp" id = "logo"></a>
        <ul id = "main-menu">
            <li class = "active"><a href = "index.jsp">Inicio</a></li>
            <shiro:guest>
            	<li><a href = "formulario1.jsp">&iquestNuevo?</a></li>  
            </shiro:guest>
            <shiro:authenticated>
            	<shiro:hasRole name="usuario">	
            		<li><a href = "VerPerfil">Mi Perfil</a></li> 
            	</shiro:hasRole>            	
            	<shiro:hasRole name="administrador">					
				    <li><a href="busqueda.jsp">Buscar</a></li>
				    <li><a href="VerTodos">Todos</a></li>
				</shiro:hasRole>
            	<li><a href = "LogoutUser">Salir</a></li> 
            </shiro:authenticated>                       
        </ul>
	</div>     
</div>

<div id = "main">
	<div id = "wrapper">
    	<div class  = "container">
        	<div >
            	 <div>                    
                    <div >		
						<h1>Lo sentimos, ha ocurrido un error interno.</h1>
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
