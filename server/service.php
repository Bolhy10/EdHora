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


}