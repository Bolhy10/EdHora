<?php
/**
 * Created by PhpStorm.
 * User: Bolhy
 * Date: 24/11/2015
 * Time: 23:19
 */

//$con = new ezSQL_mysql('root','','whereis','localhost');
$hostname = 'localhost';
$database = 'edhora';
$username = 'root';
$password = '';
//MySQLi
$con = new mysqli($hostname, $username,$password, $database);
if ($con -> connect_errno) {
    die( "Fallo la conexión a MySQL: (" . $con -> mysqli_connect_errno()
        . ") " . $con -> mysqli_connect_error());
}else{
    session_start();

    if(isset($_SESSION["estudiante"]) == true && isset($_SESSION["rol_e"]) == true){
        $adm = "SELECT * FROM estudiante";
        $aquery = $con -> query($adm);
        while($r = $aquery -> fetch_array()){
            $usuario = $r["usuario"];
            $email = $r["email"];
            $nombre = $r["Nom_estudiante"];
            $apellido = $r["Ape_estudiante"];
            $cedula = $r["cedula"];
            $perfil  = $r["perfil"];
        }
    }else{
        $adm = "SELECT * FROM profesor";
        $aquery = $con -> query($adm);
        while($r = $aquery -> fetch_array()){
            $usuario = $r["usuario"];
            $email = $r["email"];
            $nombre = $r["Nombre"];
            $apellido = $r["Apellido"];
            $cedula = $r["cedula"];
            $perfil  = $r["perfil"];
        }
    }
}