<?php
	
	$Codigo = $_REQUEST['Codigo'];

	$conexion = mysqli_connect("localhost", "root", "" ,"prueba");
		
	$query = "DELETE FROM semilleros  WHERE Codigo = '$Codigo'";

	$resultado = $conexion->query($query);

	if(!$resultado){
		echo "Error al actualizar";
	}
	else{
		header("location:semiadmi.php") ;
	}
	mysqli_close($conexion);
?>