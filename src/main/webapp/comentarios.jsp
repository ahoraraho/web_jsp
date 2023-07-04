<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>reseña</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    </head>

    <body>
        <div class="container m-5">
            <!-- Content here -->
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
                <div class="col-md-5 mt-5">
                    <h2>Escribir una reseña de un producto</h2>

                    <form action="registrar_comentario" method="post">
                        <div class="card">
                            <div class="row">
                                <div class="col-4">
                                    <img src="platano.jpg" style="width: 10rem;" class="card-img-top"
                                        alt="Imagen del producto">
                                </div>
                                <div class="col-8">
                                    <div class="card-body">
                                        <h5 class="card-title">Platano</h5>
                                        <p class="card-text">Caja de 5kg.</p>
                                        <p class="card-text" style="color: red;"><strong>S/. 30.00</strong> </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="usuario" class="form-label">Usuario</label>
                            <input type="text" name="usuario" class="form-control" id="usuario">
                        </div>
                        <div class="mb-3">
                            <label for="calificacion" class="form-label">Califica este Producto</label>
                            <select class="form-select" name="calificacion" id="calificacion" style="color: rgb(202, 177, 13) !important;">
                                <option value="1" style="color:  rgb(202, 177, 13)">&#9733</option>
                                <option value="2" style="color:  rgb(202, 177, 13)">&#9733; &#9733</option>
                                <option value="3" style="color:  rgb(202, 177, 13)">&#9733; &#9733; &#9733</option>
                                <option value="4" style="color:  rgb(202, 177, 13)">&#9733;&#9733;&#9733;&#9733</option>
                                <option value="5" style="color:  rgb(202, 177, 13)">&#9733;&#9733;&#9733;&#9733;&#9733</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label for="titulo" class="form-label">Título</label>
                            <input type="text" class="form-control" name="titulo" id="titulo">
                        </div>
                        <div class="mb-3">
                            <label for="comentario" class="form-label">Comentarios</label>
                            <textarea class="form-control" name="comentario" id="comentario" rows="3"></textarea>
                        </div>
                        <div class="row">
                            <div class="col-8">
                            </div>
                            <div class="col-2">
                                <button type="submit" class="btn btn-secondary"
                                    style="border-color:rgb(226, 178, 20); background-color: rgb(255, 255, 255); color: rgb(233, 186, 29);">Cancelar</button>
                            </div>
                            <div class="col-2">
                                <button type="submit" class="btn btn-primary">Publicar</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
                crossorigin="anonymous"></script>
    </body>

    </html>