
package modelo;

public class MatriculaNueva {
    
    private String idMatriculaNueva;
    private String idgradoyseccion;
    private String ieprocedenci;
    private String idalumno;
    private String situcion;

    public MatriculaNueva(String idMatriculaNueva, String idgradoyseccion, String ieprocedenci, String idalumno, String situcion) {
        this.idMatriculaNueva = idMatriculaNueva;
        this.idgradoyseccion = idgradoyseccion;
        this.ieprocedenci = ieprocedenci;
        this.idalumno = idalumno;
        this.situcion = situcion;
    }

    public String getIdMatriculaNueva() {
        return idMatriculaNueva;
    }

    public void setIdMatriculaNueva(String idMatriculaNueva) {
        this.idMatriculaNueva = idMatriculaNueva;
    }

    public String getIdgradoyseccion() {
        return idgradoyseccion;
    }

    public void setIdgradoyseccion(String idgradoyseccion) {
        this.idgradoyseccion = idgradoyseccion;
    }

    public String getIeprocedenci() {
        return ieprocedenci;
    }

    public void setIeprocedenci(String ieprocedenci) {
        this.ieprocedenci = ieprocedenci;
    }

    public String getIdalumno() {
        return idalumno;
    }

    public void setIdalumno(String idalumno) {
        this.idalumno = idalumno;
    }

    public String getSitucion() {
        return situcion;
    }

    public void setSitucion(String situcion) {
        this.situcion = situcion;
    }
    
    
    
    
    
}
