<!DOCTYPE html>
<html>
<head>
	<title>Acturalizar Registros</title>
	<meta http-equiv="Content-Type" content="text/html"; charset="utf-8"/>
	<!--<link rel="stylesheet" type="text/css" href="registro.css">-->

	<link rel="shortcut icon" type="image/x-icon" href="Documentos/funlam3.ico">

	<script src=jquery-3.2.0.slim.min.js></script>

		<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
 
 	<link rel="stylesheet" type="text/css" href="style.css">
	
</head>
<body>

	<?php

			$Codigo = $_REQUEST['Codigo'];

			$conexion = mysqli_connect("localhost", "root", "" ,"prueba");
		
			$query = "SELECT *  FROM semilleros WHERE Codigo = '$Codigo'";

			$resultado = $conexion->query($query);

			$row = $resultado->fetch_assoc();
			header('Content-Type: text/html; charset= iso-8859-1');

		?>
	<div class="container">

	<form class="form-signin" class="input-block-level" action="proceso.php?Codigo=<?php echo $row['Codigo']; ?>" method="post"  class="form-signin" class="form-register">	

	<div align="center"><img src="Documentos/amigo2.jpg" alt="logotipo universidad" title="logotipo universidad" width="100" height="175"></div>
		<h2 class="form-titulo" align="center">MODIFICAR</h2>

		<div class="contenedor-inputs">
			<input type="text" class="input-block-level"  name="Codigo" placeholder="Codigo" class = "input-48" required value="<?php echo $row['Codigo']; ?>" >
			<input type="text" class="input-block-level"  name="Nombre" placeholder="Nombre" class = "input-48" required value="<?php echo $row['Nombre_Curso']; ?>" >
			<input type="text" class="input-block-level"  name="Dias" placeholder="Dias"  class="input-100" required value="<?php echo $row['Dias']; ?>" >
			<input type="text" class="input-block-level"  name="Hora" placeholder="Hora" class = "input-48" required value="<?php echo $row['Hora']; ?>" >
			<input type="submit" value="ACUTALIZAR" class="btn btn-large btn-primary" class="btn-enviar">
		</div>	
	</form>
	</div>
</body>
</html>

