<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.resultado.puntuacion.*"%>
<!DOCTYPE html>
<html lang="es">
<head>

<title>Hiroshima</title>

<link rel="shortcut icon" href="imagenes/icono.png" type="image/x-icon">
<meta charset="UTF-8">
<link href="css/estilos.css" rel="stylesheet" type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Nastaliq+Urdu&display=swap"
	rel="stylesheet">

</head>
<body>

	<header>
		<div class="foto4">
			<div class="navi">
				<nav>
					<a href="index.jsp"> Inicio </a> <a href="Lugares_interes.jsp">Lugares
						Turísticos</a> <a href="Comida_tipica.jsp">Comida Típica</a> <a
						href="Mapa.jsp"> Mapa </a> <a href="Formulario_evaluacion.jsp">Formulario
						Evaluación</a>
				</nav>
				<%
				usuario u = new usuario();
				%>
			</div>
			<section class="textos">
				<h1>Formulario</h1>

			</section>
	</header>
	<main>



<section class="contenedor-2" id="hoteles">
		<div class="textos_1">
			<h2 class="titulo">Evaluación</h2>
			<br> <br>
			<h2 class="titulo">Evaluación sobre la página web</h2>
			<br> <br>
			
				<form action="Resolucion.jsp" method="post">

					<table border="1" bgcolor="#FFFFFF" style="margin: 0 auto;">
						<tr>
							<br>
							<td bgcolor="#FFFFFF" , style="border: solid 4px black;">Digite
								su nombre :</td>
							<td style="border: solid 4px black;"><input type="text"
								name="txtNombre" maxlength="50" pattern="[a-z A-Z]{1,50}"
								required /></td>
						</tr>
						<tr>
							<td bgcolor="#FFFFFF" , style="border: solid 4px black;">Cargue
								su foto :</td>
							<td style="border: solid 4px black;"><input type="file"
								name="filefoto" accept=".jpg, .jpeg, .png" id="foto" required />
								<input type="text" name="txtfoto" id="txtfoto" /></td>
						</tr>
				
					</table>

					<table border="5" bgcolor="#FFFFFF" style="margin: 0 auto;">
						<tr>
							<td>La superficie total de Hiroshima es</td>
							<td><select name="cmbpregunta1">
									<option value="905">905 km²</option>
									<option value="1105">1105 km²</option>
									<option value="1500">1500 km²</option>
							</select></td>

						</tr>



						<p>
							<input type="submit" value="Enviar datos">
						</p>
						<tr>
							<td>¿Cúal es la comida típica de Hiroshima?</td>
							<td><select name="cmbpregunta2">
									<option value="Okonomiyaki">Okonomiyaki</option>
									<option value="Ramen">Ramen</option>
									<option value="Pescado">Pescado</option>
							</select></td>

						</tr>

						<tr>
							<td>Los Jardínes Shukkeien datan de hace más de:</td>
							<td><select name="cmbpregunta3">
									<option value="200">200 años</option>
									<option value="350">350 años</option>
									<option value="400">400 años</option>
									<option value="700">700 años</option>
							</select></td>

						</tr>


						<tr>
							<td>¿En qué pais se encuentra Hiroshima?</td>
							<td><select name="cmbpregunta4">
									<option value="Japón">Japón</option>
									<option value="China">China</option>
									<option value="Australia">Autralia</option>
									<option value="Perú">Perú</option>
							</select></td>

						</tr>


						<tr>
							<td>¿En qué año se destruyó Castillo de Hiroshima</td>
							<td><select name="cmbpregunta5">
									<option value="1939">1939</option>
									<option value="1942">1942</option>
									<option value="1950">1950</option>
									<option value="1945">1945</option>
							</select></td>

						</tr>

						<td><input type="submit"></td>
						<td><input type="reset" /></td>
						</tr>
					</table>
			</section>
			</form>

			<section class="contenedor-3">
				<br> <br> <a href="Calificaciones.jsp">Ver
					Calificaciones</a> <br> <br>


				<form action="Puntaje.jsp" method="post">
					<h2 class="titulo">Ingresar puntuacion de página</h2>
					<br> <br>

					<p>
						Ingrese su usuario:
						
						<%
					String combo = u.mostrarUsuarios();
					out.print(combo);
					%>
					</p>

					<br>
					<div style="text-align: center">
						<label for="temp">Escoga una puntuación para la pagina del
							1 al 5:</label> <br> <br> <input type="range" name="txtrango"
							min="0" max="5" value="1" step="1" id="temp" list="valoracion"
							oninput="rangeValue.innerText = this.value"> <label
							style="font-size: 50px; padding: 8px 12px;" id="rangeValue">1
							.</label>

					</div>

					<h2>Sugerencias sobre la pagina web</h2>
					<br> <br> <input type="text" name="txtsugerencia"
						size="130" pattern="[a-z A-Z0-9 ,-.()%@]{1,150}" maxlength="130" />
					<br> <br> <br>
					<div style="text-align: center">
						<input type="submit" />
					</div>

					<br> <br>
					<h2>Sugerencias y Puntuaciones</h2>
					<br> <br>
					<h3 style="color: white">
						<%
						puntaje va = new puntaje();
						out.print(va.consultarValoraciones());
						%>
					</h3>
		</div>
		</section>
		</section>
	</main>

</body>
<script>
		let foto=document.getElementById("foto");
		let setDataFoto=document.getElementById("txtfoto");
		
		foto.addEventListener("change", function() {
  		console.log(this.files);
			const reader = new FileReader();
  		reader.addEventListener("load", () => {
  		setDataFoto.value=reader.result;
  		});
  		reader.readAsDataURL(this.files[0]);
  		console.log(reader);
		});		 
		
		</script>

</html>