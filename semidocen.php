<?php
	/*include('conexion.php');*/

	$conexion = mysqli_connect("localhost", "root", "" ,"prueba");
	
	$query = "SELECT *  FROM matriculados";

	$resultado = $conexion->query($query);

	header('Content-Type: text/html; charset= iso-8859-1');
?>

<html>
<head>
	<title>Semilleros</title>
	<!--<meta http-equiv="Content-Type" content="text/html"; charset="utf-8"/>-->
	<link rel="shortcut icon" type="image/x-icon" href="Documentos/funlam3.ico">

	<style type="text/css">

/* Datagrid */
	body {
		font: normal medium/1.4 sans-serif;
		background: linear-gradient( 0deg, #C0C0C0   , #F8F8F8);
  	}
	table {
	  border-collapse: collapse;
	  width: 100%;
	}
	th, td {
	  padding: 0.25rem;
	  border: 1px solid #ccc;
	}
	tbody tr:nth-child(odd) {
	  background: #eee;
	}
	.centro{
	  padding: 0.5rem;
	  background: #484848 ;
	  color: white;
	  text-align: center;
	  font-size: 21px;
	}

	#cuadro{
		width: 90%;
		background: #F8F8F8 ;
		padding: 25px;
		margin: 5px auto;
		border: 3px solid #D8D8D8;
	}
	#titulo{
		width: 100%;
		background: #282828;
		color:white;
	}
	a{
		color: black;
	}
	</style>

</head>
<body>
<?php
	session_start();
	if(!isset($_SESSION["usuario"])){
		header("location:login.html");
	}
?>
	<div id="cuadro">
		<center><img src="Documentos/amigo2.jpg" width="100" height="175"><br>
		<div id="titulo">
		<center><h1>Estudiantes Matriculados</h1></center>
		</div>
		
		<table>

			<thead>
				<tr class="centro">
					<td>Codigo</td>
					<td>Nombre</td>
					<td>Nombre del Curso</td>
				</tr>
			</thead>	
				<tbody>
					<?php 
						
						while($row = $resultado->fetch_assoc()){ 

					?>
						<tr>
							<td>
								<?php echo $row['id'];?>
							</td>
							<td>
								<?php echo $row['usuario'];?>
							</td>
							<td>
								<?php echo $row['Nombre_Curso'];?>
							</td>
						</tr>
					<?php } ?>
				</tbody>
		</table>	
			</center>
	</div>
	<p align="right"><a href="cierre.php">CERRAR SESION</a></p>
</body>
</html>	