<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Formulario de Captura de Tareas</title>
  <!-- Enlace a Bootstrap 5 CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    /* Estilos personalizados para modo oscuro */
    body {
      background-color: #121212;
      color: #f5f5f5;
    }
    .container {
      background-color: #333;
      border-radius: 10px;
      padding: 20px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    }
    .form-control {
      background-color: #222;
      color: #f5f5f5;
      border-color: #444;
    }
    .form-control:focus {
      background-color: #333;
      color: #f5f5f5;
      border-color: #007bff;
    }
    .form-label {
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
    /* Estilos para el select y option en modo oscuro */
    select {
      background-color: red;
      color: #f5f5f5;
      border-color: #444;
    }
    option {
      background-color: #222;
      color: #f5f5f5;
    }
    select:focus {
      background-color: #333;
      color: #f5f5f5;
      border-color: #007bff;
    }
  </style>
</head>
<body>
  <div class="container my-md-5 my-sm-3 col-md-6 p-5">
    <h1 class="text-center mb-4">Formulario de Captura de Tareas</h1>
    <form action="procesar_formulario.php" method="POST">
      <div class="mb-3">
        <label for="titulo" class="form-label">Título</label>
        <input type="text" name="titulo" id="titulo" class="form-control" required>
      </div>
      <div class="mb-3">
        <label for="asunto" class="form-label">Asunto</label>
        <textarea name="asunto" id="asunto" class="form-control" required></textarea>
      </div>
      <div class="mb-3">
        <label for="descripcion" class="form-label">Descripción</label>
        <textarea name="descripcion" id="descripcion" class="form-control"></textarea>
      </div>
      <div class="mb-3">
        <label for="responsable" class="form-label">Responsable</label>
        <input type="text" name="responsable" id="responsable" class="form-control">
      </div>
      <div class="mb-3">
        <label for="recordatorio" class="form-label">Recordatorio</label>
        <input type="datetime-local" name="recordatorio" id="recordatorio" class="form-control">
      </div>
      <div class="mb-3">
        <label for="adjuntos" class="form-label">Adjuntos</label>
        <input type="file" name="adjuntos" id="adjuntos" class="form-control">
      </div>
      <div class="mb-3">
        <label for="etiquetas" class="form-label">Etiquetas</label>
        <input type="text" name="etiquetas" id="etiquetas" class="form-control">
      </div>
      <div class="mb-3">
        <label for="prioridad" class="form-label">Prioridad</label>
        <select name="prioridad" id="prioridad" class="form-select" required>
          <option value="">Seleccionar...</option>
          <option value="baja">Baja</option>
          <option value="media">Media</option>
          <option value="alta">Alta</option>
          <option value="urgente">Urgente</option>
        </select>
      </div>
      <div class="mb-3">
        <label for="duracion_estimada" class="form-label">Duración Estimada</label>
        <input type="text" name="duracion_estimada" id="duracion_estimada" class="form-control">
      </div>
      <div class="mb-3">
        <label for="proyecto_area" class="form-label">Proyecto/Área</label>
        <input type="text" name="proyecto_area" id="proyecto_area" class="form-control">
      </div>
      <div class="mb-3">
        <label for="estado_avance" class="form-label">Estado de Avance (%)</label>
        <input type="number" name="estado_avance" id="estado_avance" class="form-control" min="0" max="100">
      </div>
      <div class="mb-3">
        <label for="fecha_inicio" class="form-label">Fecha de Inicio</label>
        <input type="date" name="fecha_inicio" id="fecha_inicio" class="form-control">
      </div>
      <div class="mb-3">
        <label for="fecha_entrega" class="form-label">Fecha de Entrega</label>
        <input type="date" name="fecha_entrega" id="fecha_entrega" class="form-control" required>
      </div>
      <div class="mb-3">
        <label for="fecha_finalizacion" class="form-label">Fecha de Finalización</label>
        <input type="date" name="fecha_finalizacion" id="fecha_finalizacion" class="form-control">
      </div>
      <div class="mb-3">
        <label for="comentarios" class="form-label">Comentarios
</label>
        <textarea name="comentarios" id="comentarios" class="form-control"></textarea>
      </div>
      <button type="submit" class="btn btn-primary w-100 mt-5">Guardar Tarea</button>
    </form>
  </div>
  <!-- Enlace a los scripts de Bootstrap 5 JS (si se requieren) -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
        