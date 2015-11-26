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
            data:{
                usuario:usuario,
                password:password,
                accion:'login'
            },
            success: function (data) {
                if (data == 2) {
                    $('.error').html('<div class="alert alert-info" role="alert">Estamos ingresando a su cuenta. Espere un momento <img src="images/ajax-loader.gif"></div>');
                    setTimeout(function () {
                        window.location = 'inicio-estudiante';
                    }, 3000);
                }else if(data == 1){
                    $('.error').html('<div class="alert alert-info" role="alert">Estamos ingresando a su cuenta. Espere un momento <img src="images/ajax-loader.gif"></div>');
                    setTimeout(function () {
                        window.location = 'inicio-profesor';
                    }, 3000);
                }else {
                    $('.error').html('<div class="alert alert-info" role="alert">Error en el proceso. Intentelo Nuevamente.</div>');
                }
            }
            });
    });

    $('#button-tarea').click(function () {
        var nombre = document.getElementById('nombre').value;
        var salon = document.getElementById('salon').value;
        var descripcion = document.getElementById('descripcion').value;
        var fecha_e = document.getElementById('fecha_e').value;

        var long = nombre.length * salon.length * descripcion.length * fecha_e.length;
        if(long > 0 ){
            $.ajax({
               type:'POST',
                url:'server/service.php',
                data:{
                    nombre:nombre,
                    salon:salon,
                    descripcion:descripcion,
                    fecha_e:fecha_e,
                    accion:'tareas'
                },
                success: function (data) {
                    if(data == 1){
                        $('.error').html('<div class="alert alert-info" role="alert">Publicando su tarea. Espere un momento <img src="images/ajax-loader.gif"></div>');
                        setTimeout(function () {
                            location.reload(true);
                        },3000);
                    }else{
                        $('.error').html('<div class="alert alert-info" role="alert">Error en el proceso. Intentelo Nuevamente.</div>').show().delay(2000).hide(200);
                    }

                }
            });
        }else{
            $('.error').html('<div class="alert alert-info" role="alert">Los campos estan vacios. Intentelo Nuevamente.</div>').show().delay(2000).hide(200);
        }
    });

    $('#alumnos').change(function () {
        var salon = document.getElementById('alumnos').value;
        $.ajax({
            type:'POST',
            url:'server/service.php',
            data:{
                salon:salon,
                accion:'alumnos'
            },
            success: function (data) {
              $('.tareitas').html(data).show();
            }
        })


    });

});