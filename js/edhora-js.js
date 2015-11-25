/**
 * Created by Bolhy on 24/11/2015.
 */
$(document).ready(function () {
    $('#login').click(function () {
        var usuario = document.getElementById('usuario').value;
        var password = document.getElementById('password').value;
        $.ajax({
            type:'POST',
            url:'server/service.php',
            success: function (data) {
                if (data == 1) {
                    $('.error').html('<div class="alert alert-info" role="alert">Estamos creando su cuenta. Espere un momento <img src="images/ajax-loader.gif"></div>');
                    setTimeout(function () {
                        window.location = 'inicio';
                    }, 3000);
                } else {
                    $('.error').html('<div class="alert alert-info" role="alert">Error en el proceso. Intentelo Nuevamente.</div>');
                }
            }
            });
    });



});