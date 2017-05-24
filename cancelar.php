<?php
	
	$id = $_REQUEST['id'];

	$conexion = mysqli_connect("localhost", "root", "" ,"prueba");
		
	$query = "DELETE FROM matriculados  WHERE id = '$id'";

	$resultado = $conexion->query($query);

	if(!$resultado){
		echo "Error al actualizar";
	}
	else{
		header("location:matriculas.php") ;
	}
	mysqli_close($conexion);
?>