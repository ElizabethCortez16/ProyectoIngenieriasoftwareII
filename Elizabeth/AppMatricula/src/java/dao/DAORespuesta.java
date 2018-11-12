
package dao;

import conexion.Conexion;
import interfaces.OperacionesBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Respuesta;


public class DAORespuesta implements OperacionesBD<Respuesta>{

    private static final String SQL_SelectID="select * from respuesta where idrespuesta=? ";
    private static final Conexion con = Conexion.conectar();
    private static PreparedStatement pstm = null;
    private static ResultSet res = null;

     Respuesta a; 
    
    public DAORespuesta(Respuesta a) {
        this.a=a;
               
    }
    
    
    @Override
    public boolean insertar(Respuesta t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(Respuesta t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Respuesta select(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<Respuesta> selectAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Respuesta login(Object correo, Object clave) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
 public boolean select3(Object pre) {
           boolean res1=false;
           
        try {
            pstm = con.getCon().prepareStatement(SQL_SelectID);
            pstm.setString(1, String.valueOf(pre));
            res = pstm.executeQuery();
            while (res.next()) {                
                if (res.getString(1).equals(a.getIdRespuesta())) {
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
            Logger.getLogger(Respuesta.class.getName()).log(Level.SEVERE, null, ex);
        }  
        }
      return res1;  
    }
    
    
}
