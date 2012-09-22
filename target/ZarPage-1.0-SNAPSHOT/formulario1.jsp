<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Crear Cuenta 1 - 8</title>
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" media="screen" href="css/layout.css" />
		<link rel="stylesheet" media="screen" href="css/typography.css" />
		<link rel="stylesheet" media="screen" href="css/general.css" />
		<link rel="stylesheet" media="screen" href="css/home.css" />
		<link rel="Shortcut Icon" href="images/favicon.ico" />
		
		<link rel="stylesheet" href="cssVal/validationEngine.jquery.css" type="text/css" />
		<link rel="stylesheet" href="cssVal/template.css" type="text/css" />
		<script src="js/jquery-1.7.2.min.js" type="text/javascript"></script>
		<script src="js/languages/jquery.validationEngine-es.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
		<script>
			jQuery(document).ready(function() {
				// binds form submission and fields to the validation engine
				jQuery("#form1").validationEngine();
			});
		</script>
	</head>
	<body>
		<div id = "header">
		   <div class = "container">
		        <a href = "index.jsp" id = "logo"></a>
		        <ul id = "main-menu">
		           <li><a href = "index.jsp">Inicio</a></li>
		        </ul>
			</div>     
		</div>
		<div id="main">
			<div id="wrapper">
				<div class="container">
					<div >
						<div >
							<h1>Datos de Cuenta</h1>
							<div >
								<p style="color:red">${msj}</p>
								<form id="form1" action="GuardarUsuario" class="formular" method="post">
									<fieldset>
										<label> 
											<span>Correo Electr&oacutenico*:</span>
											<input class="validate[required,custom[email]] text-input" type="text" name="email" maxlength="80" />
										</label> 
										<label> 
											<span>Contrase&ntildea*:</span>
											<input id="password" class="validate[required,minSize[5]] text-input" type="password" name="pass" maxlength="30" />
										</label>
										<label>
											<span>Confirmar Contrase&ntildea*:</span>
											<input class="validate[required,equals[password],minSize[5]] text-input" type="password" name="conpass" maxlength="30"/>
										</label> 
										<input class="submit" type="submit" name="submit" title="Continuar" value="Continuar" />
										<p>* Campos Obligatrios.</p>
										<p>Paso 1 de 8.</p>  
										<input type="hidden" name="tipo" value="form1" />
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
