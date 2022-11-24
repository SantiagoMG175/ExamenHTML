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

	<%
	String pregunta1=request.getParameter("cmbpregunta1");
	String pregunta2=request.getParameter("cmbpregunta2");
	String pregunta3=request.getParameter("cmbpregunta3");
	String pregunta4=request.getParameter("cmbpregunta4");
	String pregunta5=request.getParameter("cmbpregunta5");
 	String nombre=request.getParameter("txtNombre");
 	String foto=request.getParameter("txtfoto");

 	
 	int nota1=1;
 	int nota2=1;
 	int nota3=1;
 	int nota5=1;
 	int nota4=1;
 	int notafinal=1;
 	
 	if(pregunta1.equals("905")){
 		nota1=2;
 	}else{
 		nota1=0;
 	}
 	
 
 	if(pregunta2.equals("Okonomiyaki")){
 		nota2=2;
 	}else{
 		nota2=0;
 	}
 	
	if(pregunta3.equals("400")){
 		nota3=2;
 	}else{
 		nota3=0;
 	}
 	
 	if(pregunta4.equals("Japón")){
 		nota4=2;
 	}else{
 		nota4=0;
 	}
 	
 	if(pregunta5.equals("1945")){
 		nota5=2;
 	}else{
 		nota5=0;
 	}
 	
 	notafinal=nota1+nota2+nota3+nota4+nota5;
 	
 	 
 	puntuacion notas = new puntuacion();
	int idno=notas.consultarmaxID()+1;
	int idus=notas.consultarmaxID()+1;
 	notas.ingresarNotas(idno, nota1, nota2, nota3, nota4, nota5, notafinal, nombre); 
	
 	usuario u = new usuario();
 	u.ingresarUsuario(idus,nombre,foto);
 	
 	response.sendRedirect("Formulario_evaluacion.jsp");
 	%>




</body>
</html>