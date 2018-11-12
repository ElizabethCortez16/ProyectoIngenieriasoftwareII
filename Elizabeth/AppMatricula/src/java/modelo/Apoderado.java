
package modelo;

public class Apoderado {
   
    private String idapoderado ;
    private String nombre;
    private String apellidoPaterno;
    private String apellidoMaterno;
    private String telefono;
    private String genero;
    private String parentesco;
    private String direccion;
    private String gradoIntruccion;
    private String estadoCivil;
    private String DNI;

    public Apoderado(String idapoderado, String nombre, String apellidoPaterno, String apellidoMaterno, String telefono, String genero, String parentesco, String direccion, String gradoIntruccion, String estadoCivil, String DNI) {
        this.idapoderado = idapoderado;
        this.nombre = nombre;
        this.apellidoPaterno = apellidoPaterno;
        this.apellidoMaterno = apellidoMaterno;
        this.telefono = telefono;
        this.genero = genero;
        this.parentesco = parentesco;
        this.direccion = direccion;
        this.gradoIntruccion = gradoIntruccion;
        this.estadoCivil = estadoCivil;
        this.DNI = DNI;
    }

    public String getIdapoderado() {
        return idapoderado;
    }

    public void setIdapoderado(String idapoderado) {
        this.idapoderado = idapoderado;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidoPaterno() {
        return apellidoPaterno;
    }

    public void setApellidoPaterno(String apellidoPaterno) {
        this.apellidoPaterno = apellidoPaterno;
    }

    public String getApellidoMaterno() {
        return apellidoMaterno;
    }

    public void setApellidoMaterno(String apellidoMaterno) {
        this.apellidoMaterno = apellidoMaterno;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getParentesco() {
        return parentesco;
    }

    public void setParentesco(String parentesco) {
        this.parentesco = parentesco;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getGradoIntruccion() {
        return gradoIntruccion;
    }

    public void setGradoIntruccion(String gradoIntruccion) {
        this.gradoIntruccion = gradoIntruccion;
    }

    public String getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    
    
}
