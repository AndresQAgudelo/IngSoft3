<?php
$host="localhost";
$user="root";
$pw="";
$db="prestaciones";

$mysqli = new mysqli("localhost", "root", "", "prestaciones") OR DIE("error al conectarse con la tabla");
$mysqli -> set_charset("utf8"); //solucion caracteres especiales como la �


?>
