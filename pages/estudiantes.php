<?php
/**
 * Created by PhpStorm.
 * User: Bolhy
 * Date: 24/11/2015
 * Time: 23:17
 */
require_once ('../server/conexion.php');
if(isset($_SESSION['estudiante']) == true && isset($_SESSION["rol_e"]) == true){
    header('Location: edhoraPanama');
}
?>
<html>
<head>
    <title>EdHora - <?php echo $usuario; ?></title>
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
<div class="jumbotron">
    <div class="container">
        <div class="error"></div>
        <h2>Tareas Asignadas para <?php echo $nombre.' '.$apellido; ?></h2>
        <div class="row">
            <div class="col-lg-6">
                <div class="form-group">
                    <label for="salon">Buscar Materia: </label>
                    <select name="materia" id="materia" class="form-control">
                        <option value="">Buscar materia</option>
                        <?php
                        $s = "SELECT * FROM cursos";
                        $salon  = $con -> query($s);
                        while($q = $salon -> fetch_array()){
                            ?>
                            <option value="<?php echo $q["id_curso"];?>"><?php echo utf8_encode($q["curso"]);?></option>
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
        <p>Derecho de Autor <i class="fa fa-copyright fa"></i> CompilerSoft 2015, Inc.</p>
    </footer>
</div>
<script type="text/javascript" src="js/edhora-js.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>


