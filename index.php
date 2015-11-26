<?php
/**
 * Created by PhpStorm.
 * User: Bolhy
 * Date: 24/11/2015
 * Time: 23:17
 */
require_once ('server/conexion.php');
if(isset($_SESSION['estudiante']) == true && isset($_SESSION["rol_e"]) == true){
    header('Location: inicio-estudiante');
}
if(isset($_SESSION['profesor']) == true && isset($_SESSION["rol_p"]) == true) {
    header('Location: inicio-profesor');
}
?>
<html>
<head>
    <title>EdHora - Sistema Educativo para Estudiantes y Profesores</title>
    <link href="" rel="icon" type="image/x-icon" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Css Script -->
    <link type="text/css" href="css/stylesheet.css" rel="stylesheet">
    <link type="text/css" href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Javascript-->
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="http://s3.amazonaws.com/codecademy-content/courses/hour-of-code/js/alphabet.js"></script>
    <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css" type="text/css">
</head>
<body>
<?php
include ("tools/header.php");
?>
<div class="jumbotron">
    <div class="container">
        <div class="error"></div>
        <div class="row">
            <div class="col-lg-6">
                <div class="edhora">
                    <div class="myCanvas">
                        <canvas id="myCanvas"></canvas>
                    </div>
                    <script type="text/javascript" src="http://s3.amazonaws.com/codecademy-content/courses/hour-of-code/js/bubbles.js"></script>
                    <script type="text/javascript" src="js/main.js"></script>
                </div>
            </div>

            <div class="col-lg-6">
                <h1>Registrarse</h1>
                <form id="registrarse" enctype="multipart/form-data" method="post">
                    <div class="form-group">
                        <label for="usuario">Usuario: </label>
                        <input type="text" class="form-control" name="usuario" id="usuario" placeholder="Introduzca un nombre de usuario...">
                    </div>
                    <div class="form-group">
                        <label for="email">Correo Electr&oacute;nico: </label>
                        <input type="text" class="form-control" id="email" name="email" placeholder="Introduzca su correo electr&oacute;nico...">
                    </div>
                    <div class="form-group">
                        <label for="cedula">C&eacutedula: </label>
                        <input type="text" class="form-control" id="cedula" name="cedula" placeholder="Introduzca su identificaci&aacute;n personal...">
                    </div>
                    <div class="form-group">
                        <label for="password">Contrase&ntilde;a: </label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Introduzca una contrase&ntilde;a...">
                    </div>
                    <div class="form-group">
                        <label for="salon">Sal&oacute;n: </label>
                        <select name="salon" id="salon" class="form-control">
                            <?php
                            $s = "SELECT * FROM salon";
                            $salon  = $con -> query($s);
                            while($q = $salon -> fetch_array()){
                                ?>
                                <option value="<?php echo $q["ID"];?>"><?php echo $q["salon"];?></option>
                                <?php
                            }
                            ?>
                        </select>
                    </div>
                    <button class="btn btn-success" type="button" id="registrar">Registrase</button>
            </div>

        </div>

    </div>
</div>

<div class="container">
    <!-- Example row of columns -->
    <div class="row">
        <div class="col-md-4">
            <h2 class="text-center"><i class="fa fa-4x fa-laptop"></i></h2>
            <p class="text-center">Coloca todas tus tareas, atraves de la plataforma, sin necesidad de tener documentos.</p>
        </div>
        <div class="col-md-4">
            <h2 class="text-center"><i class="fa fa-4x fa-sticky-note-o"></i></h2>
            <p class="text-center">Lleva un conteo, de tus tareas asignadas. Asi dejas el poco de papeles que posees.</p>
        </div>
        <div class="col-md-4">
            <h2 class="text-center"><i class="fa fa-eye fa-4x"></i></h2>
            <p class="text-center">Revisa el listado de los estudiantes, la cual estas dando clases.</p>
        </div>
    </div>
    <hr>
    <footer>
        <p>Derecho de Autor <i class="fa fa-copyright fa"></i> CompilerSoft 2015, Inc.</p>
    </footer>
</div> <!-- /container -->
<script type="text/javascript" src="js/edhora-js.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>
