<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrar</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
<div class="container mt-5">
  <!-- Content here -->
  <div class="row">
		<div class="col-md-4">
		menus
		<ul>
			<li><a href="estudiante_registrar.jsp">Registrar estudiantes</a></li>
			<li><a href="estudiante_lista.jsp">Gestionar estudiantes</a></li>
		</ul>
		
		</div>
		<div class="col-md-5">
		
			<%
			String codigo="1", nombres="100",apellidos="J",correo="c",direccion="d",telefonos="t";
			String id=request.getParameter("id");
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/sis";
			Connection con=DriverManager.getConnection(url,"root","");
			Statement st=con.createStatement();
			String sql="SELECT * FROM estudiante WHERE id="+id;
			ResultSet rs=st.executeQuery(sql);
			//out.println("Consula SQL: " +sql);
			
			rs.next();
			
			id=rs.getInt("id")+"";
			codigo=rs.getString("codigo");
			nombres=rs.getString("nombres");
			apellidos=rs.getString("apellidos");
			correo=rs.getString("correo");
			telefonos=rs.getString("telefonos");
			direccion=rs.getString("direccion");
			
			%>
		  
			<h1>Actualizar Estudiante</h1>
			
			<form action="estudiante_actualizar" method="post">
			  <div class="mb-3">
			    <labelclass="form-label">Id</label>
			    <input disabled type="number" name="id" class="form-control" value="<%=id%>" >
			    <input type="hidden" name="id" class="form-control" value="<%=id%>" >
			  </div>
			  <div class="mb-3">
			    <labelclass="form-label">Codigo</label>
			    <input required type="text" name="codigo" class="form-control" value="<%=codigo%>" >
			  </div>
			  <div class="mb-3">
			    <labelclass="form-label">Nombres</label>
			    <input required type="text" name="nombres" class="form-control" value="<%=nombres%>" >
			  </div>
			  <div class="mb-3">
			    <labelclass="form-label">Apellidos</label>
			    <input required type="text" name="apellidos"  class="form-control" value="<%=apellidos%>">
			  </div>
			  <div class="mb-3">
			    <labelclass="form-label">Telefonos</label>
			    <input required type="text" name="telefonos" class="form-control" value="<%=telefonos%>">
			  </div>
			  <div class="mb-3">
			    <labelclass="form-label">Correo</label>
			    <input required type="email" name="correo" class="form-control" value="<%=correo%>" >
			  </div>
			  <div class="mb-3">
			    <labelclass="form-label">Direccion</label>
			    <input required type="text" name="direccion" class="form-control" value="<%=direccion%>" >
			  </div>
				
			<input type="submit" class="btn btn-primary" value="Actualizar" >
			
			
			</form>
			  
		  
		</div>
	 
   
  
</div>







<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>