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
        <link href="css/bootstrap.min.css?ver=1.2.0" rel="stylesheet">
        <link href="css/font-awesome/css/all.min.css?ver=1.2.0" rel="stylesheet">
        <link href="css/main.css?ver=1.2.0" rel="stylesheet">
    </head>
<body id="top"><div class="site-wrapper">
  <div class="site-wrapper-inner">
    <div class="cover-container">        
<%@include file="../../includes/cabecera.jsp"%>            



    <!-- Page Header Start -->
      <div class="inner cover-container">
        <h3 class="cover-copy">Modificar Registros</h3>
    <!-- Page Header Start -->
    <%Registro pre=(Registro)request.getAttribute("dato");
        %>        
   
        <form id="form" action="control" method="post">
        <input type="hidden" name="opc" value="7">             
		<table align="center">
                    <tr><th><label>Numero</label></th><th><input type="text" name="num_pro" value="<%=pre.getNum_prog()%>" readonly><br></th></tr> 
                    <tr><th><label>Fecha</label></th><th><input type="date" name="fecha" placeholder="dd-mm-yyyy" min="2023-06-09" value="<%=pre.getFecha()%>" readonly><br></th></tr> 
                    <tr><th><label>Hora Inicial</label></th><th><input type="Time" name="Hini" value="<%=pre.getHoraini()%>"><br></th></tr> 
		<tr><th><label>Hora Final</label></th><th><input type="Time" name="Hfin" value="<%=pre.getHoraFin()%>"><br></th></tr> 
                <tr><th><label>Temperatura Maxima</label></th><th><input type="text" name="tmax"  value="<%=pre.getTmpMax()%>"><br></th></tr> 
		<tr><th><label>Temperatura Minima</label></th><th><input type="text" name="tmin"  value="<%=pre.getTmpMin()%>"><br></th></tr> 


			<tr><th><input type="hidden" name="valor" value="agregar"><input type="submit" name="aceptar" value="Aceptar"></th>
		<th><input type="button" value="Cancelar" onClick="history.go(-1);"></th></tr>	
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