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
        <title>Error</title>
    </head>
    <body>
        <div class="wrapper">


            <%
                String msg = (String) request.getSession().getAttribute("msg");
                if (msg != null) {
            %>

            <!-- Modal success -->                        
            <div onclick="history.go(-1);" class="modal fade" id="ventana" tabindex="-1" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Mensaje</h5>
                            <button type="button" onclick="history.go(-1);" class="close" data-dismiss="modal" aria-label="Close">
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

            <%   }
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
            </script>        
    </body>
</html>
