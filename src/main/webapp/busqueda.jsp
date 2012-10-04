<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>B&uacutesqueda</title>
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
	<body onload="llenarComboECB();">
		<div id = "header">
		   <div class = "container">
		        <a href = "index.jsp" id = "logo"></a>
		        <ul id = "main-menu">
		           <li><a href = "index.jsp">Inicio</a></li> 
		           <li class = "active"><a href="busqueda.jsp">Buscar</a></li>
		           <li><a href="VerTodos">Todos</a></li>
		           <shiro:authenticated>
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
							<h1>B&uacutesqueda</h1>
							<div >
								<form id="formBusqueda" action="Busqueda" class="formular" method="post">
									<fieldset>
										<legend>Criterios de b&uacutesqueda</legend>
										Sexo:
										<label>
											<span>Masculino:</span>
											<input class="radio" type="radio" name="sexo" id="radio1" value="M"/><br />
											<span>Femenino:</span>
											<input class="radio" type="radio" name="sexo" id="radio2" value="F"/> <br />
											<span>Indistinto:</span>
											<input class="radio" type="radio" name="sexo" value="NG" checked="checked"/>
										</label>										
										<label>
											<span>Estado Civil:</span>
											<select id="estados" name="ecivil">
												<option>Indistinto</option>
											</select>
									    </label>
									    <label>
											<span>Ciudad de residencia:</span>
											<select id="ciudades" name="cresidencia">
										    	<option>Indistinto</option>
										    </select>
									    </label>
									    <label>
											<span>Discapacidad?:</span><br />
											<span>Si:</span>
											<input class="radio" type="radio" name="discapacidad" value="Y"/> <br />
											<span>No:</span>
											<input class="radio" type="radio" name="discapacidad" value="N"/> <br />
											<span>Indistinto:</span>
											<input class="radio" type="radio" name="discapacidad" value="NG" checked="checked"/>
										</label>
										<label>
											<span>Tipo de discapacidad:</span>
											<select id="discapacidades" name="tipodiscapacidad">
												<option>Indistinto</option>
									    	</select>
									    </label>
									    <label>
											<span>Licencia?:</span><br />
											<span>Si:</span>
											<input class="radio" type="radio" name="licencia" value="Y"/> <br />
											<span>No:</span>
											<input class="radio" type="radio" name="licencia" value="N"/> <br />
											<span>Indistinto:</span>
											<input class="radio" type="radio" name="licencia" value="NG" checked="checked"/>
										</label>
										<label>
											<span>Tipo de Licencia:</span>
											<select id="licencias" name="tlicencia">
												<option>Indistinto</option>
									    	</select>
									    </label>
									    <label>
											<span>Instituci&oacuten Educativa:</span>
											<select id="instituciones" name="institucion">
									    		<option>Indistinto</option>
									    	</select>
									    </label>
									    <label>
											<span>Nivel de estudio:</span>
											<select id="niveles" name="nivel" >
												<option>Indistinto</option>
									    	</select>
									    </label>
									    <label>
											<span>Estado:</span>
											<select id="estadosedu" name="estado">
												<option>Indistinto</option>
									    	</select>
									    </label>
									    <label>
											<span>&Aacuterea de experiencia:</span>
											<select id="areas" name="area">
												<option>Indistinto</option>
									    	</select>
									    </label>
									    <label>
											<span>Sector de experiencia:</span>
											<select id="sectores" name="sector">
												<option>Indistinto</option>
									    	</select>
									    </label>
									    <label>
											<span>Idioma:</span>
											<select id="idiomas" name="idioma">  
												<option>Indistinto</option>
									    	</select>
									    </label>
									    <label>
											<span>Conocimiento informatico:</span>
											<select id="conocimientos" name="conocimiento">
												<option>Indistinto</option>
									    	</select>
									    </label>
									    
										<input class="submit" type="submit" name="submit" title="Buscar" value="Buscar" />										
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
