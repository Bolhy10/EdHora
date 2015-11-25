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



              



          }
        break;


}