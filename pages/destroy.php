<?php
/**
 * Created by PhpStorm.
 * User: Bolhy
 * Date: 26/11/2015
 * Time: 15:21
 */
require_once ('../server/conexion.php');
if(isset($_SESSION["estudiante"]) == true ){
    session_destroy();
    header('Location: edhoraPanama');}

if(isset($_SESSION["profesor"]) == true ){
    session_destroy();
    header('Location: edhoraPanama');}
?>



