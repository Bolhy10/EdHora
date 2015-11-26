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
        <h2>Listado de Estudiantes <?php echo $curso; ?></h2>
        <div class="row">
            <div class="col-lg-6">
                <div class="form-group">
                    <label for="salon">Sal&oacute;n: </label>
                    <select name="salon" id="alumnos" class="form-control">
                        <option value="">Buscar estudiantes</option>
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
                <div class="tareitas">
                </div>
            </div>
            <div class="col-lg-6">
                <div class="imagen">
                    <img src="images/logito.png"/>
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
