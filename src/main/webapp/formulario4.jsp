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
    <title>Crear Cuenta 4 - 8</title>
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
			jQuery("#form4").validationEngine();
		});
	</script>
</head>
<body onload="llenarComboAREA();">
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
                    <h1>Experiencia Laboral</h1>
                    <div >	
		
				<form style="width: 400px;" id="form4" class="formular" action="GuardarUsuario" method="post">
				<fieldset>
					<label>
						<span>Empresa*:</span>
						<input class="validate[required] text-input" type="text" name="empresa" maxlength="30"/>
					</label>
					<label>
						<span>&Aacuterea*:</span>
						<select id="areas" name="area" class="validate[required] text-input">
							<option value>Escoja el &aacuterea en el que se desempe&ntildee</option>
				    	</select>
				    </label>
				    <label>
						<span>Cargo*:</span>
						<input class="validate[required] text-input" type="text" name="cargo" maxlength="30"/>
					</label>
					Fecha de inicio*:
				    <label>
						<span>D&iacutea:</span>
						<input id="anio_2" class="validate[required] mes" readonly="readonly" type="text" name="dia"/>
						<span>Mes:</span>
						<input id="anio_1" class="validate[required] mes" readonly="readonly" type="text" name="mes"/>
						<span>A&ntildeo:</span>
						<input id="anio" class="validate[required] antildeo" readonly="readonly" type="text" name="ano"/> 
						<span id="calendar">
				    		<img id="calendario" class="datepicker" src="calendar.gif" alt="Pick a date."/>
						</span>
						<script type="text/javascript">
						Calendar.setup({
						    inputField	 : "anio",
						    baseField    : "anio",
						    displayArea  : "calendar",
						    button		 : "calendario",
						    ifFormat	 : "%B %e, %Y",
						    onSelect	 : selectDate
						});
					    </script>
					</label>
					Fecha de salida:
					<label>
						<span>D&iacutea:</span>
						<input id="anioo_2" class="mes" readonly="readonly" type="text" name="dia1"/>
						<span>Mes:</span>
						<input id="anioo_1" class="mes" readonly="readonly" type="text" name="mes1"/>
						<span>A&ntildeo:</span>
						<input id="anioo" class="antildeo" readonly="readonly" type="text" name="ano1"/> 
						<span id="calendarr">
				    		<img id="calendarioo" class="datepicker" src="calendar.gif" alt="Pick a date."/>
						</span>
						<script type="text/javascript">
						Calendar.setup({
						    inputField	 : "anioo",
						    baseField    : "anioo",
						    button		 : "calendarioo",
						    displayArea  : "calendarr",
						    ifFormat	 : "%B %e, %Y",
						    onSelect	 : selectDate
						});
					    </script>
					</label>
					<label>
						<span>Sector:</span>
						<select id="sectores" name="sector" class="text-input">
							<option value>Escoja el sector en el que se desempe&ntildee</option>
				    	</select>
				    </label>
				    <label>
						<span>Descripci&oacuten de funciones:</span>
						<textarea rows="2" cols="20" name="descripcion"></textarea>
					</label>
					<label>
						<span>Logros alcanzados:</span>
						<textarea rows="2" cols="20" name="logros" ></textarea>
					</label>
					<input class="submit" type="submit" title="Continuar" value="Continuar"/>
					<p>* Campos Obligatrios.</p>
					<p>Paso 4 de 8.</p>
					<input type="hidden" name="tipo" value="form4"/>
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
