<?php
/**
 * Created by PhpStorm.
 * User: Bolhy
 * Date: 25/11/2015
 * Time: 16:10
 */
require_once ('../server/conexion.php');
if(isset($_SESSION['estudiante']) == false && isset($_SESSION["rol_e"]) == false){
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
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,cyrillic,latin-ext,greek,greek-ext,vietnamese' rel='stylesheet' type='text/css'>
</head>
<body>
<?php
include ("../tools/header.php");
?>
<div class="jumbotron">
    <div class="container">
        <div class="error"></div>
        <h2>Tus Materias <?php echo $usuario; ?></h2>
        <div class="row">
            <div class="col-lg-6">
                <div class="tareitas">
                    <?php
                    $p = "SELECT * FROM cursos INNER JOIN profesor ON (cursos.id_curso = profesor.id_curso) WHERE 1";
                    $x = $con -> query($p);
                    while($z = $x -> fetch_array()) {
                        ?>
                        <div class="tareas">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="perfil">
                                        <img src="<?php echo $z["perfil"];?>"/>
                                    </div>
                                </div>
                                <div class="col-lg-8">
                                    <div class="inform">
                                        <h4><?php echo $z["Nombre"].' '.$z["Apellido"].' '.$z["cedula"];?></h4>
                                        <p>Correo electronico: <?php  echo $z["email"]; ?></p>
                                        <span>Materia: <?php echo $z["curso"];?></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <?php
                    }
                    ?>

                </div>
            </div>
            <div class="col-lg-6">
                <div class="imagen">
                    <img src="images/materias.png"/>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <hr>
    <footer>
        <p>Derecho de Autor &copy; CompilerSoft 2015, Inc.</p>
    </footer>
</div>
<script type="text/javascript" src="js/edhora-js.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>