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
-->
<% PaisDAO dao = new PaisDAO(); 
   ModalidadeDAO mdao = new ModalidadeDAO();
%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>


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
                        <li><a href="quadrodemedalhas.jsp">Medalhas</a></li>

                    </ul>

                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <div class="container-fluid">
            <div class="panel panel-default ">
                <div class="panel-heading">Cadastro de Modalidade</div>
                <div class="panel-body">
                    <form class="form-inline" action="adicionaModalidade" method="post">
                        <div class="form-group">
                            <label for="nome">Modalidade</label>
                            <input type="text" class="form-control" name="nome"placeholder="Modalidade Esportiva">
                        </div>
                        <div class="form-group">
                            <label for="nome">Ouro</label>
                            <select class="form-control" name="ouro" id="select_m_ouro">
                                 <option disabled selected value> Selecione um pais </option>
                                <% List<Pais> paises = dao.getLista();
                                    for (Pais p : paises) {
                                %>
                                
                                <option value="<%= p.getId() %>" id="ouro_<%= p.getId() %>"> <%= p.getNome() %></option>
                                <% } %>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="nome">Prata</label>
                            <select class="form-control" name="prata" id="select_m_prata">
                                 <option disabled selected value> Selecione um pais </option>
                                <% 
                                    for (Pais p : paises) {
                                %>
                                
                                <option value="<%= p.getId() %>" id="prata_<%= p.getId() %>"> <%= p.getNome() %></option>
                                <% } %>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="nome">Bronze</label>
                            <select class="form-control" name="bronze" id="select_m_bronze">
                                <option disabled selected value> Selecione um pais </option> 
                                <% 
                                    for (Pais p : paises) {
                                %>
                                
                                <option value="<%= p.getId() %>" id="bronze_<%= p.getId() %>"> <%= p.getNome() %></option>
                                <% } %>
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
                             <% List<Modalidade> modalidades = mdao.getLista();
                                for (Modalidade m : modalidades) {
                                %>
                            <tr>
                                <td><%= m.getNome()%></td>
                                <td><%= dao.bucaPorId(m.getOuro()).getNome() %></td>
                                <td><%= dao.bucaPorId(m.getPrata()).getNome() %></td>
                                <td><%= dao.bucaPorId(m.getBronze()).getNome() %></td>
                            </tr>
                            <% } %>
                        </tbody>
                            
                    </table>
                </div>
            </div>
    </body>
    <script>
    var ouro_current;
    $('#select_m_ouro').change(function(){
       $('#prata_'+ouro_current).removeAttr( 'style' );
       $('#bronze_'+ouro_current).removeAttr( 'style' );
       id = $('#select_m_ouro').val()
       ouro_current = id
       $('#prata_'+id).hide()
       $('#bronze_'+id).hide()
    });
    var prata_current;
    $('#select_m_prata').change(function(){
       $('#ouro_'+prata_current).removeAttr( 'style' );
       $('#bronze_'+prata_current).removeAttr( 'style' );
       id = $('#select_m_prata').val()
       prata_current = id
       $('#ouro_'+id).hide()
       $('#bronze_'+id).hide()
    });
    var bronze_current;
    $('#select_m_bronze').change(function(){
       $('#prata_'+bronze_current).removeAttr( 'style' );
       $('#ouro_'+bronze_current).removeAttr( 'style' );
       id = $('#select_m_bronze').val()
       bronze_current = id
       $('#prata_'+id).hide()
       $('#ouro_'+id).hide()
    });
</script>
</html>
