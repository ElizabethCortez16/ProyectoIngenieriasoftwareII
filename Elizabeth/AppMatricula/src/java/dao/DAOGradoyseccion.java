
package dao;

import conexion.Conexion;
import interfaces.OperacionesBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Gradoyseccion;

public class DAOGradoyseccion implements OperacionesBD<Gradoyseccion> {
    private final String sql_insert="insert into gradoyseccion values(?,?,?,?,?,?)";
    private final String sql_update="update gradoyseccion set numSeccionP =?,numSeccionS=?,numSeccionT=?,numSeccionC=?,numSeccionQ=? where idgradoyseccion=?";
    private final String sql_delete="delete from gradoyseccion where idgradoyseccion=?";
    private final String sql_select="select * from gradoyseccion where idgradoyseccion=?";
    private final String sql_selectall="select * from gradoyseccion";
    private Conexion con = Conexion.conectar();
    private PreparedStatement pstm=null;
    private ResultSet res = null;

    @Override
    public boolean insertar(Gradoyseccion t) {
         try {           
            pstm=con.getCon().prepareStatement(sql_insert);
            pstm.setString(1, t.getIdgradoyseccion());
            pstm.setString(2, t.getNumSeccionP());
            pstm.setString(3, t.getNumSeccionS());
            pstm.setString(4, t.getNumSeccionT());
            pstm.setString(5, t.getNumSeccionC());
            pstm.setString(6, t.getNumSeccionQ());
            
           if (pstm.executeUpdate()>0){
            return true;
           }            
        } catch (Exception ex) {
            System.out.println("Error :" + ex.getMessage());
        }
        finally{
            try {
                pstm.close();
                con.cerrarConexion();
            } catch (SQLException ex) {
                Logger.getLogger(Gradoyseccion.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        }
        return false;
    }

    @Override
    public boolean update(Gradoyseccion t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Gradoyseccion select(Object id) {
       Gradoyseccion grdo = null;
         try {
             String id1 = id.toString();
             int id2= Integer.parseInt(id1);
             pstm = con.getCon().prepareStatement(sql_select);
             pstm.setInt(1, id2);
             res=pstm.executeQuery();       
             while(res.next()){
              grdo=new Gradoyseccion(res.getString(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),
                      res.getString(6));
             }        
        } catch (Exception e) {
        }
         finally{
             try { 
                 if(res!=null)res.close();
                 if(pstm!=null)pstm.close();
                 if(con!=null)con.cerrarConexion();                 
             } catch (Exception e) {
             }      
         }     
    return grdo;
    }

    @Override
    public ArrayList<Gradoyseccion> selectAll() {
     ArrayList<Gradoyseccion> lista=null;
         lista = new ArrayList<>();
         try {
            
             pstm = con.getCon().prepareStatement(sql_selectall);
             res =pstm.executeQuery();
             while(res.next()){
              lista.add(new Gradoyseccion(res.getString(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),
                      res.getString(6)));
             }       
        } catch (Exception e) {
        }
        finally{
          try { 
                 if(res!=null)res.close();
                 if(pstm!=null)pstm.close();
                 if(con!=null)con.cerrarConexion();                 
             } catch (Exception e) {
             }
         
         } 
       return lista;
    }

    @Override
    public Gradoyseccion login(Object correo, Object clave) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
