<?php
/**
 * Created by PhpStorm.
 * User: Bolhy
 * Date: 12/11/2015
 * Time: 1:48
 */
require_once('conexion.php');

$usuario = utf8_decode($_POST["usuario"]);
$nombre = utf8_decode($_POST["nombre"]);
$email = utf8_decode($_POST["email"]);
$apellido = utf8_decode($_POST["apellido"]);
$cedula = utf8_decode($_POST["cedula"]);

$file = $_FILES["file_photo"];
$nombre_a  = $file["name"];
$tipo = $file["type"];
$ruta_p = $file["tmp_name"];
$size = $file["size"];
@$dimensiones = getimagesize($ruta_p);
$width = $dimensiones[0];
$height = $dimensiones[1];

$carpeta = "../images/estudiantes/";

if(is_dir($carpeta)){
    $src = $carpeta.$nombre_a;
    $src_1 = "images/estudiantes/$nombre_a";
    move_uploaded_file($ruta_p,$src);
    $valor = "UPDATE estudiante SET usuario='$usuario', email = '$email', Nom_estudiante = '$nombre', Ape_estudiante = '$apellido', cedula = '$cedula', perfil = '$src_1' WHERE usuario = '$usuario'";
    $user = $con -> query($valor);
    if($user){
        echo '<div class="alert alert-info" role="alert">Se ha actualizado su cuenta.</div>';
    }else{
        echo '<div class="alert alert-danger" role="alert">!Oh hubo un error en el proceso.</div>';
    }
}

