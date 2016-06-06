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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
  </head>
    <body>
      <div style="width: 400px; height:400px; position:absolute;left:50%; margin-left:-200px; top:50%; margin-top:-200px ">
	<div class="container-fluid">
	  <div class="panel panel-default " style="margin-top">
	    <div class="panel-heading">Favor faça login</div>
	    <div class="panel-body">
	      <form>
		<div class="form-group">
		  <label for="nome">Usuario:</label>
		  <input type="text" class="form-control" name="usuario" placeholder="Informe o Usuario">
		</div>
		<div class="form-group">
		  <label for="nome">Senha:</label>
		  <input type="password" class="form-control" name="senha" placeholder="Informe a Senha">
		</div>
		<div style="color: red" id="erro-login"> </div>
		<div class="pull-right">
		  <input id="btn" type="button" value="Logar" class="btn btn-primary ">
		</div>
	      </form>
	    </div>
	  </div>
	</div>
      </div>
      <script>
	$("#btn").click(function(){
	  var usuario = $("input[name='usuario']").val();
	  var senha = $("input[name='senha']").val();
	  var erro = $("#erro-login");
	  if(usuario.length==0 ){
	    erro.html("Preencha o campo usuario!");
	  }else if(senha.length <8){
	    erro.html("Senha deve ser maior de 8 digitos!");
	  }else if(hasUpCase(senha) || hasDownCase(senha) || hasNumber(senha)){
	    erro.html("Senha deve ser pelo menos: 1 letra minúscula, 1 letra maiúscula e 1 dígito");
	  }else{
	    $.post("logar",
	      {
		  "usuario": usuario,
		  "senha": senha
	      },
	      function(data, status){
		var a = JSON.parse(data);
		if(a.login === 'true'){
		  window.location.href = 'paises.jsp'
		}else{
		  erro.html("Usuario ou Senha invalida!");
		}
	      });
	    }
	  });
	function hasUpCase(a) {
	  var r = true ;
	  for(i = 0; i< a.length; i++){
	    if(a.charAt(i) === a.charAt(i).toUpperCase() && isNaN(a.charAt(i))){
	      r = false;
	    }
	  }
	  return r;
	};
	function hasDownCase(a) {
	  var r = true;
	  for(i = 0; i< a.length; i++){
	    if(a.charAt(i) === a.charAt(i).toLowerCase() && isNaN(a.charAt(i))){
	      r = false;
	    }
	  }
	  return r;
	};
	function hasNumber(a) {
	  var r = true;
	  for(i = 0; i< a.length; i++){
	    if(isNumber(a.charAt(i))){
	      r = false;
	    }
	  }
	  return r;
	};
	function isNumber(n) {
	  return !isNaN(parseFloat(n)) && isFinite(n);
	}
	
      </script>
       
    </body>
</html>
