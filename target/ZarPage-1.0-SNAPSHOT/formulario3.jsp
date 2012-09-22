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
    <title>Crear Cuenta 3 - 8</title>
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
			jQuery("#form3").validationEngine();
		});
	</script>
</head>
<body onload="llenarComboINST();">
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
                    <h1>Informaci&oacuten acad&eacutemica</h1>
                    <div >	
				<form style="width: 400px;" id="form3" class="formular" action="GuardarUsuario" method="post" >
				<fieldset>
					<label>
						<span>T&iacutetulo obtenido*:</span>
						<input class="validate[required,custom[onlyLetterSp]] text-input" type="text" name="titulo" maxlength="50"/>
					</label>
					<label>
						<span>Pa&iacutes:</span>
						<input class="text-input" type="text" name="pais" maxlength="25"/>
					</label>
					<label>
						<span>Instituci&oacuten*:</span>
						<select id="instituciones" name="institucion" class="validate[required] text-input">
							<option value>Escoja su Instituci&oacuten Educativa</option>
				    	</select>
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
					Fecha de finalizaci&oacuten:
					<label>
						<span>D&iacutea:</span>
						<input class="mes" id="anioo_2" readonly="readonly" type="text" name="dia1"/>
						<span>Mes:</span>
						<input class="mes" id="anioo_1" readonly="readonly" type="text" name="mes1"/>
						<span>A&ntildeo:</span>
						<input class="antildeo" id="anioo" readonly="readonly" type="text" name="ano1"/> 
						<span id="calendarr">
				    		<img id="calendarioo" class="datepicker" src="calendar.gif" alt="Pick a date."/>
						</span>
						<script type="text/javascript">
						Calendar.setup({
						    inputField	 : "anioo",
						    baseField    : "anioo",
						    displayArea  : "calendarr",
						    button		 : "calendarioo",
						    ifFormat	 : "%B %e, %Y",
						    onSelect	 : selectDate
						});
					    </script>
					</label>
					<label>
						<span>Nivel de estudio*:</span>
						<select id="niveles" name="nivel" class="validate[required] text-input">
							<option value>Escoja su Nivel de Estudio</option>
				    	</select>
				    </label>
				    <label>
						<span>Estado*:</span>
						<select id="estados" name="estado" class="validate[required] text-input">
							<option value>Escoja el Estado de su T&iacutetulo</option>
				    	</select>
				    </label>
				    <label>
						<span>Promedio:</span>
						<input class="text-input" type="text" name="promedio" maxlength="7"/>
					</label>
					<label>
						<span>Rango del promedio:</span>
						<select name="rango" class="text-input">
							<option value>Escoja el Rango de su Promedio</option>
							<option>A-F</option>
							<option>1-7</option>
							<option>1-10</option>
							<option>1-20</option>
							<option>1-5</option>
							<option>1-100</option>
					    </select>
				    </label>
				    <label>
						<span>N&uacutemero de Materias aprobadas:</span>
						<input class="validate[custom[number]] text-input" type="text" name="materias" maxlength="3"/>
					</label>
					<label>
						<span>Cantidad de materias:</span>
						<input class="validate[custom[number]] text-input" type="text" name="cantidad" maxlength="3"/>
					</label>
					<label>
						<span>Observaci&oacuten/Logros:</span>
						<textarea name="logro" rows="2" cols="20"></textarea>
					</label>
					<input class="submit" type="submit" title="Continuar" value="Continuar"/>
					<p>* Campos Obligatrios.</p>
					<p>Paso 3 de 8.</p>
					<input type="hidden" name="tipo" value="form3"/>
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
