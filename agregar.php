

<?php
	session_start();

	echo 'Usuario ';
	echo $_SESSION['usuario'];
	echo '*</br>';



	
	$conexion = mysqli_connect("localhost", "root", "" ,"prueba");

	$curso = $_GET['Curso'];

	echo 'curso ';
	echo $curso;
	echo '*</br>';


	$usuario = $_SESSION['usuario'];


	$insertar = "INSERT INTO matriculados(usuario,Nombre_Curso) 
				VALUES ('$usuario','$curso')";

	$resultado = mysqli_query($conexion,$insertar);

	if(!$resultado){
		echo "Error al registrarse";
	}
	else{
		header("location:matriculas.php");
		//echo "Usuario registrado exitosamente";
	}
	mysqli_close($conexion);
	
 ?>