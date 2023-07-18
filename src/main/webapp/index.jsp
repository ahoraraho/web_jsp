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

<div class="container mt-5">
	<div class="row">
		<div class="col-md-3">
		MENU
		<ul>
			<li><a href="estudiante_registrar.jsp">Registrar estudiantes</a></li>
			<li><a href="estudiante_lista.jsp">Gestionar estudiantes</a></li>
			
			<li><a href="comentarios.jsp">Reseña</a></li>
			<li><a href="AllResenas.jsp">Ver Reseñas</a></li>
			
			<li><a href="addTask.jsp">Add Tast</a></li>
			<li><a href="taskView.jsp">Tasts</a></li>
		</ul>
				
		
		</div>
		<div class="col-md-9">
		
		<h1>Calificacion de productos</h1>


		<%
String aalertt = ""; // Declarar las variables fuera del bloque JSP
String conten = ""; // Declarar las variables fuera del bloque JSP

if (request.getParameter("msj") != null) {
    String msj = request.getParameter("msj");

    switch (msj) {
        case "addOk":
            aalertt = "alert-success";
            conten = "Agregado correctamente";
            break;
        case "addNOk":
            aalertt = "alert-warning";
            conten = "Ocurrió un error, no se agregó";
            break;
        case "upOk":
            aalertt = "alert-success";
            conten = "Actualizado correctamente";
            break;
        case "upNOk":
            aalertt = "alert-warning";
            conten = "Ocurrió un error, no se actualizó";
            break;
        case "delOk":
            aalertt = "alert-danger";
            conten = "Eliminado correctamente";
            break;
        default:
            // Opcionalmente, aquí puedes manejar un caso predeterminado si el valor de msj no coincide con ninguno de los casos anteriores.
            break;
    }
%>

<div class="alert <%= aalertt %> alert-dismissible fade show" role="alert">
    <strong>Estudiante!</strong> <%= conten %>
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
}
%>


				
		</div>
	</div>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>