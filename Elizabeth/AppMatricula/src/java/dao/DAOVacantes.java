
package dao;

import conexion.Conexion;
import interfaces.OperacionesBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Vacantes;


public class DAOVacantes implements OperacionesBD<Vacantes>{
    
    private final String sql_insert="insert into vacantes values(?,?,?,?,?,?)";
    private final String sql_update="update vacantes set primero=?,segundo=?,tercero=?,cuarto=?,quinto=? where idvacantes=?";
    private final String sql_delete="delete from vacantes where idvacantes=?";
    private final String sql_select="select * from vacantes where idvacantes=?";
    private final String sql_selectall="select * from vacantes";
    private Conexion con = Conexion.conectar();
    private PreparedStatement pstm=null;
    private ResultSet res = null;

    @Override
    public boolean insertar(Vacantes t) {
            try {           
            pstm=con.getCon().prepareStatement(sql_insert);
            pstm.setString(1, t.getIdvacantes());
            pstm.setString(2, t.getPrimero());
            pstm.setString(3, t.getSegundo());
            pstm.setString(4, t.getTercero());
            pstm.setString(5, t.getCuarto());
            pstm.setString(6, t.getQuinto());       
          
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
                Logger.getLogger(Vacantes.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        }
        return false;
    }

    @Override
    public boolean update(Vacantes t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Vacantes select(Object id) {
        Vacantes perso = null;
         try {
             String id1 = id.toString();
             int id2= Integer.parseInt(id1);
             pstm = con.getCon().prepareStatement(sql_select);
             pstm.setInt(1, id2);
             res=pstm.executeQuery();       
             while(res.next()){
              perso=new Vacantes(res.getString(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),
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
    return perso;
    }

    @Override
    public ArrayList<Vacantes> selectAll() {
      ArrayList<Vacantes> lista=null;
         lista = new ArrayList<>();
         try {
            
             pstm = con.getCon().prepareStatement(sql_selectall);
             res =pstm.executeQuery();
             while(res.next()){
              lista.add(new Vacantes(res.getString(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),
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
    public Vacantes login(Object correo, Object clave) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
