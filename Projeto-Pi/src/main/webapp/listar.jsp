<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>www.VemTemVagas.com</title>
</head>
<body>

	<Style>
h3 {
	color: rgb(255, 255, 225);
}

Body {
	background-image:
		url("https://i.pinimg.com/736x/2a/a2/7d/2aa27d66a28edbe64a1f03e9c429eac0.jpg ");
	background-repeat: no-repeat;
	background-size: 100%
}
</style>
	<nav class="navbar navbar-light" style="background-color: #DB7093;">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="index.jsp">Inicio</a>
			</div>
			<ul class="nav navbar-nav" style="background-color: #FFC0CB;">
				<li class="active"><a href="./gravar.jsp"> Cadastrar</a></li>
				<li><a href="./listar.jsp?lista=0"> Mostar Lista Fechadas</a></li>
				<li><a href="./listar.jsp?lista=1"> Mostrar Listar Abertas</a></li>
				<li><a href="./listar.jsp">Mostar Todas As Lista</a></li>

			</ul>
		</div>
	</nav>


	<div class="container">
		<h3>Listas</h3>
		<p>.</p>
	</div>

	<%@ page import="classes.Databasepi"%>
	<%@ page import="classes.Vagas"%>


	<%
	Databasepi bd = new Databasepi();
	try {
		int lista = Integer.parseInt(request.getParameter("lista"));
		//fechada 0
		if (lista == 0)
			out.println(bd.listar(0));
		//aberta 1
		else if (lista == 1)
			out.println(bd.listar(1));
		else
			out.println(bd.listar(2));

	} catch (Exception e) {
		out.println(bd.listar(2));
	}
	%>
	<footer>
		<div class="navbar navbar-inverse navbar-fixed-bottom">
			<div class="container">
				>
				<div class="footer-copyright text-center py-4"
					style="background-color: #FFC0CB;">
					2022 Copyright: <a href="index.jsp"> #VemTemVagas</a>
					<p>Sempre Inovando</p>
				</div>
			</div>
	</footer>

</body>
</html>