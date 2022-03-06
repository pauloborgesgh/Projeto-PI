	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<meta charset="ISO-8859-1">
	<title>www.cadastravagas.com</title>
</head>
<body>

	<%@ page import="classes.Databasepi"%>

	<%
	int id = 0;	
		try{
			id = Integer.parseInt(request.getParameter("id"));
			Databasepi bd=new Databasepi();
			bd.excluir(id);				
		}catch(Exception e)
		{		}

			
		    response.sendRedirect("./listar.jsp");
	%>

	


</head>
<body>
	<Style>
h3 {
	color: rgb(255, 255, 225);
}

Body {
	background-color: rgb(158, 144, 183);
}
</style>

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

	<div class="container">
		<h3>Excluir</h3>
		<p>.</p>
	</div>
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
						<li><a href="#">Termos Condição</a></li>
						<li><a href="#">Py</a></li>
					</ul>
				</div>
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#footer-body">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<ul class="footer-bar-btns visible-xs">
						<li><a href="#" class="btn" title="Histoyia"><i
								class="fa fa-2x fa-clock-o blue-text"></i></a></li>
						<li><a href="#" class="btn" title="Favoritos"><i
								class="fa fa-2x fa-star yellow-text"></i></a></li>
						<li><a href="#" class="btn" title=" Novidades"><i
								class="fa fa-2x fa-rss-square orange-text"></i></a></li>
					</ul>
				</div>

			</div>
		</div>

	</footer>

</body>
</html>