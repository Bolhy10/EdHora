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
                if(isset($_SESSION['usuario']) == false){
                    ?>
                <div class="form-group">
                    <input type="text" id="usuario" placeholder="Usuario" class="form-control">
                </div>
                <div class="form-group">
                    <input type="password" id="password" placeholder="Contrase&ntilde;a" class="form-control">
                </div>
                <button type="submit" class="btn btn-success" id="login">Ingresar</button>
                <?php
                }else {
                    ?>
                    <div class="form-group">
                        <div><li class="tou"><a href="#" class="perfil-user"><img src="<?php print $perfil; ?>"/></a>
                                <ul class="children">
                                    <li><a href="profile">Ver mi perfil</a></li>
                                    <li><a href="account">Configuracion de la cuenta</a></li>
                                    <li><a href="log_out">Log out</a></li>
                                </ul>
                            </li></div>
                    </div>
                    <?php
                }
                ?>
            </form>
        </div>
    </div>
</nav>