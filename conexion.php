<?php
	session_start();

	$_SESSION["usuario"]= $_POST['usuario'];
	$_SESSION["clave"]= $_POST['clave'];

?>

Usuario
<?php 

	echo $_SESSION["usuario"];
?>

</br>
<?php 

	$usuario = $_POST['usuario'];
	$clave = $_POST['clave'];



	/*//concexion a la base de datos
	$conexion = mysqli_connect("localhost", "root", "" ,"prueba");

	$consulta = "SELECT * FROM estudiantes WHERE usuario = '$usuario' AND clave = '$clave'";

	$resultado = mysqli_query($conexion, $consulta);

	$filas = mysqli_num_rows($resultado);

	if($filas > 0){
		header("location:semilleros.php");
	}
	else{
		echo "Error en la autenticacion";
	}
	mysqli_free_result($resultado);
	mysqli_close($conexion);*/

	/*$usuario = $_POST['usuario'];
	$clave = $_POST['clave'];*/

	$conexion = mysqli_connect("localhost", "root", "" ,"prueba");

	$alumno = "SELECT * FROM estudiantes WHERE usuario = '$usuario' AND clave = '$clave'";

	$docente="SELECT * FROM docentes WHERE usuario= '$usuario' AND clave ='$clave'";

	$administrativo="SELECT * FROM administrativo WHERE usuario= '$usuario' AND clave ='$clave'";

	$resultadoalumno = mysqli_query($conexion, $alumno);

	$resuldocente = mysqli_query($conexion, $docente);

	$resuladministrativo = mysqli_query($conexion, $administrativo);

	$filasalumno = mysqli_num_rows($resultadoalumno);

	$filasdocente = mysqli_num_rows($resuldocente);

	$filasadministrativo = mysqli_num_rows($resuladministrativo);

	if($filasalumno > 0){
		session_start();

		$_SESSION["usuario"]= $_POST['usuario'];
		header("location:semilleros.php");
	}
	else if($filasdocente > 0){
		session_start();
		$_SESSION["usuario"]= $_POST['usuario'];
		header("location:semidocen.php");
	}
	else if($filasadministrativo > 0){
		session_start();
		$_SESSION["usuario"]= $_POST['usuario'];
		header("location:semiadmi.php");
	}
	else{
		echo "Error en la autenticacion";
	}
	mysqli_free_result($resultado);
	mysqli_close($conexion);

 ?>
