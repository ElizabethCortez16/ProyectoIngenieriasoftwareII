package interfaces;

import java.util.ArrayList;

public interface OperacionesBD<T> {

    public boolean insertar(T t);

    public boolean update(T t);

    public boolean delete(Object id);

    public T select(Object id);

    public ArrayList<T> selectAll();

    public T login(Object correo, Object clave);

}
