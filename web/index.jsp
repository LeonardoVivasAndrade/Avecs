<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">        

        <link rel="stylesheet" href="css/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="css/style-login.css">
        <script src="https://apis.google.com/js/platform.js" async defer></script>
        <meta name="google-signin-client_id" content="505451920387-bjp942ig6tdgtr3pr9pi97f2cptennno.apps.googleusercontent.com">

        <title>Login</title>
    </head>
    <body>   


        <form class="formulario" method="post" action="SignIn.do">

            <h1>Inicio de sesión</h1>
            <div class="contenedor">
                <div class="input-contenedor">
                    <input type="email" placeholder="Email" name="user"  required>
                    <br><br>                
                    <input type="password" placeholder="Contraseña" name="pass" required>
                </div>
                <a href="Sesion/recuperacion_clave">Olvide contraseña</a>                
                <br><br>
                <input id="idbtn" type="submit" value="Iniciar sesión" class="button">
                <br><br>

                <div id="gSignIn"></div>  
                <div class="g-signin2" data-onFailure="fail" data-onsuccess="onSignIn"></div>
            </div>
        </form>
        
        <%

            String msg = (String) request.getSession().getAttribute("msg");
            if (msg != null) {
        %>
        <!-- Modal success -->                        
        <div class="modal fade" id="ventana" tabindex="-1" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Mensaje</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p><%=msg%></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal  -->

        <%
            }
            request.getSession().removeAttribute("msg");
        %>
        <script src="js/side-bar/jquery-3.3.1.slim.min.js"></script>
        <script src="js/side-bar/bootstrap.min.js"></script> 
        <script src="js/google-login.js"></script>  
    </body>
</html>
