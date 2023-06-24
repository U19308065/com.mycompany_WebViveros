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
        <h3 class="cover-copy">Reportes de Equipos</h3>
    <!-- Page Header Start -->     
        <form id="form1" name="form1" method="post">             
		<table align="center">
                    <tr><th><label>Fecha:</label></th><th><input type="date" name="fecha" placeholder="dd-mm-yyyy"  value="2023-06-17" required><br></th></tr> 
                    <tr><th colspan="2">&nbsp</th></tr>
                    <tr><th colspan="2">&nbsp</th></tr>
                    <tr><th colspan="2"><input type="button" value="Listar Encendido" id="nuevo" name="nuevo" onclick="document.form1.action = '../../control?opc=10';document.form1.submit()" onkeypress="document.form1.action = '../../control?opc=10'; document.form1.submit()" /></th></tr> 
                    <tr><th colspan="2"><input type="button" value="Listar Apagado" id="nuevo" name="nuevo1" onclick="document.form1.action = '../../control?opc=11';document.form1.submit()" onkeypress="document.form1.action = '../../control?opc=11'; document.form1.submit()" /></th></tr> 
                    <tr><th colspan="2"><input type="button" value="Listar Encendido-Apagado" id="nuevo" name="nuevo2" onclick="document.form1.action = '../../control?opc=12';document.form1.submit()" onkeypress="document.form1.action = '../../control?opc=12'; document.form1.submit()" /></th></tr> 
                        <tr><th></th>
		</table>		
        </form>    
    
        </div>             
    <!-- Footer Start -->
<%@include file="../../includes/pie.jsp"%>  
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
  </div>
</div>    
</body>

</html>

