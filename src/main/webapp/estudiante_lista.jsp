<li><a href="estudiante_registrar.jsp">Registrar estudiantes</a></li><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>

<div class="container">
	<div class="row">
		<div class="col-md-3">
		menus
		<ul>
			<li><a href="estudiante_registrar.jsp">Registrar estudiantes</a></li>
			<li><a href="estudiante_lista.jsp">Gestionar estudiantes</a></li>
		</ul>
				
		
		
		</div>
		<div class="col-md-9">

			
			
			
			<h1>Lista de Estudiantes</h1>
			
			
			<%
			// Obtienen las clases del Driver descargado
			Class.forName("com.mysql.jdbc.Driver");
			// Determinamos la cadena de conexion: la SGBD, el servidor y puerto y la DB
			String url="jdbc:mysql://localhost:3306/sacademico";
			Connection con=DriverManager.getConnection(url,"root",""); 
			Statement st=con.createStatement();
			String sql="SELECT * FROM estudiante";
			ResultSet rs=st.executeQuery(sql);
			%>
			<h2>Lista de Estudiantes</h2>
			<table class="table">
			  <thead>
			    <tr>
			      <th scope="col">#</th>
			      <th scope="col">codigo</th>
			      <th scope="col">Nombres</th>
			      <th scope="col">Apellidos</th>
			      <th scope="col">Correo</th>
			      <th scope="col">Direccion</th>
			      <th scope="col">Telefonos</th>
			      <th scope="col">Acciones</th>
			    </tr>
			  </thead>
			  <tbody>	
				<%
				while(rs.next()){
					out.println("<tr>");
					out.println("<td>"+rs.getInt("id")+"</trd>");
					out.println("<td>"+rs.getString("codigo")+"</trd>");
					out.println("<td>"+rs.getString("nombres")+"</trd>");
					out.println("<td>"+rs.getString("apellidos")+"</trd>");
					out.println("<td>"+rs.getString("correo")+"</trd>");
					out.println("<td>"+rs.getString("direccion")+"</trd>");
					out.println("<td>"+rs.getString("telefonos")+"</trd>");
					out.println("<td><a href='estudiante_actualizar.jsp?id="+rs.getInt("id")+"'><i class='bi bi-journal-check'></i> Actualizar</a> <a href=''> <i class='bi bi-trash'></i>  Borra</a> </trd>");
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