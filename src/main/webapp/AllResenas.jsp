<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de reseñas</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>

<div class="container mt-5">
	<div class="row">
		<div class="col-md-3">
		<ul>
			<li><a href="comentarios.jsp">Reseña</a></li>
			<li><a href="AllResenas.jsp">Ver Reseñas</a></li>
		</ul>
		</div>
		<div class="col-md-9 mt-5">
			
			<h1>Lista de Reseñas</h1>
			
			<%
			// Obtienen las clases del Driver descargado
			Class.forName("com.mysql.jdbc.Driver");
			// Determinamos la cadena de conexion: la SGBD, el servidor y puerto y la DB
			String url="jdbc:mysql://localhost:3306/oxxo";
			Connection con=DriverManager.getConnection(url,"root",""); 
			Statement st=con.createStatement();
			String sql="SELECT * FROM comentarios";
			ResultSet rs=st.executeQuery(sql);
			%>
			<h2>Todos los comentarios</h2>
			<table class="table">
			  <thead>
			    <tr>
                    
			      <th scope="col">Producto</th>
			      <th scope="col">Usuario</th>
			      <th scope="col">Calificacion</th>
			      <th scope="col">Titulo</th>
			      <th scope="col">Comentario</th>
			      <th scope="col">Acciones</th>
			    </tr>
			  </thead>
			  <tbody>	
				<%
				while(rs.next()){
					out.println("<tr>");
					out.println("<td>Platano</trd>");
					out.println("<td>"+rs.getString("usuario")+"</trd>");
					out.println("<td>"+rs.getString("calificacion")+"</trd>");
					out.println("<td>"+rs.getString("titulo")+"</trd>");
					out.println("<td>"+rs.getString("comentario")+"</trd>");
					out.println("<td><a href='comentarios_actualizar.jsp?id="+rs.getInt("id")+"'><i class='bi bi-journal-check'></i> Actualizar</a> <a href=''> <i class='bi bi-trash'></i>  Borra</a> </trd>");
					out.println("</tr>");
                    }
				%>
			  </tbody>
			</table>
		</div>
	</div>			
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>