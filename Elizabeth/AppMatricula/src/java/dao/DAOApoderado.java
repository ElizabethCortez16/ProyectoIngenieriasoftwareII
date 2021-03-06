
package dao;

import conexion.Conexion;
import interfaces.OperacionesBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.Apoderado;

public class DAOApoderado implements  OperacionesBD<Apoderado>{
    
    private final String sql_insert="insert into apoderado values(?,?,?,?,?,?,?,?,?,?,?)";
    private final String sql_update="update apoderado set nombre=?,apellidoPaterno=?,apellidoMaterno=?,telefono=?,genero=?,parentesco =?,direccion=?,gradoIntruccion =?,estadoCivil =?,DNI =? where idapoderado=?";
    private final String sql_delete="delete from apoderado where idapoderado=?";
    private final String sql_select="select * from apoderado where idapoderado=?";
    private final String sql_selectall="select * from apoderado";
    private Conexion con = Conexion.conectar();
    private PreparedStatement pstm=null;
    private ResultSet res = null;

    @Override
    public boolean insertar(Apoderado t) {
       try {           
            pstm=con.getCon().prepareStatement(sql_insert);
            pstm.setString(1, t.getIdapoderado());
            pstm.setString(2, t.getNombre());
            pstm.setString(3, t.getApellidoPaterno());
            pstm.setString(4, t.getApellidoMaterno());
            pstm.setString(5, t.getTelefono());
            pstm.setString(6, t.getGenero());
            pstm.setString(7, t.getParentesco());
            pstm.setString(8, t.getDireccion());
            pstm.setString(9, t.getGradoIntruccion());
            pstm.setString(10, t.getEstadoCivil());
            pstm.setString(11, t.getDNI());
            
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
                Logger.getLogger(Apoderado.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        }
        return false;
    }

    @Override
    public boolean update(Apoderado t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean delete(Object id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Apoderado select(Object id) {
      Apoderado grdo = null;
         try {
             String id1 = id.toString();
             int id2= Integer.parseInt(id1);
             pstm = con.getCon().prepareStatement(sql_select);
             pstm.setInt(1, id2);
             res=pstm.executeQuery();       
             while(res.next()){
              grdo=new Apoderado(res.getString(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),
                      res.getString(6),res.getString(7),res.getString(8),res.getString(9),res.getString(10),
                      res.getString(11));
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
    public ArrayList<Apoderado> selectAll() {
     ArrayList<Apoderado> lista=null;
         lista = new ArrayList<>();
         try {
            
             pstm = con.getCon().prepareStatement(sql_selectall);
             res =pstm.executeQuery();
             while(res.next()){
              lista.add(new Apoderado(res.getString(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5),
                      res.getString(6),res.getString(7),res.getString(8),res.getString(9),res.getString(10),
                      res.getString(11)));
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
    public Apoderado login(Object correo, Object clave) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
