<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.resultado.puntuacion.*"   %>
<!DOCTYPE html>
<html lang="es">
<head>

<title> Hiroshima </title>

<link rel="shortcut icon" href ="imagenes/icono.png" type = "image/x-icon">
<meta charset ="UTF-8">
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Nastaliq+Urdu&display=swap" rel="stylesheet">

</head>
<body>

		<header>  
		<div class = "foto5">
		<div class = "navi">
<nav>
 <a href ="index.jsp"> Inicio </a>
  <a href ="Lugares_interes.jsp">Lugares Tur�sticos</a>
   <a href ="Comida_tipica.jsp">Comida T�pica</a>
    <a href ="Mapa.jsp"> Mapa </a>
     <a href ="Formulario_evaluacion.jsp">Formulario Evaluaci�n</a>
     </nav>
     </div>
			<section class="textos">
			<h1> Calificaciones </h1> <br><br><br>
			
	</section>
	
	</header>
		
			<main>
		
			  <section class = "flex_conte">
			   <h2>Calificaciones m�s altas de la evaluaci�n</h2>
                
                <br>
                <br>
                <br>
              
			<%
			puntuacion puntuacion = new puntuacion();
			out.print(puntuacion.consultarTodo());
			%>	
			
			</section>
			
		 <footer class="footer">
                <div class="parte1">
                <div class="box">
                        <figure>
                            <a>
                                <img src="imagenes/logo.png"  height="200px" width="600px">
                            </a>
                        </figure>
                    </div>
                    <div class="box">
                        <h2>INFORMACI�N  </h2>
                        <p>INGENIER�A EN CIENCIAS DE LA COMPUTACI�N</p>
                        <p>Universidad Polit�cnica Salesiana</p>
                    </div>
                    <div class="box">
                        <h2>S�GUEME</h2>
                        <div class="redes">
                            <a href="https://www.facebook.com/Gato175B">
                                <img src="imagenes/iconos/facebook.png" alt="Facebook">
                            </a>
                            <a href="https://www.instagram.com/gato_175/">
                                <img src="imagenes/iconos/instagram.png" alt="Instagram">
                            </a>
                            <a href="https://twitter.com/TheGathoxGamer">
                                <img src="imagenes/iconos/twitter.png" alt="Twitter">
                            </a>
                        </div>
                    </div>
                </div>
               
            </footer>
		
	
	
				

			</main>

</body>
</html>