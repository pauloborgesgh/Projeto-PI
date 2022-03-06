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
<title>www.cadastravagas.com</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">Inicio</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="./gravar.jsp"> Gravar</a></li>
      <li><a href="./listar.jsp?lista=0"> Listar Fechadas</a></li>
      <li><a href="./listar.jsp?lista=1"> Listar Abertas</a></li>
      <li><a href="./listar.jsp"> Listar Todas</a></li>
  
    </ul>
  </div>
</nav>
  <Style>
input{
border-radius:0.3em;
text-align: center;
  font-size: 25px;
  color: rgb(17, 16, 17);

}

.form{
color:rgb (133, 129, 133);
}

Body{
background-color: rgb(224,224,224);
}
</style>
  
<div class="container">

<%@ page import="classes.Databasepi" %>
<%@ page import="classes.Vagas" %>

<%
Databasepi bd=new Databasepi();
	Vagas vg=null;
	int id=0;
	
	try{
	
		id = Integer.parseInt(request.getParameter("id"));	
		vg=bd.buscar(id);
		if(vg.getId()<0 || vg==null)
		{
	 response.sendRedirect("./listar.jsp");
		}
		
	
	}catch(Exception e){}
	
	
	try{
		String gravar=request.getParameter("descricao");	
		if(gravar!=null || gravar.equals("")==false)
		{
	vg=new Vagas();
	vg.setDescricao(request.getParameter("descricao"));
	vg.setRequisitosObrigatorios(request.getParameter("requisitosObrigatorios"));
	vg.setRequisitosDesejaveis(request.getParameter("requisitosDesejaveis"));
	vg.setRemuneracao(request.getParameter("remuneracao"));
	vg.setBeneficios(request.getParameter("beneficios"));
	vg.setLocalDeTrabalho(request.getParameter("localDeTrabalho"));
	vg.setAberta(Integer.parseInt(request.getParameter("aberta")));
	vg.setId(id);
	
	bd.editar(vg);
	response.sendRedirect("./listar.jsp");
		}
		}catch(Exception e){	out.println("Editar Formulario");	}
		finally{ }
%>

<h3>Editar</h3>
<form action="./editar.jsp?id=<%=id%>" method="post">
	ID: <i><b></b></i><input type="number" name="id" value="" disabled > <br>
	Descrição : <input type="text" name="descricao" required ><br>	
	Requisitos Obrigatórios: <input type="text" name="requisitosObrigatorios" required><br>
	Requisitos Desejáveis:<input type="text" name="requisitosDesejaveis" required><br>
	Remuneração:<input type="number" name="remuneracao" required><br>
	Benefícios:<input type="text" name="beneficios" required><br>
	Local de Trabalho:<input type="text" name="localDeTrabalho" required><br>
	Aberta:<input type="number" name="aberta" required><br>
	
	<input type="submit" value="Enviar"></i></b>
	
</form>


<script>
	document.getElementsByName("id")[0].value="<%=vg.getId()%>";
	document.getElementsByName("descricao")[0].value="<%=vg.getDescricao()%>";
	document.getElementsByName("requisitosObrigatorios")[0].value="<%=vg.getRequisitosObrigatorios()%>";
	document.getElementsByName("requisitosDesejaveis")[0].value="<%=vg.getRequisitosDesejaveis()%>";
	document.getElementsByName("remuneracao")[0].value="<%=vg.getRemuneracao()%>";
	document.getElementsByName("beneficios")[0].value="<%=vg.getBeneficios() %>";
	document.getElementsByName("localDeTrabalho")[0].value="<%=vg.getLocalDeTrabalho()%>";
	document.getElementsByName("aberta")[0].value="<%=vg.getAberta()%>";
</script>

<footer>
        <div class="navbar navbar-inverse navbar-fixed-bottom">
            <div class="container">
                <div class="navbar-collapse collapse" id="footer-body">
                    <ul class="nav navbar-nav">
                        <li><a href="#">Outro Navegador</a></li>
                        <li><a href="#">Sair</a></li>
                        <li><a href="#">Contato</a></li>
                        <li><a href="#">Outros Assutos</a></li>
                        <li><a href="#">Usuario </a></li>
                        <li><a href="#">Termos &amp; Condição</a></li>
                        <li><a href="#">Py</a></li>
                    </ul>
                </div>
              	<div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#footer-body">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <ul class="footer-bar-btns visible-xs">
                        <li><a href="#" class="btn" title="Histoyia"><i class="fa fa-2x fa-clock-o blue-text"></i></a></li>
                        <li><a href="#" class="btn" title="Favoritos"><i class="fa fa-2x fa-star yellow-text"></i></a></li>
                        <li><a href="#" class="btn" title=" Novidades"><i class="fa fa-2x fa-rss-square orange-text"></i></a></li>
                    </ul>
                </div>
    
            </div>
        </div>

</footer>

</body>
</html>