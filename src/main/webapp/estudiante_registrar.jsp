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
<div class="container mt-5">
  <!-- Content here -->
  <div class="row">
		<div class="col-md-4">
		MENU
		<ul>
			<li><a href="estudiante_registrar.jsp">Registrar estudiantes</a></li>
			<li><a href="estudiante_lista.jsp">Gestionar estudiantes</a></li>
		</ul>
					
		</div>
		<div class="col-md-5">
		  
			<h1 clas="d-flex justify-conten-center">Registrar Estudiantes</h1>
			
			<form action="estudiante_registrar" method="post">
			  
			 <div class="mb-3">
			    <labelclass="form-label">Codigo</label>
			    <input required  id="codigo" oninput="limitarCaracteres(8)" min="0" max="99999999" type="number" name="codigo" class="form-control" >
			  </div>
			  <div class="mb-3">
			    <labelclass="form-label">Nombres</label>
			    <input maxlength="100" required type="text" name="nombres" class="form-control" >
			  </div>
			  <div class="mb-3">
			    <labelclass="form-label">Apellidos</label>
			    <input required type="text" name="apellidos"  class="form-control" >
			  </div>
			  <div class="mb-3">
				    <label class="form-label">Telefonos</label>
				    <input required  id="telefono" oninput="limitarCaracteres(9)" min="0" max="999999999" type="number" name="telefonos" class="form-control" maxlength="9" min="0" max="999999999">
				</div>

			  <div class="mb-3">
			    <labelclass="form-label">Correo</label>
			    <input required type="email" name="correo" class="form-control" >
			  </div>
			  <div class="mb-3">
			    <labelclass="form-label">Direccion</label>
			    <input required type="text" name="direccion" class="form-control" >
			  </div>
				
			<input type="submit" class="btn btn-primary" value="Registrar" >
			
			
			</form>
			  
		  
		</div>
	 
   
  
</div>







<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
</body>
</html>
<script>
function limitarCaracteres(num) {
    const input1 = document.getElementById('codigo');
    const input2 = document.getElementById('telefono');
    const maxCaracteres = num;
    if (input1.value.length > maxCaracteres) {
        input1.value = input1.value.slice(0, maxCaracteres);
    }
    if (input2.value.length > maxCaracteres) {
        input2.value = input2.value.slice(0, maxCaracteres);
    }
}
</script>
