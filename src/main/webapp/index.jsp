<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>reseña</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<body>

<div class="container">
	<div class="row">
		<div class="col-md-3">
		menus
		<ul>
			<li><a href="estudiante_registrar.jsp">Registrar estudiantes</a></li>
			<li><a href="estudiante_lista.jsp">Gestionar estudiantes</a></li>
			
			<li><a href="comentarios.jsp">Reseña</a></li>
			<li><a href="AllResenas.jsp">Ver Reseñas</a></li>
		</ul>
				
		
		</div>
		<div class="col-md-9">
		contenido principal
		
		<h1>Calificacion de productos</h1>

		<%
		
		if(request.getParameter("mensaje")!=null){
			out.print("<div class='alert alert-primary' role='alert'>");
			out.println("Importante!: "+request.getParameter("mensaje"));
			out.print("</div>");
		}
		
		%>
				
		</div>
	</div>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>