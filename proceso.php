<?php
	
	$Codigo = $_REQUEST['Codigo'];
	$Nombre = $_POST['Nombre'];
	$Dias = $_POST['Dias'];
	$Hora = $_POST['Hora'];

	$conexion = mysqli_connect("localhost", "root", "" ,"prueba");
		
	$query = "UPDATE semilleros SET Nombre_Curso='$Nombre', Dias='$Dias', Hora='$Hora' WHERE Codigo = '$Codigo'";

	$resultado = $conexion->query($query);

	if(!$resultado){
		echo "Error al actualizar";
	}
	else{
		header("location:semiadmi.php");

	}
	mysqli_close($conexion);
?>