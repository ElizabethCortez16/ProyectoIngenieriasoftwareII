package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conexion {

private static Conexion instancia;
private Connection con;
private String url="jdbc:derby://localhost:1527/jcm";
private String driver="org.apache.derby.jdbc.ClientDriver";
private String usuario="jcm";
private String clave="jcm";

    private Conexion() {
    
    try {
        Class.forName(driver);
        con=DriverManager.getConnection(url,usuario,clave);
        
    } catch (ClassNotFoundException ex) {
        Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
       
    } catch (SQLException ex) {
        Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
       
    }
        
    }


    public synchronized static Conexion conectar() {

        if (instancia == null) {
            instancia = new Conexion();
        }
        return instancia;

    }

    public Connection getCon() {
        return con;
    }

    public void cerrarConexion() {
        instancia = null;
    }
}
