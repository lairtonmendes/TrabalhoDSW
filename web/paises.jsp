<%@page import="br.estacio.jdbc.PaisDAO"%>
<%@page import="br.estacio.domain.Pais"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/trabalhodsw.css">
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
                        <li class=""><a href="index.jsp">Inicio </a></li>
                        <li class="active"><a href="paises.jsp">Paises</a></li>
                        <li><a href="modalidade.jsp">Modalidades</a></li>
                        <li><a href="quadrodemedalhas.jsp">Medalhas</a></li>

                    </ul>

                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div class="container-fluid">
            <div class="panel panel-default ">
                <div class="panel-heading">Cadastro de País</div>
                <div class="panel-body">
                    <form class="form-inline" action="adicionaPaises" method="post">
                        <div class="form-group">
                            <label for="nome">Nome</label>
                            <input type="text" class="form-control" id="pais" placeholder="Nome do País" name="nome">
                        </div>
                        <button type="submit" class="btn btn-primary">Criar</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="panel panel-default ">
                <div class="panel-heading">Países cadastrado</div>
                <div class="panel-body">
                    <table class="table table-hover" style="width: 400px;">
                        <thead>
                            <tr>
                                <th style="width:  30px;">ID</th>
                                <th style="width: 300px;">País</th>
                                <th style="width:  30px;"></th>
                                <th style="width:  30px;"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                PaisDAO dao = new PaisDAO();
                                List<Pais> paises = dao.getLista();
                                for (Pais p : paises) {
                            %>

                            <tr>
                                <td><%= p.getId()%></td>
                                <td><%= p.getNome()%></td>

                                <td><button class="btn btn-success btn-xs   ">Editar</button></td>
                                <form action="removePais?id=<%= p.getId()%>" method="post">
                            
                                    <td><button class="btn btn-danger btn-xs">Excluir</button></td>
                                </form>
                            </tr>
                            <%}%>

                        </tbody>

                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
