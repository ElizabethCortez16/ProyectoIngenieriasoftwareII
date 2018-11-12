package modelo;

public class Usuario {

    private String idusuario;
    private String contraseña;
    

    public Usuario(String idusuario, String contraseña) {
        this.idusuario = idusuario;
        this.contraseña = contraseña;     
    }

    public String getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(String idusuario) {
        this.idusuario = idusuario;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }


   

}
