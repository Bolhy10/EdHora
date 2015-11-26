<?php
/**
 * Created by PhpStorm.
 * User: Bolhy
 * Date: 24/11/2015
 * Time: 23:19
 */

//$con = new ezSQL_mysql('root','','whereis','localhost');
$hostname = 'localhost';
$database = 'Educativa';
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
        $usuario = $_SESSION["estudiante"];
        $adm = "SELECT * FROM estudiante INNER JOIN salon ON (salon.ID = estudiante.id_salon) WHERE usuario = '$usuario' ";
        $aquery = $con -> query($adm);
        while($r = $aquery -> fetch_array()){
            $usuario = $r["usuario"];
            $email = $r["email"];
            $nombre = $r["Nom_estudiante"];
            $apellido = $r["Ape_estudiante"];
            $cedula = $r["cedula"];
            $perfil  = $r["perfil"];
            $salon = $r["salon"];
            $id_salon = $r["ID"];
        }
    }
    if(isset($_SESSION["profesor"]) == true && isset($_SESSION["rol_p"]) == true){
        $adm = "SELECT * FROM profesor INNER JOIN cursos ON (cursos.id_curso = profesor.id_curso) WHERE 1";
        $aquery = $con -> query($adm);
        while($r = $aquery -> fetch_array()){
            $usuario = $r["usuario"];
            $email = $r["email"];
            $nombre = $r["Nombre"];
            $apellido = $r["Apellido"];
            $cedula = $r["cedula"];
            $perfil  = $r["perfil"];
            $curso = $r["curso"];
            $id_curso = $r["id_curso"];
        }
    }
}