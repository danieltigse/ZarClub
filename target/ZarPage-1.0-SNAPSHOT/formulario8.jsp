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
    <title>Crear Cuenta 8 - 8</title>
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
			jQuery("#form8").validationEngine();
		});
	</script>
</head>
<body onload="llenarComboRELA();">
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
                    <h1>Referencias Personales</h1>
                    <div >			
						<form id="form8" class="formular" action="GuardarUsuario" method="post">
							<fieldset>
								<label>
									<span>Nombre*:</span>
									<input type="text" name="nombre" class="validate[required,custom[onlyLetterSp]] text-input" maxlength="50"/>
								</label>
								<label>
									<span>Relaci&oacuten*:</span>
									<select id="relaciones" name="relacion" class="validate[required] text-input">
										<option value>Escoja la Relaci&oacuten Personal</option>
									</select>
								</label>
								<label>
									<span>Empresa*:</span>
									<input type="text" name="empresa" class="validate[required] text-input" maxlength="30"/>
								</label>
								<label>
									<span>Cargo*:</span>
									<input type="text" name="cargo" class="validate[required] text-input" maxlength="30"/>
								</label>
								<label>
									<span>Tel&eacutefono fijo:</span>
									<input type="text" name="telefono" class="validate[custom[onlyNumberSp]] text-input" maxlength="15"/>
								</label>
								<label>
									<span>Tel&eacutefono Celular:</span>
									<input type="text" name="celular" class="validate[custom[onlyNumberSp]] text-input" maxlength="15"/>
								</label>
								<label>
									<span>Comentario:</span>
									<textarea rows="2" cols="20" name="comentario" ></textarea>
								</label>
								<input class="submit" type="submit" title="Continuar" value="Continuar"/>
								<p>* Campos Obligatrios.</p>
								<p>Paso 8 de 8.</p>
								<input type="hidden" name="tipo" value="form8"/>		
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
