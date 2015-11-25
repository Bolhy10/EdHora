<?php
/**
 * Created by PhpStorm.
 * User: Bolhy
 * Date: 25/11/2015
 * Time: 16:10
 */
require_once ('../server/conexion.php');
if(isset($_SESSION['profesor']) == false && isset($_SESSION["rol_p"]) == false){
    header('Location: edhoraPanama');
}
?>
<html>
<head>
    <title>EdHora - Educadores</title>
    <link href="" rel="icon" type="image/x-icon" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Css Script -->
    <link type="text/css" href="css/stylesheet.css" rel="stylesheet">
    <link type="text/css" href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Javascript-->
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
</head>
<?php
include ("../tools/header.php");
?>





</div>
<script type="text/javascript" src="js/edhora-js.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
