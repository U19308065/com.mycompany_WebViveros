<%-- 
    Document   : Ingreso
    Created on : 19 jun. 2023, 10:09:08
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
    <link href="css/bootstrap.min.css?ver=1.2.0" rel="stylesheet">
    <link href="css/font-awesome/css/all.min.css?ver=1.2.0" rel="stylesheet">
    <link href="css/main.css?ver=1.2.0" rel="stylesheet">
</head>

  <body id="top"><div class="site-wrapper">
  <div class="site-wrapper-inner">
    <div class="cover-container">
    <%Usuario pre=(Usuario)request.getAttribute("dato");
    if (pre!=null) {
        HttpSession s=request.getSession();
        s.setAttribute("Tipo", pre.getTipoUsu());
        s.setAttribute("Nombre", pre.getNombre());
        s.setAttribute("Usuario", pre.getCod_usu());        
        
        }
    %>

    
<%@include file="includes/cabecera.jsp"%>    
    
   <!-- Page Header Start -->

      <div class="inner cover">
        <h1 class="cover-heading">Bienvenidos a Viveros America</h1>
        <p class="lead cover-copy">Gracias por visitar la web de programacion de horas</p>
      </div>



<%@include file="includes/pie.jsp"%>    
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>

  </div>
</div>    
    
</body>

</html>
