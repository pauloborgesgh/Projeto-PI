<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>www.VemTemVagas</title>
</head>
<body>

<Style>
input{
border-radius:0.3em;
text-align: center;
  font-size: 25px;
  color: rgb(17, 16, 17);

}

.form2,.table{
color:rgb (133, 129, 133);
text-align:center;
}

Body{
background-image: url("https://i.pinimg.com/736x/2a/a2/7d/2aa27d66a28edbe64a1f03e9c429eac0.jpg ");
background-repeat:no-repeat;
background-size:100%
}
</style>



	<nav class="navbar navbar-light" style="background-color: #DB7093;">
		<div class="container-fluid">
			<div class="navbar-header" >
				<a class="navbar-brand" href="index.jsp">Inicio</a>
			</div>
			<ul class="nav navbar-nav" style="background-color:#FFC0CB;">
				<li class="active"><a href="./gravar.jsp"> Cadastrar</a></li>
				<li><a href="./listar.jsp?lista=0"> Mostar Lista Fechadas</a></li>
				<li><a href="./listar.jsp?lista=1"> Mostrar Listar Abertas</a></li>
				<li><a href="./listar.jsp">Mostar Todas As Lista</a></li>

			</ul>
		</div>
	</nav>

  
<div class="container">
  <h3></h3>
  <p>.</p>
</div>

<%@ page import="classes.Databasepi" %>
<%@ page import="classes.Vagas" %>

<%
	try{
	
	String gravar= request.getParameter("descricao");	
	if(gravar!=null || gravar.equals("")==false)
	{
		
		Vagas vg=new Vagas();
		vg.setDescricao(request.getParameter("descricao"));
		vg.setRequisitosObrigatorios(request.getParameter("requisitosObrigatorios"));
		vg.setRequisitosDesejaveis(request.getParameter("requisitosDesejaveis"));
		vg.setRemuneracao(request.getParameter("remuneracao"));
		vg.setBeneficios(request.getParameter("beneficios"));
		vg.setLocalDeTrabalho(request.getParameter("localDeTrabalho"));
		vg.setAberta(
				Integer.parseInt(
						request.getParameter("aberta")
						)
				);

		Databasepi bd =new Databasepi();
		
		bd.inserir(vg);
		response.sendRedirect("./listar.jsp");
		
	}
	}catch(Exception e){		}
	finally{ }

%>
<h2> Cadastar</h2>
	<div class="form2">
<table>
<b>	<i>
<form action="./gravar.jsp" method="post">
<tr><td><label> ID:</label></td>
    <td><input input type="number" name="id" value="" disabled ></td></tr>
    <tr><td><label >Descrição</label></td>
    <td><input input type="text" name="descricao" required></td></tr>
    <tr><td><label for="tel">Requisitos Obrigatorios:</label> </td>
    <td><input input type="text" name="requisitosObrigatorios" required></td></tr>
    <tr><td><label for="tel">Requisitos Desejáveis:</label> </td>
    <td><input type="text" name="requisitosDesejaveis" required></td></tr>
    <tr><td><label for="tel">Remuneração:</label> </td>
    <td><input input type="number" name="remuneracao" required></td></tr>
    <tr><td><label for="tel">Benefícios:</label> </td>
    <td><input type="text" name="beneficios" required></td></tr>
    <tr><td><label for="tel">Local De Trabalho:</label> </td>
    <td><input type="text" name="localDeTrabalho" required></td></tr>
    <tr><td><label for="tel">Aberta:</label> </td>
    <td><input input type="number" name="aberta" required></td></tr>
    <br><br>
   
      <td>  <button type="button submit " class="btn btn-success">Enviar</button></b><td>
</form>
</b></i>
</table>
</div>

<footer>
        <div class="navbar navbar-inverse navbar-fixed-bottom">
            <div class="container">
            >
                    <div class="footer-copyright text-center py-4" style="background-color:#FFC0CB;">
                    2022 Copyright:
    <a href="index.jsp"> #VemTemVagas</a>
    <p>Sempre Inovando</p>
  </div>
                </div>
                
      

</footer>



</body>
</html>






