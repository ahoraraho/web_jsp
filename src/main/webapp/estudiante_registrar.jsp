<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrar</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
<div class="container">
  <!-- Content here -->
  <div class="row">
		<div class="col-md-3">
		menus
		<ul>
			<li><a href="estudiante_registrar.jsp">Registrar estudiantes</a></li>
			<li><a href="estudiante_lista.jsp">Gestionar estudiantes</a></li>
		</ul>
				
		
		
		</div>
		<div class="col-md-9">
		  
		  
		  
		  
		  
			<h1>Registrar Estudiantes</h1>
			
			<form action="estudiante_registrar" method="post">
			  <div class="mb-3">
			    <labelclass="form-label">Id</label>
			    <input type="number" name="id" class="form-control" >
			  </div>
			  <div class="mb-3">
			    <labelclass="form-label">Codigo</label>
			    <input type="text" name="codigo" class="form-control" >
			  </div>
			  <div class="mb-3">
			    <labelclass="form-label">Nombres</label>
			    <input type="text" name="nombres" class="form-control" >
			  </div>
			  <div class="mb-3">
			    <labelclass="form-label">Apellidos</label>
			    <input type="text" name="apellidos"  class="form-control" >
			  </div>
			  <div class="mb-3">
			    <labelclass="form-label">Telefonos</label>
			    <input type="text" name="telefonos" class="form-control" >
			  </div>
			  <div class="mb-3">
			    <labelclass="form-label">Correo</label>
			    <input type="email" name="correo" class="form-control" >
			  </div>
			  <div class="mb-3">
			    <labelclass="form-label">Direccion</label>
			    <input type="text" name="direccion" class="form-control" >
			  </div>
				
			<input type="submit" class="btn btn-primary" value="Registrar" >
			
			
			</form>
			  
		  
		</div>
	 
   
  
</div>







<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>