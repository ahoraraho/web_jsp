<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Lista de Tareas</title>
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
    .btn-primary {
      background-color: #007bff;
      border-color: #007bff;
    }
    .btn-primary:hover {
      background-color: #0056b3;
      border-color: #0056b3;
    }
  </style>
</head>
<body>
  <div class="container mt-5">
    <h1 class="text-center mb-5">Lista de Tareas</h1>
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
      <!-- Tarea 1 -->
      <div class="col">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Tarea 1: Título de la Tarea</h5>
            <p class="card-text">Descripción de la tarea. Aquí se proporciona una breve descripción de lo que se debe hacer.</p>
            <ul class="list-group list-group-flush">
              <li class="list-group-item">Asunto: Asunto de la tarea</li>
              <li class="list-group-item">Fecha de Entrega: 2023-07-31</li>
              <li class="list-group-item">Importancia: Alta</li>
              <li class="list-group-item">Estado: En Proceso</li>
            </ul>
            <div class="card-footer mt-4">
              <a href="taskViewDetall.jsp" class="btn btn-primary w-100">Ver Detalles</a>
            </div>
          </div>
        </div>
      </div>
      <!-- Tarea 2 -->
      <div class="col">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Tarea 2: Otra Tarea Importante</h5>
            <p class="card-text">Esta es otra tarea importante que necesita ser completada pronto.</p>
            <ul class="list-group list-group-flush">
              <li class="list-group-item">Asunto: Asunto de la tarea</li>
              <li class="list-group-item">Fecha de Entrega: 2023-08-15</li>
              <li class="list-group-item">Importancia: Media</li>
              <li class="list-group-item">Estado: Pendiente</li>
            </ul>
            <div class="card-footer mt-4">
              <a href="taskViewDetall.jsp" class="btn btn-primary w-100">Ver Detalles</a>
            </div>
          </div>
        </div>
      </div>
      <!-- Tarea 3 -->
      <div class="col">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title">Tarea 3: Tarea con Recordatorio</h5>
            <p class="card-text">Esta tarea tiene un recordatorio para completarla antes de la fecha de entrega.</p>
            <ul class="list-group list-group-flush">
              <li class="list-group-item">Asunto: Asunto de la tarea</li>
              <li class="list-group-item">Fecha de Entrega: 2023-08-20</li>
              <li class="list-group-item">Importancia: Baja</li>
              <li class="list-group-item">Estado: Pendiente</li>
            </ul>
            <div class="card-footer mt-4">
              <a href="taskViewDetall.jsp" class="btn btn-primary w-100">Ver Detalles</a>
            </div>
          </div>
        </div>
      </div>
      <!-- Agregar más tareas aquí -->
    </div>
  </div>
  <!-- Enlace a los scripts de Bootstrap 5 JS (si se requieren) -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
