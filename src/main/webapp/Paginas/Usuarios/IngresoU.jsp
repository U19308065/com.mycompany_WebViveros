<%-- 
    Document   : IngresoU
    Created on : 19 jun. 2023, 17:16:14
    Author     : Ricko
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.*,dao.*,java.util.*" %>
<%@page session="true"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Viveros America</title>
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="crossorigin"/>
        <link rel="preload" as="style" href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;700&amp;display=swap"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;700&amp;display=swap" media="print" onload="this.media='all'"/>
        <noscript>
          <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;700&amp;display=swap"/>
        </noscript>
        <link href="../../css/bootstrap.min.css?ver=1.2.0" rel="stylesheet">
        <link href="../../css/font-awesome/css/all.min.css?ver=1.2.0" rel="stylesheet">
        <link href="../../css/main.css?ver=1.2.0" rel="stylesheet">
    </head>
<body id="top"><div class="site-wrapper">
  <div class="site-wrapper-inner">
    <div class="cover-container">        
<%@include file="../../includes/cabecera2.jsp"%>            


    <!-- Page Header Start -->
      <div class="inner cover-container">
        <h3 class="cover-copy">Ingresar Usuarios</h3>
    <!-- Page Header Start -->     
        <form id="form" action="../../control" method="post">
        <input type="hidden" name="opc" value="2">             
		<table align="center">
				<tr><th><label>Nombre</label></th><th><input type="text" name="nombre" required><br></th></tr> 
				<tr><th><label>Apellido</label></th><th><input type="text" name="apellido" required><br></th></tr> 
				<tr><th><label>Usuario</label></th><th><input type="text" name="usuario" required><br></th></tr> 
				<tr><th><label>Contraseña</label></th><th><input type="text" name="contrasena" required><br></th></tr> 
				<tr><th><label>Tipo Usuario</label></th><th>		<select name="tusu">
					<option>Usuario</option>
					<option>Administrador</option></select></th></tr> 
                        <tr><th><input type="hidden" name="valor" value="agregar"><input type="submit" name="aceptar" value="Aceptar"></th>
			<th><input type="reset" name="cancelar" value="Cancelar"></th></tr>				
		</table>		
	</form>
    
        </div>

<%@include file="../../includes/pie.jsp"%>  
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
  </div>
</div>    
</body>

</html>