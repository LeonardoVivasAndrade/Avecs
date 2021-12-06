<%@page import="DTO.Usuario"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Sidebar style  -->
        <link rel="stylesheet" href="../css/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="../css/side-bar/style-side-bar.css">
        <script defer src="../font/solid.js"></script>
        <script defer src="../font/fontawesome.js"></script>
        <!-- Sidebar style  -->
        <title>Error de Página</title>
        <style>
            body {
                background-image: url(../img/page-404.png);
            }
        </style>
    </head>
    <body>
            <%
                String msg = (String) request.getSession().getAttribute("msg");
                String url = (String) request.getSession().getAttribute("url");
            %>

            <!-- Modal success -->                        
            <div onclick="regresar()" class="modal fade" id="ventana" tabindex="-1" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Mensaje</h5>
                            <button type="button" onclick="regresar();" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p> <%=msg%> </p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Modal success -->

            <%  
                request.getSession().removeAttribute("msg");
            %>

            <!-- jQuery Side-bar -->
            <script src="../js/side-bar/jquery-3.3.1.slim.min.js"></script>
            <script src="../js/side-bar/popper.min.js"></script>
            <script src="../js/side-bar/bootstrap.min.js"></script>   
            <script src="../js/side-bar/load_docente_1.0.js"></script> 
            `<!-- jQuery Side-bar --> 
            <script>
                $(document).ready(function () {
                    $("#ventana").modal('show');

                });
                function regresar() {
                   location.href = '<%= url %>';
                }

            </script>        
    </body>
</html>
