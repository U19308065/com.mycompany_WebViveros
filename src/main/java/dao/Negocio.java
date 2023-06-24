package dao;
import modelo.*;
import java.sql.*;
import java.util.*;
import util.MySQLConexion;

public class Negocio {
//crear los metodos para listar los registros
        public void ingresoU(Usuario v){
     Connection cn=MySQLConexion.getConexion();
     try{
         String cad="INSERT INTO `tab_usuario` (`nombre`, `apellido`, `Usuario`, `Contraseña`,`TipoUsu`) VALUES(?,?,?,?,?);";
         PreparedStatement st=cn.prepareStatement(cad);
         st.setString(1, v.getNombre());
         st.setString(2, v.getApellido());
         st.setString(3, v.getUsuario());
         st.setString(4, v.getContrasena());
         st.setString(5,v.getTipoUsu());
         st.executeUpdate();
     }catch(Exception ex){
        ex.printStackTrace();
     }
     }

            public Usuario buscarU(String nro){
        Connection cn=MySQLConexion.getConexion();
        Usuario p=null;
        String sql="SELECT * FROM `tab_usuario` WHERE `Cod_Usu`=?";
        try{PreparedStatement st=cn.prepareStatement(sql);st.setString(1,nro);ResultSet rs=st.executeQuery();
        //llevo a un arraylist
            if(rs.next())
            {
                p=new Usuario();
              p.setCod_usu(rs.getString(1));
              p.setNombre(rs.getString(2));
              p.setApellido(rs.getString(3));
              p.setUsuario(rs.getString(4));
              p.setContrasena(rs.getString(5));
              p.setTipoUsu(rs.getString(6));
            }
        }catch(Exception ex){
        ex.printStackTrace();
        }
        return p;
    }  

            public Usuario ingU(String usu, String con){
        Connection cn=MySQLConexion.getConexion();
        Usuario p=null;
        String sql="SELECT * FROM `tab_usuario` WHERE `usuario`=? and `contraseña`=?";
        try{PreparedStatement st=cn.prepareStatement(sql);
        st.setString(1,usu);
        st.setString(2,con);
        ResultSet rs=st.executeQuery();
        //llevo a un arraylist
            if(rs.next())
            {
                p=new Usuario();
              p.setCod_usu(rs.getString(1));
              p.setNombre(rs.getString(2));
              p.setApellido(rs.getString(3));
              p.setUsuario(rs.getString(4));
              p.setContrasena(rs.getString(5));
              p.setTipoUsu(rs.getString(6));
            }
        }catch(Exception ex){
        ex.printStackTrace();
        }
        return p;
    }              
            
            public void cambiaU(Usuario p){
     Connection cn=MySQLConexion.getConexion();
     try{
         String cad="update tab_usuario set `Contraseña`=?,`TipoUsu`=? where `Cod_Usu`=?";
         PreparedStatement st=cn.prepareStatement(cad);
         st.setString(1, p.getContrasena());
         st.setString(2, p.getTipoUsu());
         st.setString(3, p.getCod_usu());
         st.executeUpdate();
     }catch(Exception ex){
        ex.printStackTrace();
     }
     }

public List<Usuario> listadoU(){
      Connection cn=MySQLConexion.getConexion();
      List<Usuario> lis=new ArrayList();
      String sql="SELECT * FROM `tab_usuario` ";
      try{
          PreparedStatement st=cn.prepareStatement(sql);
          ResultSet rs=st.executeQuery();
          //llevo a un arraylist
          while(rs.next()){
              Usuario p=new Usuario();
              p.setCod_usu(rs.getString(1));
              p.setNombre(rs.getString(2));
              p.setApellido(rs.getString(3));
              p.setUsuario(rs.getString(4));
              p.setContrasena(rs.getString(5));
              p.setTipoUsu(rs.getString(6));
              lis.add(p);
          }
      }catch(Exception ex){
          ex.printStackTrace();
      }
     return lis;   
    }

       public void ingresoR(Registro v){
     Connection cn=MySQLConexion.getConexion();
     try{
         String cad="INSERT INTO `tab_registro` ( `Fecha`, `HoraIni`, `HoraFin`, `tmpMax`, `tmpMin`, `Cod_Usu`) VALUES (?,?,?,?,?,?);";
         PreparedStatement st=cn.prepareStatement(cad);
         st.setString(1, v.getFecha());         
         st.setString(2, v.getHoraini());
         st.setString(3, v.getHoraFin());
         st.setString(4, v.getTmpMax());
         st.setString(5, v.getTmpMin());
         st.setString(6,v.getCod_Usu());
         st.executeUpdate();
     }catch(Exception ex){
        ex.printStackTrace();
     }
     }

    public Registro buscarR(String nro){
        Connection cn=MySQLConexion.getConexion();
        Registro p=null;
        String sql="SELECT * FROM `tab_registro` WHERE `Num_prog`=?";
        try{PreparedStatement st=cn.prepareStatement(sql);st.setString(1,nro);ResultSet rs=st.executeQuery();
        //llevo a un arraylist
            if(rs.next())
            {
              p = new Registro();
              p.setNum_prog(rs.getString(1));
              p.setFecha(rs.getString(2));
              p.setHoraini(rs.getString(3));
              p.setHoraFin(rs.getString(4));
              p.setTmpMax(rs.getString(5));
              p.setTmpMin(rs.getString(6));
              p.setCod_Usu(rs.getString(7));
              
            }
        }catch(Exception ex){
        ex.printStackTrace();
        }
        return p;
    }  
        
            public void cambiaR(Registro p){
     Connection cn=MySQLConexion.getConexion();
     try{
         String cad="update tab_registro set `HoraIni`=?, `HoraFin`=?, `tmpMax`=?, `tmpMin`=?, `Cod_Usu`=? where `Num_prog`=?";
         PreparedStatement st=cn.prepareStatement(cad);
         st.setString(1, p.getHoraini());
         st.setString(2, p.getHoraFin());
         st.setString(3, p.getTmpMax());
         st.setString(4, p.getTmpMin());
         st.setString(5, p.getCod_Usu());
         st.setString(6, p.getNum_prog());
         st.executeUpdate();
     }catch(Exception ex){
        ex.printStackTrace();
     }
     }

    public List<Registro> lisReg() {
        List<Registro> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql = "SELECT * FROM `tab_registro`";
            PreparedStatement st = conn.prepareStatement(sql);
//st.setString(1, cad);
            ResultSet rs = st.executeQuery();
            //llenar el arraylist con la clase entidad
            while (rs.next()) {
                Registro a = new Registro();
                a.setNum_prog(rs.getString(1));
                a.setFecha(rs.getString(2));
                a.setHoraini(rs.getString(3));
                a.setHoraFin(rs.getString(4));
                a.setTmpMax(rs.getString(5));
                a.setTmpMin(rs.getString(6));
                a.setCod_Usu(rs.getString(7));              
                
                lis.add(a);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {

                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e2) {
            }
        }

        return lis;

    }    

    public List<Especial> lisRegEnc(String nro) {
        List<Especial> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql="CALL EncendidoxFecha (?);";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, nro);
            ResultSet rs = st.executeQuery();
            //llenar el arraylist con la clase entidad
            while (rs.next()) {
                Especial p = new Especial();
                  p.setTxt1(rs.getString(1));
                  p.setTxt2(rs.getString(2));
                  p.setTxt3(rs.getString(3));
                  p.setTxt4(rs.getString(4));
                  p.setTxt5(rs.getString(5));
                  p.setTxt6(rs.getString(6));
                  p.setTxt7(rs.getString(7));
                  p.setTxt8(rs.getString(8));
                  p.setTxt9(rs.getString(9));        
                
                lis.add(p);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {

                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e2) {
            }
        }

        return lis;

    }    

    public List<Especial> lisRegApa(String nro) {
        List<Especial> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql="CALL ApagadoxFecha (?);";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, nro);
            ResultSet rs = st.executeQuery();
            //llenar el arraylist con la clase entidad
            while (rs.next()) {
                Especial p = new Especial();
                  p.setTxt1(rs.getString(1));
                  p.setTxt2(rs.getString(2));
                  p.setTxt3(rs.getString(3));
                  p.setTxt4(rs.getString(4));
                  p.setTxt5(rs.getString(5));
                  p.setTxt6(rs.getString(6));
                  p.setTxt7(rs.getString(7));
                  p.setTxt8(rs.getString(8));
                  p.setTxt9(rs.getString(9));        
                
                lis.add(p);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {

                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e2) {
            }
        }

        return lis;

    }    

    public List<Especial> lisRegEncApa(String nro) {
        List<Especial> lis = new ArrayList<>();
        Connection conn = null;

        try {
            conn = MySQLConexion.getConexion();
            String sql="CALL EncApaxFecha (?);";
            PreparedStatement st = conn.prepareStatement(sql);
            st.setString(1, nro);
            ResultSet rs = st.executeQuery();
            //llenar el arraylist con la clase entidad
            while (rs.next()) {
                Especial p = new Especial();
                  p.setTxt1(rs.getString(1));
                  p.setTxt2(rs.getString(2));
                  p.setTxt3(rs.getString(3));
                  p.setTxt4(rs.getString(4));
                  p.setTxt5(rs.getString(5));
                  p.setTxt6(rs.getString(6));
                  p.setTxt7(rs.getString(7));
                  p.setTxt8(rs.getString(8));
                  p.setTxt9(rs.getString(9));        
                  p.setTxt10(rs.getString(10));        
                  p.setTxt11(rs.getString(11));        
                
                lis.add(p);
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            try {

                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e2) {
            }
        }

        return lis;

    }    




}
