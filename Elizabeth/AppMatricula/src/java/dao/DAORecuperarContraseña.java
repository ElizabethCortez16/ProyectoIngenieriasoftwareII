
package dao;

import conexion.Conexion;
import interfaces.OperacionesBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.RecuperarContraseña;

public class DAORecuperarContraseña implements OperacionesBD<RecuperarContraseña> {

    private static final String SQL_SelectID="select * from recuperarContraseña where idrecuperarContraseña=? ";
    private static final Conexion con = Conexion.conectar();
    private static PreparedStatement pstm = null;
    private static ResultSet res = null;

     RecuperarContraseña a; 
    
    public DAORecuperarContraseña(RecuperarContraseña a) {
        this.a=a;
               
    }
 
    
    
    @Override
    public boolean insertar(RecuperarContraseña t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean update(RecuperarContraseña t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public RecuperarContraseña select(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<RecuperarContraseña> selectAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public RecuperarContraseña login(Object correo, Object clave) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public boolean select2(Object pre) {
           boolean res1=false;
           
        try {
            pstm = con.getCon().prepareStatement(SQL_SelectID);
            pstm.setString(1, String.valueOf(pre));
            res = pstm.executeQuery();
            while (res.next()) {                
                if (res.getString(1).equals(a.getIdRecuperarContraseña())) {
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
            Logger.getLogger(RecuperarContraseña.class.getName()).log(Level.SEVERE, null, ex);
        }  
        }
      return res1;  
    }
    
}
