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

    $('#file_photo').on('change', function () {
        $('#img-user').html(' ');
        var archivos = document.getElementById('file_photo').files;
        var navegador = window.URL || window.webkitURL;
        for(var x=0; x<archivos.length;x++){

            var size  = archivos[x].size;
            var type = archivos[x].type;
            var name = archivos[x].name;
            var width = archivos[x].width;
            var height = archivos[x].height;

            if(size > 1024*1024){
                $('.llo').append("El archivo "+name+" supera el maximo permitido");
            }else if(type != 'image/jpg' && type != 'image/png' && type != 'image/jpeg'){
                $('.llo').append("El archivo "+name+" no es tipo de imagen permitida.");
            }else if(width > 1000 || height > 1000){
                $(archivos[x]).hide();
            }else{
                var objeto_url = navegador.createObjectURL(archivos[x]);
                $("#img-user").html("<img src="+objeto_url+" width='100%' height='350px' />");
            }
        }
    });
    $('#info-profesor').click(function () {
        var formData = new FormData($('#account-profesor')[0]);
        var ruta = 'server/account_server.php';
        $.ajax({
            type:'POST',
            url:ruta,
            data: formData,
            contentType: false,
            processData:false,
            success: function (data) {
                    $('.error').html(data).show().delay(2000).hide(200);
                setTimeout(function () {
                    location.reload(true);
                },2000);
            }

        });
    });

});