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
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,cyrillic,latin-ext,greek,greek-ext,vietnamese' rel='stylesheet' type='text/css'>
</head>
<body>
<?php
include ("../tools/header.php");
?>
<div class="jumbotron">
    <div class="container">
        <div class="error"></div>
        <h2>Mi Perfil</h2>
        <div class="row">
            <form enctype="multipart/form-data" id="account-profesor" method="post">
            <div class="col-lg-6">
        <div class="form-group">
            <label for="usuario">Usuario: </label>
            <input type="text" class="form-control" name="usuario" id="usuario" value="<?php echo $usuario; ?>">
        </div>
        <div class="form-group">
            <label for="nombre">Nombre: </label>
            <input type="text" class="form-control" name="nombre" id="nombre" value="<?php echo $nombre; ?>">
        </div>
                <div class="form-group">
                    <label for="apellido">Apellido: </label>
                    <input type="text" class="form-control" name="apellido" id="apellido" value="<?php echo $apellido; ?>">
                </div>
                <div class="form-group">
                    <label for="cedula">Cedula: </label>
                    <input type="text" class="form-control" name="cedula" id="cedula" value="<?php echo $cedula; ?>">
                </div>
                <div class="form-group">
                    <label for="email">Email: </label>
                    <input type="text" class="form-control" name="email" id="email" value="<?php echo $email; ?>">
                </div>
                <button type="button" class="btn btn-success" id="info-profesor">Actualizar perfil</button>
            </div>

            <div class="col-lg-6">
                <div class="foto_user">
                    <span class="llo"></span>
                    <?php
                    echo '<div id="img-user"><img src="'.$perfil.'" id="images-user"/></div>';
                    ?>
                    <p>
                    <div class="div_file">
                        <p class="text_foto"><i class="icon-image"></i> Actualiza tu foto</p>
                        <input type="file" class="btn_foto" name="file_photo" id="file_photo" title="Automaticamente la Foto Perfil"/>
                    </div>
                    </p></div>
            </div>
            </form>
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