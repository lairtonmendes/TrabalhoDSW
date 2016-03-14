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
                        <li class=""><a href="#">Inicio </a></li>
                        <li class="active"><a href="paises.jsp">Paises</a></li>
                        <li><a href="modalidades.jsp">Modalidades</a></li>
                        <li><a href="medalhas.jsp">Medalhas</a></li>

                    </ul>

                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div class="container-fluid">
            <div class="panel panel-default ">
                <div class="panel-heading">Cadastro de País</div>
                <div class="panel-body">
                    <form class="form-inline">
                        <div class="form-group">
                          <label for="nome">Nome</label>
                          <input type="text" class="form-control" id="pais" placeholder="Nome do País">
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
                    <table class="table table-hover" style="width: 700px;">
                        <thead>
                            <tr>
                                <th style="width:  30px;">Rank</th>
                                <th style="width: 300px;">País</th>
                                <th style="width:  30px;">Ouro</th>
                                <th style="width:  30px;">Prata</th>
                                <th style="width:  30px;">Bronze</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>1</th>
                                <th>Estados Unidos</th>
                                <th>10</th>
                                <th>8</th>
                                <th>6</th>
                            </tr>
                            <tr>
                                <th>2</th>
                                <th>Brasil</th>
                                <th>8</th>
                                <th>6</th>
                                <th>4</th>
                            </tr>
                            <tr>
                                <th>3</th>
                                <th>Canada</th>
                                <th>4</th>
                                <th>2</th>
                                <th>1</th>
                            </tr>
                        </tbody>
                            
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
