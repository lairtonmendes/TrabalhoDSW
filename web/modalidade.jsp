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
                        <li ><a href="index.jsp">Inicio </a></li>
                        <li><a href="paises.jsp">Paises</a></li>
                        <li class="active"><a href="modalidade.jsp">Modalidades</a></li>
                        <li><a href="medalha.jsp">Medalhas</a></li>

                    </ul>

                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div class="container-fluid">
            <div class="panel panel-default ">
                <div class="panel-heading">Cadastro de Modalidade</div>
                <div class="panel-body">
                    <form class="form-inline">
                        <div class="form-group">
                            <label for="nome">Modalidade</label>
                            <input type="text" class="form-control" id="pais" placeholder="Modalidade Esportiva">
                        </div>
                        <div class="form-group">
                            <label for="nome">Ouro</label>
                            <select class="form-control">
                                <option>Selecione</option>
                                <option>Brasil</option>
                                <option>Estados Unidos</option>
                                <option>Canada</option>
                                <option>Mexico</option>
                                <option>Argentina</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="nome">Prata</label>
                            <select class="form-control">
                                <option>Selecione</option>
                                <option>Brasil</option>
                                <option>Estados Unidos</option>
                                <option>Canada</option>
                                <option>Mexico</option>
                                <option>Argentina</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="nome">Bronze</label>
                            <select class="form-control">
                                <option>Selecione</option>
                                <option>Brasil</option>
                                <option>Estados Unidos</option>
                                <option>Canada</option>
                                <option>Mexico</option>
                                <option>Argentina</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Criar</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="panel panel-default ">
                <div class="panel-heading">Modalidade Cadastradas</div>
                <div class="panel-body">
                    <table class="table table-hover" style="width: 700px;">
                        <thead>
                            <tr>
                                <th style="width: 200px;">Modalidade</th>
                                <th style="">Ouro</th>
                                <th style="">Prata</th>
                                <th style="">Bronze</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Nataçao</td>
                                <td>Brasil</td>
                                <td>Estados Unidos</td>
                                <td>Mexico</td>
                            </tr>
                            <tr>
                                <td>Futebol</td>
                                <td>Brasil</td>
                                <td>Argetina</td>
                                <td>Estado Unidos</td>
                            </tr>
                            <tr>
                                <td>Basquete</td>
                                <td>Estados Unidos</td>
                                <td>Argetina</td>
                                <td>Brasil</td>
                            </tr>
                        </tbody>
                            
                    </table>
                </div>
            </div>
    </body>
</html>
