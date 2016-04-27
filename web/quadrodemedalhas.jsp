<%@page import="br.estacio.domain.Pais"%>
<%@page import="br.estacio.jdbc.PaisDAO"%>
<%@page import="br.estacio.domain.Modalidade"%>
<%@page import="java.util.List"%>
<%@page import="br.estacio.jdbc.ModalidadeDAO"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
<% PaisDAO dao = new PaisDAO(); 
   PaisDAO pdao = new PaisDAO();
%>
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/trabalhodsw.css">
        <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <!-- DataTables -->
    <link rel="stylesheet" href="css/dataTables.bootstrap.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="css/AdminLTE.min.css">
    </head>
    <body>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Quadro de Medalha</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li ><a href="index.jsp">Inicio </a></li>
                        <li><a href="paises.jsp">Paises</a></li>
                        <li class="active"><a href="modalidade.jsp">Modalidades</a></li>
                        <li><a href="quadrodemedalhas.jsp">Medalhas</a></li>

                    </ul>

                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
            
        <div class="container-fluid">
            <div class="panel panel-default ">
                <div class="panel-heading">Quadro de Medalha</div>
                <div class="panel-body">
                    <table id="tabela" class="table table-bordered table-hover" style="width: 700px;">
                        <thead>
                            <tr>
                                <th> Rank </th>
                                <th style="width: 200px;">Pais</th>
                                <th style="">Ouro</th>
                                <th style="">Prata</th>
                                <th style="">Bronze</th>
                            </tr>
                        </thead>
                        <tbody>
                             <% List<Pais> paises = pdao.quadroDeMedalha();
                                int i = 0;
                                for (Pais p : paises) {
                                    i++;
                                %>
                            <tr>
                                <td><%= i %></td>
                                <td><%= p.getNome()%></td>
                                <td><%= p.getQtdOuro() %></td>
                                <td><%= p.getQtdPrata() %></td>
                                <td><%= p.getQtdBronze() %></td>
                            </tr>
                            <% } %>
                        </tbody>
                            
                    </table>
                </div>
            </div>
        </div>
        <!-- jQuery 2.1.4 -->
    <script src="js/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="js/bootstrap.min.js"></script>
    <!-- DataTables -->
    <script src="js/jquery.dataTables.js"></script>
    <script src="js/dataTables.bootstrap.min.js"></script>
    <!-- SlimScroll -->
    <script src="js/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="js/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="js/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="js/demo.js"></script>
    <!-- page script -->
    <script>
      $(function () {
        $('#tabela').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": false,
          "ordering": true,
          "info": true,
          "autoWidth": false
        });
      });
    </script>
    </body>
</html>

