<?php
/**
 * Created by PhpStorm.
 * User: Bolhy
 * Date: 25/11/2015
 * Time: 11:44
 */
require_once ('conexion.php');

switch($_POST["accion"]){

    case 'login':

          if(!empty($_POST["usuario"]) && !empty($_POST["password"]) ){
              $usuario = $_POST["usuario"];
              $password = $_POST["password"];
              $login  = "SELECT * FROM estudiante WHERE usuario = '$usuario' AND password = '$password'";
              $query = $con -> query($login);
              if($query  -> num_rows > 0){
                  while($f = $query -> fetch_array()) {
                      $_SESSION["estudiante"] = $f["usuario"];
                      $_SESSION['rol_e'] = $f["rol"];
                  }
                  echo 2;
              }else{
                  $profesor = "SELECT * FROM profesor WHERE usuario = '$usuario' AND password = '$password'";
                  $q = $con -> query($profesor);
                  if($q  -> num_rows > 0){
                      while($f = $q -> fetch_array()) {
                          $_SESSION["profesor"] = $f["usuario"];
                          $_SESSION['rol_p'] = $f["rol"];
                      }
                      echo 1;
                  }else{
                      echo 3;
                  }
              }
          }
        break;

    case 'tareas':

        $nombre = $_POST["nombre"];
        $salon = $_POST["salon"];
        $descripcion = $_POST["descripcion"];
        $fecha_e = $_POST["fecha_e"];
        $fecha_i = date('d-m-Y');
        $insertar = "INSERT INTO tareas (id_curso,nombre_tarea,descripcion,id_salon,fecha_entrega,fecha_inicio)
                     VALUES ('$id_curso','$nombre','$descripcion','$salon','$fecha_e','$fecha_i')";
        $query = $con -> query($insertar);
        if($query){
            echo 1;
        }else{
            echo 2;
        }
        break;

    case 'alumnos':

        $salon = $_POST["salon"];

        $s = "SELECT * FROM estudiante INNER JOIN salon ON (salon.ID = estudiante.id_salon) WHERE estudiante.id_salon = '$salon' ";
        $rv = $con -> query($s);
        while($j = $rv -> fetch_array()){

            echo '<div class="tareas">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="perfil">
                                    <img src="'.$j["perfil"].'"/>
                                </div></div>
                            <div class="col-lg-8">
                                <div class="inform">
                                    <h4>'.$j["Nom_estudiante"].' '.$j["Ape_Estudiante"].' '.$j["cedula"].'</h4>
                                    <p>Correo electronico: '.$j["email"].'</p>
                                    <span>Sal&oacute;n: '.$j["salon"].'</span>
                                </div>
                            </div>
                        </div>
                    </div>';


        }
        break;


}