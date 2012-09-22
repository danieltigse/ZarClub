<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <script type="text/javascript" src="calendar.js"></script>
    <script type="text/javascript" src="funciones.js"></script>			
    <link rel="stylesheet" href="calendario.css" type="text/css" media="screen" />
    <title>Crear Cuenta 5 - 8</title>
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
			jQuery("#form5").validationEngine();
		});
	</script>
</head>
<body onload="llenarComboIDIOM();">
<div id = "header">
   <div class = "container">
        <a href = "index.jsp" id = "logo"></a>
        <ul id = "main-menu">
           <li><a href = "index.jsp">Inicio</a></li> 
        </ul>
	</div>     
</div>
<div id = "main">
	<div id = "wrapper">
    	<div class  = "container">
        	<div >
            	 <div >
                    <h1>Idiomas Conocidos</h1>
                    <div >	
		
				<form id="form5" class="formular" action="GuardarUsuario" method="post">
				<fieldset>
					<label>
						<span>Idioma*:</span>
						<select id="idiomas" name="idioma" class="validate[required] text-input">
							<option value>Escoja un Idioma.</option>
				    	</select>
				    </label>
				    Escrito*:
				    <div>
						<span>B&aacutesico:</span>
						<input class="validate[required] radio" type="radio" name="escrito" value="basico"/>
						<span>Intermedio:</span>
						<input class="validate[required] radio" type="radio" name="escrito" value="intermedio"/> <br />
						<span>Avanzado:</span>
						<input class="validate[required] radio" type="radio" name="escrito" value="avanzado"/>
						<span>Nativo:</span>
						<input class="validate[required] radio" type="radio" name="escrito" value="nativo"/> <br /> <br />
					</div>
					Oral*:
					<div>
						<span>B&aacutesico:</span>
						<input class="validate[required] radio" type="radio" name="oral" value="basico"/>
						<span>Intermedio:</span>
						<input class="validate[required] radio" type="radio" name="oral" value="intermedio"/> <br />
						<span>Avanzado:</span>
						<input class="validate[required] radio" type="radio" name="oral" value="avanzado"/>
						<span>Nativo:</span>
						<input class="validate[required] radio" type="radio" name="oral" value="nativo"/> <br /> <br />
					</div>
					Lectura*:
					<div>
						<span>B&aacutesico:</span>
						<input class="validate[required] radio" type="radio" name="lectura" value="basico"/>
						<span>Intermedio:</span>
						<input class="validate[required] radio" type="radio" name="lectura" value="intermedio"/> <br />
						<span>Avanzado:</span>
						<input class="validate[required] radio" type="radio" name="lectura" value="avanzado"/>
						<span>Nativo:</span>
						<input class="validate[required] radio" type="radio" name="lectura" value="nativo"/> <br /> <br />
					</div>
					<input class="submit" type="submit" title="Continuar" value="Continuar"/>
					<p>* Campos Obligatrios.</p>
					<p>Paso 5 de 8.</p>
					<input type="hidden" name="tipo" value="form5"/>
					</fieldset>
				</form>
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
