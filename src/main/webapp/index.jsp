<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html>
    <html lang="EA">

<<<<<<< HEAD
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <title>Tasc.com - Inicio</title>

        <meta content="" name="task">
        <meta content="" name="tareas personalizadas">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Saira:wght@500;600;700&display=swap"
            rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>

        <header>
            <%@include file="layout/header.jsp" %>
        </header>
        <main>
        
=======
<div class="container mt-5">
	<div class="row">
		<div class="col-md-3">
		MENU
		<ul>
			<li><a href="estudiante_registrar.jsp">Registrar estudiantes</a></li>
			<li><a href="estudiante_lista.jsp">Gestionar estudiantes</a></li>
			
			<li><a href="comentarios.jsp">Rese�a</a></li>
			<li><a href="AllResenas.jsp">Ver Rese�as</a></li>
			
			<li><a href="addTask.jsp">Add Tast</a></li>
			<li><a href="taskView.jsp">Tasts</a></li>
		</ul>
				
		
		</div>
		<div class="col-md-9">
		
		<h1>Calificacion de productos</h1>


>>>>>>> d6da7433971e3e7a541e905d962bf786760312b6
		<%
String aalertt = ""; // Declarar las variables fuera del bloque JSP
String conten = ""; // Declarar las variables fuera del bloque JSP

if (request.getParameter("msj") != null) {
    String msj = request.getParameter("msj");
<<<<<<< HEAD
    String error = request.getParameter("error");
    switch (msj) {
        case "addOk":
            aalertt = "alert-success";
            conten = "Agregada correctamente";
            break;
        case "addNOk":
            aalertt = "alert-warning";
            conten = "Ocurrio un error, no se guardo";
            break;
        case "upOk":
            aalertt = "alert-success";
            conten = "Actualizada correctamente";
            break;
        case "upNOk":
            aalertt = "alert-warning";
            conten = "Ocurrio un error, no se actualiz�";
            break;
        case "delOk":
            aalertt = "alert-danger";
            conten = "Eliminada correctamente";
=======

    switch (msj) {
        case "addOk":
            aalertt = "alert-success";
            conten = "Agregado correctamente";
            break;
        case "addNOk":
            aalertt = "alert-warning";
            conten = "Ocurri� un error, no se agreg�";
            break;
        case "upOk":
            aalertt = "alert-success";
            conten = "Actualizado correctamente";
            break;
        case "upNOk":
            aalertt = "alert-warning";
            conten = "Ocurri� un error, no se actualiz�";
            break;
        case "delOk":
            aalertt = "alert-danger";
            conten = "Eliminado correctamente";
>>>>>>> d6da7433971e3e7a541e905d962bf786760312b6
            break;
        default:
            // Opcionalmente, aqu� puedes manejar un caso predeterminado si el valor de msj no coincide con ninguno de los casos anteriores.
            break;
    }
%>

<<<<<<< HEAD
<div>
    <div class="row justify-content-center">
        <div class="col-md-4">
            <div class="alert <%= aalertt %> alert-dismissible fade show" role="alert">
                <strong>Tarea</strong> <%= conten + " " + error%>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </div>
    </div>
=======
<div class="alert <%= aalertt %> alert-dismissible fade show" role="alert">
    <strong>Estudiante!</strong> <%= conten %>
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
}
%>


				
		</div>
	</div>
>>>>>>> d6da7433971e3e7a541e905d962bf786760312b6
</div>

<%
}
%>
            <div class="container-fluid py-5 my-1">
                <div class="container pt-5">
                    <div class="row g-5">
                        <div class="col-lg-5 col-md-6 col-sm-12 wow fadeIn" data-wow-delay=".3s">
                            <div class="h-100 position-relative">
                                <img src="img/about-1.jpg" class="img-fluid w-75 rounded" alt=""
                                    style="margin-bottom: 25%;">
                                <div class="position-absolute w-75" style="top: 25%; left: 25%;">
                                    <img src="img/about-2.jpg" class="img-fluid w-100 rounded" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-6 col-sm-12 wow fadeIn" data-wow-delay=".5s">
                            <h1 class="text-secondary">Tasc.com</h1>
                            <h5 class="mb-4 text-primary">Acerca de Nosotros</h5>
                            <p>
                                En Tasc.com, somos una empresa apasionada por la tecnolog�a y nos enorgullecemos de
                                ofrecer soluciones
                                innovadoras y personalizadas para las necesidades de tu empresa. Nuestro objetivo es
                                ayudarte a aprovechar
                                al m�ximo el potencial de la tecnolog�a y transformar tu negocio en un verdadero �xito.
                            </p>
                            <p class="mb-4">
                                Contamos con un equipo excepcional de profesionales altamente capacitados y
                                experimentados en diversas �reas,
                                desde dise�o web y desarrollo de software hasta marketing digital y seguridad
                                inform�tica. Nuestros expertos
                                est�n comprometidos a brindarte soluciones a medida que se adapten perfectamente a tus
                                objetivos comerciales
                                y te permitan destacar en el mercado.
                            </p>
                            <a href="tel:+1234567890"
                                class="btn btn-secondary rounded-pill px-5 py-3 text-white">�Ll�manos hoy mismo!</a>
                        </div>

                    </div>
                </div>
            </div>


            <div class="container-fluid servicios py-5 mb-5">
                <div class="container">
                    <div class="text-center mx-auto pb-5 wow fadeIn" data-wow-delay=".3s" style="max-width: 600px;">
                        <h1 class="text-secondary">Servicios personalizados para su empresa</h1>
                        <h3 class="text-primary">Nuestros Servicios</h3>
                    </div>
                    <div class="row g-5 servicios-inner">
                        <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".3s">
                            <div class="servicios-item bg-dark rounded">
                                <div class="p-4 text-center servicios-content">
                                    <div class="servicios-content-icon">
                                        <i class="fa fa-code fa-7x mb-4 text-primary"></i>
                                        <h4 class="mb-3">Dise�o Web</h4>
                                        <p class="mb-4">Creamos sitios web personalizados que se adaptan a las
                                            necesidades
                                            de su empresa.</p>
                                        <a href="" class="btn btn-secondary text-white px-5 py-3 rounded-pill">Leer
                                            mas</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".5s">
                            <div class="servicios-item bg-dark rounded">
                                <div class="p-4 text-center servicios-content">
                                    <div class="servicios-content-icon">
                                        <i class="fa fa-file-code fa-7x mb-4 text-primary"></i>
                                        <h4 class="mb-3">Desarrollo Web</h4>
                                        <p class="mb-4">Desarrollamos software a medida para su empresa, que le ayude a
                                            alcanzar sus objetivos.</p>
                                        <a href="" class="btn btn-secondary text-white px-5 py-3 rounded-pill">Leer
                                            mas</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 wow fadeIn" data-wow-delay=".7s">
                            <div class="servicios-item bg-dark rounded">
                                <div class="p-4 text-center servicios-content">
                                    <div class="servicios-content-icon">
                                        <i class="fa fa-external-link-alt fa-7x mb-4 text-primary"></i>
                                        <h4 class="mb-3">Dise�o UX/UI</h4>
                                        <p class="mb-4">Creamos interfaces de usuario y experiencias de usuario que sean
                                            f�ciles de usar y que satisfagan las necesidades de sus clientes.</p>
                                        <a href="" class="btn btn-secondary text-white px-5 py-3 rounded-pill">Leer
                                            mas</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </main>

        <footer>
            <%@include file="layout/footer.jsp" %>
        </footer>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <script src="js/main.js"></script>
    </body>

    </html>