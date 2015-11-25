<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">EdHora.com.pa</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">

            <form class="navbar-form navbar-right">
                <?php
                if(isset($usuario) == false){
                    ?>
                <div class="form-group">
                    <input type="text" id="usuario" placeholder="Usuario" class="form-control">
                </div>
                <div class="form-group">
                    <input type="password" id="password" placeholder="Contrase&ntilde;a" class="form-control">
                </div>
                <button type="button" class="btn btn-success" id="login">Ingresar</button>
                <?php
                }else{
                    ?>
                            <ul class="nav nav-pills">
                                <li role="presentation" class="dropdown">
                                    <div class="images-user"><img src="<?php echo $perfil; ?>"></div>
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"><?php echo $nombre.' '.$apellido; ?> <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Mi Perfil</a></li>
                                        <li><a href="#">Horario</a></li>
                                        <li><a href="#">Estudiantes</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="#">Cerrar Sesi&oacute;n</a></li>
                                    </ul>
                                </li>
                            </ul>
                    <?php
                }
                ?>
            </form>
        </div>
    </div>
</nav>