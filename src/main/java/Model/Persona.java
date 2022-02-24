
package Model;


public class Persona {
    int id_persona;
    String cedula;
    String nombre; 
    String apellido; 
    String direccion;
    String email;
    String celular;

    public Persona(int id_persona, String nombre) {
        this.id_persona = id_persona;
        this.nombre = nombre;
    }

    public int getId_persona() {
        return id_persona;
    }

    public void setId_persona(int id_persona) {
        this.id_persona = id_persona;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}
