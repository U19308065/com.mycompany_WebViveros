
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.*;
import dao.Negocio;
import javax.accessibility.AccessibleRole;
/**
 *
 * @author Ricko
 */
public class control extends HttpServlet {

    Negocio obj=new Negocio();
    

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        int op=Integer.parseInt(request.getParameter("opc"));
       
        if (op==1)ingresaU(request,response);
        if(op==2)ingresoU(request, response);
        if (op==3)buscaU(request,response);
        if (op==4)modificaU(request,response);
        if(op==5)ingresoR(request, response);
        if (op==6)buscaR(request,response);
        if (op==7)modificaR(request,response);  
        if (op==9)CerrarC(request,response);          
        if (op==10)ListaEnc(request,response);   
        if (op==11)ListaApa(request,response);
        if (op==12)ListaEncApa(request,response);
    }
    
    protected void ingresoU(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

              Usuario p=new Usuario();
      p.setNombre(request.getParameter("nombre"));
      p.setApellido(request.getParameter("apellido"));
      p.setUsuario(request.getParameter("usuario"));
      p.setContrasena(request.getParameter("contrasena"));
      p.setTipoUsu(request.getParameter("tusu"));

      obj.ingresoU(p);
      String pag="index.jsp";
      //redige a la pagina listado
      request.getRequestDispatcher(pag).forward(request, response);
   
    }    

    protected void ingresaU(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String usu=request.getParameter("Usu");
         String con=request.getParameter("Cont");
         Usuario pre=obj.ingU(usu,con);
         request.setAttribute("dato", pre);
         if (pre!=null){
          String pag="index.jsp";
      request.getRequestDispatcher(pag).forward(request, response);

         } else{
         String pag="Error.jsp";
      request.getRequestDispatcher(pag).forward(request, response);
      
             }     
               
                 
      //redige a la pagina listado
    }
    
    protected void buscaU(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String nrop=request.getParameter("nro");
         Usuario pre=obj.buscarU(nrop);
         request.setAttribute("dato", pre);
          String pag="Paginas/Usuarios/pagEditU.jsp";
      //redige a la pagina listado
      request.getRequestDispatcher(pag).forward(request, response);
    }
    
    
    protected void modificaU(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          Usuario p=new Usuario();
      p.setCod_usu(request.getParameter("cod_usu"));
      p.setNombre(request.getParameter("nombre"));
      p.setApellido(request.getParameter("apellido"));
      p.setUsuario(request.getParameter("usuario"));
      p.setContrasena(request.getParameter("contrasena"));
      p.setTipoUsu(request.getParameter("tusu"));
      obj.cambiaU(p);
      String pag="index.jsp";
      //redige a la pagina listado
      request.getRequestDispatcher(pag).forward(request, response);     
   
    }

    protected void ingresoR(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

              Registro p=new Registro();
      p.setFecha(request.getParameter("fecha"));
      p.setHoraini(request.getParameter("Hini"));
      p.setHoraFin(request.getParameter("Hfin"));
      p.setTmpMax(request.getParameter("tmax"));
      p.setTmpMin(request.getParameter("tmin"));
      p.setCod_Usu(request.getSession().getAttribute("Usuario").toString());

      obj.ingresoR(p);
      String pag="index.jsp";
      //redige a la pagina listado
      request.getRequestDispatcher(pag).forward(request, response);
   
    }             

    protected void CerrarC(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        request.getSession().invalidate();
      String pag="index.jsp";
      //redige a la pagina listado
      request.getRequestDispatcher(pag).forward(request, response);
   
    }        
    
        protected void buscaR(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String nrop=request.getParameter("nro");
         Registro pre=obj.buscarR(nrop);
         request.setAttribute("dato", pre);
          String pag="Paginas/Registros/pagEditR.jsp";
      //redige a la pagina listado
      request.getRequestDispatcher(pag).forward(request, response);
    }    

    protected void modificaR(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          Registro p=new Registro();
      p.setNum_prog(request.getParameter("num_pro"));
      p.setHoraini(request.getParameter("Hini"));
      p.setHoraFin(request.getParameter("Hfin"));
      p.setTmpMax(request.getParameter("tmax"));
      p.setTmpMin(request.getParameter("tmin"));
      p.setCod_Usu(request.getSession().getAttribute("Usuario").toString());      
      obj.cambiaR(p);
      String pag="index.jsp";
      //redige a la pagina listado
      request.getRequestDispatcher(pag).forward(request, response);     
   
    }    

 /*   protected void ListaEnc(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String cod=request.getParameter("fecha");
        String pag="Paginas/Reportes/ListadoEnc.jsp";
        request.setAttribute("dato", obj.lisRegEnc(cod));
        request.getRequestDispatcher(pag).forward(request, response);


    }*/
     protected void ListaEnc(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pag="Paginas/Reportes/ListadoEnc.jsp";
        request.setAttribute("dato", request.getParameter("fecha"));
        request.getRequestDispatcher(pag).forward(request, response);


    }   

     protected void ListaApa(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pag="Paginas/Reportes/ListadoApa.jsp";
        request.setAttribute("dato", request.getParameter("fecha"));
        request.getRequestDispatcher(pag).forward(request, response);


    }        

     protected void ListaEncApa(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pag="Paginas/Reportes/ListadoEncApa.jsp";
        request.setAttribute("dato", request.getParameter("fecha"));
        request.getRequestDispatcher(pag).forward(request, response);


    }   
     
     
     
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
