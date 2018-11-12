package modelo;

public class Vacantes {

    private String idvacantes;
    private String primero;
    private String segundo;
    private String tercero;
    private String cuarto;
    private String quinto;

    public Vacantes(String idvacantes, String primero, String segundo, String tercero, String cuarto, String quinto) {
        this.idvacantes = idvacantes;
        this.primero = primero;
        this.segundo = segundo;
        this.tercero = tercero;
        this.cuarto = cuarto;
        this.quinto = quinto;
    }

    public String getIdvacantes() {
        return idvacantes;
    }

    public void setIdvacantes(String idvacantes) {
        this.idvacantes = idvacantes;
    }

    public String getPrimero() {
        return primero;
    }

    public void setPrimero(String primero) {
        this.primero = primero;
    }

    public String getSegundo() {
        return segundo;
    }

    public void setSegundo(String segundo) {
        this.segundo = segundo;
    }

    public String getTercero() {
        return tercero;
    }

    public void setTercero(String tercero) {
        this.tercero = tercero;
    }

    public String getCuarto() {
        return cuarto;
    }

    public void setCuarto(String cuarto) {
        this.cuarto = cuarto;
    }

    public String getQuinto() {
        return quinto;
    }

    public void setQuinto(String quinto) {
        this.quinto = quinto;
    }
    
}
