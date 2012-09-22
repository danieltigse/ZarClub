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
    <title>Crear Cuenta 2 - 8</title>
    <meta name = "description" content = "" />
    <meta name = "keywords" content = "" />
    <link rel = "stylesheet" media = "screen" href = "css/layout.css" />
    <link rel = "stylesheet" media = "screen" href = "css/typography.css" />
    <link rel = "stylesheet" media = "screen" href = "css/general.css" />
    <link rel = "stylesheet" media = "screen" href = "css/home.css" />
    <link rel = "Shortcut Icon" href = "images/favicon.ico" />
    
    <link rel="stylesheet" href="cssVal/validationEngine.jquery.css" type="text/css" />
	<link rel="stylesheet" href="cssVal/template.css" type="text/css" />
	<script src="js/jquery-1.7.2.min.js" type="text/javascript">	</script>
	<script src="js/languages/jquery.validationEngine-es.js" type="text/javascript" charset="utf-8"> </script>
	<script src="js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"> </script>
	<script>
		jQuery(document).ready(function() {
			// binds form submission and fields to the validation engine
			jQuery("#form2").validationEngine();
		});
		
		fields = 0;
		function addInput() {
			if (fields <= 1) {
				fields += 1;
				document.getElementById('celulares').innerHTML += "<input class='validate[custom[onlyNumberSp]] text-input' type='text' name='celular"+fields+"' maxlength='15'/>";
			}
			if (fields == 2) {
				document.getElementById('celulares').innerHTML += "<br />Maximo 3 telefonos celulares.";
				fields += 1;
			}
		}
	</script>
</head>
<body onload="llenarComboEC();">
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
                    <h1>Datos Personales</h1>
                    <div>	
		
				<form style="width: 400px;" id="form2" action="GuardarUsuario" class="formular" method="post">
				<fieldset>
					<label>
						<span>Foto:</span>
						<input type="file" name="foto" id="file" title="Escoja su Foto">
					</label>
					<label>
						<span>Primer Nombre*:</span>
						<input class="validate[required] text-input" type="text" name="nombre1" maxlength="25"/>
					</label>
					<label>
						<span>Segundo Nombre:</span>
						<input class="text-input" type="text" name="nombre2" maxlength="25"/>
					</label>
					<label>
						<span>Apellido Paterno*:</span>
						<input class="validate[required] text-input" type="text" name="apellido1" maxlength="25"/>
					</label>
					<label>
						<span>Apellido Materno:</span>
						<input class="text-input" type="text" name="apellido2" maxlength="25"/>
					</label>
					Sexo*:
					<div>
						<span>Masculino:</span>
						<input class="validate[required] radio" type="radio" name="sexo" id="radio1" value="M"/>
						<span>Femenino:</span>
						<input class="validate[required] radio" type="radio" name="sexo" id="radio2" value="F"/><br /> <br />
					</div>
					<label>
						<span>Estado Civil*:</span>
						<select id="estados" name="ecivil" class="validate[required] text-input">
							<option value>Escoja su Estado Civil</option>
						</select>
				    </label>
				    <label>
						<span>C&eacutedula de identidad*:</span>
						<input class="validate[required,custom[onlyNumberSp]] text-input" text-input" type="text" name="cedula" maxlength="10"/>
					</label>
					<label>
						<span>Correo Electr&oacutenico*:</span>
						<input class="validate[required,custon[email]] text-input" type="text" name="email" maxlength="80" value="${email}"/>
					</label>
					Fecha de nacimiento*:
					<label>
						<span>D&iacutea:</span>
						<input id="anio_2" class="validate[required] mes" readonly="readonly" type="text" name="dia"/>
						<span>Mes:</span>
						<input id="anio_1" class="validate[required] mes" readonly="readonly" type="text" name="mes"/>
						<span>A&ntildeo:</span>
						<input id="anio" class="validate[required] antildeo"  readonly="readonly" type="text" name="ano"/>
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
					<label>
						<span>Nacionalidad*:</span>
						<input class="validate[required,custom[onlyLetterSp]] text-input" type="text" name="nacionalidad" maxlength="25"/>
					</label>
					<label>
						<span>Ciudad de residencia*:</span>
						<select id="ciudades" name="cresidencia" class="validate[required] text-input">
							<option value>Escoja su Ciudad de Residencia</option>
					    </select>
				    </label>
				    <label>
						<span>Direcci&oacuten domiciliaria:</span>
						<input class="text-input" type="text" name="domicilio" maxlength="150"/>
					</label>
					&iquestDiscapacidad?:					
					<div>
						<span>Si:</span>
						<input class="radio" type="radio" name="discapacidad" value="Y" id="si"/>
						<span>No:</span>
						<input class="radio" type="radio" name="discapacidad" value="N"/><br /> <br />
					</div>
					<label>
						<span>Tipo de discapacidad:</span>
						<select id="discapacidades" name="tipodiscapacidad" class="text-input">
							<option value>Escoja su Tipo de Discapacidad</option>
				    	</select>
				    </label>
				    <label>
						<span>Tel&eacutefono fijo:</span>
						<input class="validate[custom[onlyNumberSp]] text-input" type="text" name="telefono" maxlength="15"/>
					</label>
					<label>
						<span>Tel&eacutefono celular:</span>
						<input class="validate[custom[onlyNumberSp]] text-input" type="text" name="celular" maxlength="15"/>
						</label>
					<div id="celulares"></div>
					<input type="button" onclick="addInput()" name="add" value="+Celular" />
					<label>
						<span>Operadora:</span>
						<select id="operadoras" name="operadora" class="text-input">
							<option value>Escoja la Operadora de su M&oacutevil</option>
						</select>
				    </label>
				    &iquestMovilizaci&oacuten propia?:
				    <div>
						<span>Si:</span>
						<input class="radio" type="radio" name="movilizacion" value="Y"/>
						<span>No:</span>
						<input class="radio" type="radio" name="movilizacion" value="N"/><br /> <br />
					</div>
					&iquestLicencia?:					
					<div>
						<span>Si:</span>
						<input class="radio" type="radio" name="licencia" value="Y" id="si1"/>
						<span>No:</span>
						<input class="radio" type="radio" name="licencia" value="N"/><br /> <br />
					</div>
					<label>
						<span>Tipo de Licencia:</span>
						<select id="licencias" name="tlicencia" class="text-input">
							<option>Escoja su tipo de Licencia</option>
				    	</select>
				    </label>
				    <label>
						<span>Salario Actual:</span>
						<input class="validate[custom[number]] text-input" type="text" name="salario" maxlength="8"/>
					</label>
					<label>
						<span>Aspiraci&oacuten Salarial**:</span>
						<input class="validate[custom[number]] text-input" type="text" name="aspiracion" maxlength="8"/>
					</label>
					<input class="submit" type="submit" title="Continuar" value="Continuar"/>
					<p>* Campos Obligatrios.</p>
					<p>** D&oacutelares al mes a tiempo completo.</p>
					<p>Paso 2 de 8.</p>
					<input type="hidden" name="tipo" value="form2"/>
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
