
package modelo;

public class MatriculaNormal {
    
    private String idMatriculaNormal;
    private String idgradoyseccion;
    private String fechaMatricula;
    private String idalumno;
    private String situcion;

    public MatriculaNormal(String idMatriculaNormal, String idgradoyseccion, String fechaMatricula, String idalumno, String situcion) {
        this.idMatriculaNormal = idMatriculaNormal;
        this.idgradoyseccion = idgradoyseccion;
        this.fechaMatricula = fechaMatricula;
        this.idalumno = idalumno;
        this.situcion = situcion;
    }

    public String getIdMatriculaNormal() {
        return idMatriculaNormal;
    }

    public void setIdMatriculaNormal(String idMatriculaNormal) {
        this.idMatriculaNormal = idMatriculaNormal;
    }

    public String getIdgradoyseccion() {
        return idgradoyseccion;
    }

    public void setIdgradoyseccion(String idgradoyseccion) {
        this.idgradoyseccion = idgradoyseccion;
    }

    public String getFechaMatricula() {
        return fechaMatricula;
    }

    public void setFechaMatricula(String fechaMatricula) {
        this.fechaMatricula = fechaMatricula;
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

