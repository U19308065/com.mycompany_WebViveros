<%-- 
    Document   : cabecera
    Created on : 19 jun. 2023, 11:18:30
    Author     : Ricko
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="modelo.*,dao.*,java.util.*" %>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
      <div class="masthead clearfix">
        <div class="inner">
          <h3 class="masthead-brand">Viveros America</h3>
          <nav class="nav nav-masthead">
      
            <% HttpSession s=request.getSession();
            String tip=(String)s.getAttribute("Tipo");
            String nomb=(String)s.getAttribute("Nombre");
            
    if (tip==null) {     %>
    
        <!-- Navbar Start -->
        <table>
            <tr>
                <th><a class="nav-link nav-social" href="index.jsp" title="Principal"><img class="principal" src="imagenes/home.ico" height="22"></a></th>
                <th><a class="nav-link nav-social" href="Paginas/Ingreso.jsp">Ingresar</a></th>            
                <th><a class="nav-link nav-social" href="Contactanos.jsp" title="Contactanos"><img class="principal" src="imagenes/contact.ico" height="22"></a></th>
                <th><a class="nav-link nav-social" href="Ayuda.jsp" title="Ayuda"> <img class="principal" src="imagenes/help.ico" height="22"></a></th>       
             </tr>           
        </table>

                        <!-- Navbar End -->

    
    <%
                } else if(tip.equals("Administrador")){%>
    <!-- Navbar Start -->
    
        <table>
            <tr>
                <th><a class="nav-link nav-social" title="Usuario"><img class="principal" src="imagenes/user.ico" height="22"><%=nomb%></a></th>            
                <th><a class="nav-link nav-social" href="index.jsp" title="Principal"><img class="principal" src="imagenes/home.ico" height="22"></a></th>
                <th><a class="nav-link dropdown-toggle" data-toggle="dropdown" title="Usuarios">Usuarios</a>
                        <div class="dropdown-menu">
                            <a href="Paginas/Usuarios/IngresoU.jsp" class="dropdown-item">Nuevo</a>
                            <a href="Paginas/Usuarios/pagListadoU.jsp" class="dropdown-item">Modificar</a>
                        </div></th>                   
                <th><a class="nav-link dropdown-toggle" data-toggle="dropdown" title="Registros">Registro</a>
                        <div class="dropdown-menu">
                            <a href="Paginas/Registros/IngresoR.jsp" class="dropdown-item">Nuevo</a>
                            <a href="Paginas/Registros/pagListadoR.jsp"  class="dropdown-item">Modificar</a>
                        </div></th>
                <th><a class="nav-link nav-social" href="Paginas/Reportes/IReportes.jsp"title="Reportes">Reportes</a></th>        
                <th><a class="nav-link nav-social" href="Contactanos.jsp" title="Contactanos"><img class="principal" src="imagenes/contact.ico" height="22"></a></th>
                <th><a class="nav-link nav-social" href="Ayuda.jsp" title="Ayuda"> <img class="principal" src="imagenes/help.ico" height="22"></a></th>        
                <th><a class="nav-link nav-social" href="control?opc=9" title="Salir"><img  class="principal" src="imagenes/logout.ico" height="22"></a></th>  
            </tr>           
        </table>                       
    <!-- Navbar End -->
            
                
            <%    } else {%>
    <!-- Navbar Start -->
    
        <table>
            <tr>
                <th><a class="nav-link nav-social" title="Usuario"><img class="principal" src="imagenes/user.ico" height="22"><%=nomb%></a></th>            
                <th><a class="nav-link nav-social" href="index.jsp" title="Principal"><img class="principal" src="imagenes/home.ico" height="22"></a></th>
                <th><a class="nav-link dropdown-toggle" data-toggle="dropdown" title="Registros">Registro</a>
                        <div class="dropdown-menu">
                            <a href="Paginas/Registros/IngresoR.jsp" class="dropdown-item">Nuevo</a>
                            <a href="Paginas/Registros/pagListadoR.jsp"  class="dropdown-item">Modificar</a>
                        </div></th>
                <th><a class="nav-link nav-social" href="Paginas/Reportes/IReportes.jsp"title="Reportes">Reportes</a></th>        
                <th><a class="nav-link nav-social" href="Contactanos.jsp" title="Contactanos"><img class="principal" src="imagenes/contact.ico" height="22"></a></th>
                <th><a class="nav-link nav-social" href="Ayuda.jsp" title="Ayuda"> <img class="principal" src="imagenes/help.ico" height="22"></a></th>        
                <th><a class="nav-link nav-social" href="control?opc=9" title="Salir"><img  class="principal" src="imagenes/logout.ico" height="22"></a></th>  
            </tr>           
        </table>                       
    <!-- Navbar End -->
  
            
                
            <%}              %>  
          </nav>
        </div>
      </div>        
    </body>
</html>
