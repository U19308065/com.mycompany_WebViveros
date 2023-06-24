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
        <h3 class="cover-heading">Listado de Encendido y Apagado</h3>
     
        <table class="table table-hover">
            <tr class="bg-light text-gray"><th>Programacion<th>Fecha<th>Hora Inicio<th>Hora Fin<th>Temp. Max<th>Temp. Min<th>Hora Enc.<th>Temp. Enc.<th>Hora Apa.<th>Temp. Apa.<th>Programador<th>

             <%
               String nro=(String)request.getAttribute("dato");
               Negocio obj=new Negocio();
               for(Especial x:obj.lisRegEncApa(nro)){
               out.print("<tr class=bg-light><td>"+x.getTxt1()+"<td>"+x.getTxt2()+"<td>"+x.getTxt3()+"<td>"+
               x.getTxt4()+"<td>"+x.getTxt5()+"<td>"+x.getTxt6()+"<td>"+x.getTxt7()+"<td>"+x.getTxt8()+"<td>"+x.getTxt9()+"<td>"+x.getTxt10()+"<td>"+x.getTxt11()+"<td>");
                  }
                 %>
                    
        </table>
      </div>  

                    
        </table>

    <div>
        <br>
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

