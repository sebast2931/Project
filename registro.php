<?php

	//recibir los dato y almacenarlos en las variables
	$nombre = $_POST["nombre"];
	$apellidos = $_POST["apellidos"];
	$correo = $_POST["correo"];
	$usuario = $_POST["usuario"];
	$clave = $_POST["clave"];
	$telefono = $_POST["telefono"];

	$conexion = mysqli_connect("localhost", "root", "" ,"prueba");
	
	//consulta para insertar
	$insertar = "INSERT INTO estudiantes(nombre, apellidos, correo, usuario, clave, telefono) 
				VALUES ('$nombre','$apellidos','$correo','$usuario','$clave','$telefono')";
	
	$resultado = mysqli_query($conexion,$insertar);

	if(!$resultado){
		echo "Error al registrarse";
	}
	else{
		header("location:index.html");
	}
	mysqli_close($conexion);
?>