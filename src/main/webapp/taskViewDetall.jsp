<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Detalles de la Tarea</title>
  <!-- Enlace a Bootstrap 5 CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    /* Estilos personalizados para modo oscuro */
    body {
      background-color: #121212;
      color: #f5f5f5;
    }
    .card {
      background-color: #333;
      color: #f5f5f5;
    }
    .card-title {
      color: #fff;
    }
    .list-group-item {
      background-color: #222;
      color: #f5f5f5;
    }
    .form-control {
      background-color: #444;
      color: #f5f5f5;
    }
    /* Agregar aqu� m�s estilos personalizados para otros elementos */
  </style>
</head>
<body>
  <div class="container my-md-5 col-md-6">
    <h1 class="text-center">Detalles de la Tarea</h1>
    <div class="card p-4">
      <div class="card-body">
        <h5 class="card-title">T�tulo de la Tarea: T�tulo de la Tarea</h5>
        <p class="card-text">Descripci�n completa de la tarea: Descripci�n de la tarea. Aqu� se proporciona una descripci�n m�s detallada de lo que se debe hacer.</p>
        <ul class="list-group list-group-flush">
          <li class="list-group-item">Asunto: Asunto de la tarea</li>
          <li class="list-group-item">Fecha de Entrega: 2023-07-31</li>
          <li class="list-group-item">Importancia: Alta</li>
          <li class="list-group-item">Estado: En Proceso</li>
          <li class="list-group-item">Responsable: Nombre del responsable</li>
          <li class="list-group-item">Recordatorio: 2023-07-31 12:00 PM</li>
          <!-- Agregar aqu� m�s detalles como etiquetas, prioridad, duraci�n estimada, etc. -->
          <li class="list-group-item">Etiquetas: Etiqueta1, Etiqueta2</li>
          <li class="list-group-item">Prioridad: Alta</li>
          <li class="list-group-item">Duraci�n Estimada: 3 horas</li>
          <li class="list-group-item">Proyecto/�rea: Nombre del Proyecto o �rea</li>
          <li class="list-group-item">Estado de Avance: 75%</li>
          <li class="list-group-item">Fecha de Inicio: 2023-07-29</li>
          <li class="list-group-item">Fecha de Finalizaci�n: 2023-07-31</li>
          <li class="list-group-item">Comentarios: Aqu� se pueden agregar comentarios adicionales sobre la tarea.</li>
        </ul>
        <div class="mt-3 row">
  <div class="col-md-6 col-sm-12">
    <a href="taskView.jsp" class="btn btn-secondary w-100">Volver a la Lista</a>
  </div>
  <div class="col-md-6 col-sm-12 mt-2 mt-md-0">
    <button type="button" class="btn btn-success w-100" onclick="marcarCompletada()">Marcar como Completada</button>
  </div>
</div>

      </div>
    </div>
  </div>
  <!-- Enlace a los scripts de Bootstrap 5 JS (si se requieren) -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
  <!-- Script personalizado para marcar tarea como completada -->
  <script>
    function marcarCompletada() {
      // Aqu� puedes agregar el c�digo para marcar la tarea como completada en la base de datos o donde corresponda.
      alert("La tarea ha sido marcada como completada.");
    }
  </script>
</body>
</html>
