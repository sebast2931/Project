<?php
	$Codigo = $_POST['Codigo'];
	$Nombre = $_POST['Nombre'];
	$Dias = $_POST['Dias'];
	$Hora = $_POST['Hora'];

	$conexion = mysqli_connect("localhost", "root", "" ,"prueba");
		
	$query = "INSERT INTO semilleros (Codigo, Nombre_Curso, Dias, Hora) VALUES ('$Codigo','$Nombre','$Dias','$Hora')";

	$resultado = $conexion->query($query);

	if(!$resultado){
		echo "Error al actualizar";
	}
	else{
		header("location:semiadmi.php");
	}
	mysqli_close($conexion);
?>