<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Busqueda</title>
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" media="screen" href="css/layout.css" />
		<link rel="stylesheet" media="screen" href="css/typography.css" />
		<link rel="stylesheet" media="screen" href="css/general.css" />
		<link rel="stylesheet" media="screen" href="css/home.css" />
		<link rel="Shortcut Icon" href="images/favicon.ico" />
		
		<link rel="stylesheet" href="cssVal/validationEngine.jquery.css"
			type="text/css" />
		<link rel="stylesheet" href="cssVal/template.css" type="text/css" />
		<script src="js/jquery-1.7.2.min.js" type="text/javascript">
			
		</script>
		<script src="js/languages/jquery.validationEngine-en.js"
			type="text/javascript" charset="utf-8">
			
		</script>
		<script src="js/jquery.validationEngine.js" type="text/javascript"
			charset="utf-8">
			
		</script>
		<script>
			jQuery(document).ready(function() {
				// binds form submission and fields to the validation engine
				jQuery("#formBusqueda").validationEngine();
			});
		</script>
	</head>
	<body>
		<div id = "header">
		   <div class = "container">
		        <a href = "index.jsp" id = "logo"></a>
		        <ul id = "main-menu">
		           <li><a href = "index.jsp">Inicio</a></li> 
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
							<h1>Busqueda</h1>
							<div >
								<form id="formBusqueda" action="Busqueda" class="formular" method="post">
									<fieldset>
										<legend>Criterios de busqueda</legend>
										<label>
											<span>Sexo:</span><br />
											<span>Masculino:</span>
											<input class="validate[required] radio" type="radio" name="sexo" id="radio1" value="M"/>
											<span>Femenino:</span>
											<input class="validate[required] radio" type="radio" name="sexo" id="radio2" value="F"/>
										</label> 
										<label>
											<span>Estado Civil:</span>
											<select id="estados" name="ecivil" class="validate[required]">
											</select>
									    </label>
									    <label>
											<span>Discapacidad?:</span><br />
											<span>Si:</span>
											<input type="radio" name="discapacidad" class="validate[required] radio" value="Y"/>
											<span>No:</span>
											<input type="radio" name="discapacidad" class="validate[groupRequired[discapacidad]] radio" checked="checked" value="N"/>
										</label>
										<label>
											<span>Tipo de discapacidad:</span>
											<select id="discapacidades" class="validate[groupRequired[discapacidad]] text-input"  name="tipodiscapacidad">
												<option>Ninguna</option>
									    	</select>
									    </label>
									    <label>
											<span>Licencia?:</span><br />
											<span>Si:</span>
											<input type="radio" name="licencia" class="validate[required] radio" value="Y"/>
											<span>No:</span>
											<input type="radio" name="licencia" value="N" class="validate[groupRequired[licencia]] radio" checked="checked"/>
										</label>
										<label>
											<span>Tipo de Licencia:</span>
											<select id="licencias" name="tlicencia" class="validate[groupRequired[licencia]] text-input">
												<option>No tengo</option>
									    	</select>
									    </label>
									    <label>
											<span>Instituci&oacuten Educativa:</span>
											<select id="instituciones" name="institucion" class="validate[required]">
									    	</select>
									    </label>
									    <label>
											<span>&Aacuterea de experiencia:</span>
											<select id="areas" name="area" class="validate[required]">
									    	</select>
									    </label>
									    <label>
											<span>Sector de experiencia:</span>
											<select id="sectores" name="sector">
									    	</select>
									    </label>
									    <label>
											<span>Idioma:</span>
											<select id="idiomas" name="idioma">  
									    	</select>
									    </label>
									    <label>
											<span>Conocimiento informatico:</span>
											<select id="conocimientos" name="conocimiento" class="validate[required]">
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
				Company Website &copy; 2012 All Rights Reserved.
			</div>
	    </div>	
	</div>
	</body>
</html>
