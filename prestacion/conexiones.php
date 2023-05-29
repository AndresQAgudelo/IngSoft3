<?php
function conectarse()
	{
	$bd_host = "localhost";
	$bd_usuario = "root";	
	$bd_password = "";
	$bd_base = "prestaciones";
	$con = new mysqli ($bd_host, $bd_usuario, $bd_password);
	if(!$con)
		{
			mysqli_error();
		}
		else
		{
			$con -> set_charset("utf8");
			
		}
	return $con;
	}
?>
