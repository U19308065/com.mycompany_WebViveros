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
        <h3 class="cover-heading">Listado de Usuarios</h3>
        <table class="table table-hover">
            <tr class="bg-light text-gray"><th>Codigo<th>Cliente<th>Usuario<th>TipoUsuario
                <th>Modificar
             <%
               Negocio obj=new Negocio();
               for(Usuario x:obj.listadoU()){
               out.print("<tr class=bg-light><td>"+x.getCod_usu()+"<td>"+x.getNombre()+" "+x.getApellido()+"<td>"+
               x.getUsuario()+"<td>"+x.getTipoUsu());
               %>
                <td><a href="../../control?opc=3&nro=<%=x.getCod_usu()%>"><p style="color:blue;">Edit</p></a>
                    <%
                  }
                 %>
                    
        </table>
     
      </div>    
    <!-- Page Header Start -->
<%@include file="../../includes/pie.jsp"%>  
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
  </div>
</div>    
</body>

</html>

