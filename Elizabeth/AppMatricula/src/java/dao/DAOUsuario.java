
package dao;

import conexion.Conexion;
import interfaces.OperacionesBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Usuario;

public class DAOUsuario implements OperacionesBD<Usuario>{

//    private final String sql_insert = "insert into USUARIO values(?,?,?,?)";
//    private final String sql_update = "update USUARIO set usuario=?,clave=?,estado=? where idemp=?";
//    private final String sql_delete = "delete from USUARIO where idemp=?";
//    private final String sql_select = "select * from USUARIO where idemp=?";
//    private final String SQL_SelectID="select * from usuario where correo=? and clave=?";
//    private static final Conexion con = Conexion.conectar();
//    private static PreparedStatement pstm = null;
//    private static ResultSet res = null;
//    
//    Usuario a; 
//    
//    public DAOUsuario(Usuario a) {
//        this.a=a;
//               
//    }
    
    private static final String SQL_SelectID="select * from usuario where idusuario=? and contraseña=?";
    private static final Conexion con = Conexion.conectar();
    private static PreparedStatement pstm = null;
    private static ResultSet res = null;

     Usuario a; 
    
    public DAOUsuario(Usuario a) {
        this.a=a;
               
    }
 
    
    @Override
    public boolean insertar(Usuario t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(Usuario t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Usuario select(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Usuario> selectAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Usuario login(Object user, Object clave) {
     throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.  
    }
     
     public boolean select1(Object correo,Object clave) {
           boolean res1=false;
           
        try {
            pstm = con.getCon().prepareStatement(SQL_SelectID);
            pstm.setString(1, String.valueOf(correo));
            pstm.setString(2, String.valueOf(clave));
           
            res = pstm.executeQuery();
            while (res.next()) {                
                if (res.getString(1).equals(a.getIdusuario())&&res.getString(2).equals(a.getContraseña())) {
                    res1 = true;
                }else {             
                  res1=false;
                }
            }    
        } catch (Exception e) {
            res1=false;
        }
        finally{
        try {
            if(res!=null)res.close();
            if(pstm!=null)pstm.close();
            if(con!=null)con.cerrarConexion();
        } catch (SQLException ex) {
            Logger.getLogger(Usuario.class.getName()).log(Level.SEVERE, null, ex);
        }  
        }
      return res1;  
    }
   
}
