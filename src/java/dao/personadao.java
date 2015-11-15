
package dao;

import bean.Persona;
import java.util.List;

public interface personadao {
public boolean  agregarpersona(Persona person);
public List<Persona> mostrarpersona();
public boolean  actualizarpersona(Persona persona);
public boolean  eliminarpersona(int id);
public List<Persona> mostrarpersona(int id);
public Persona datoper(int id);

public List<Persona> mostrarpersonas(int id);
}
