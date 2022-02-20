
package Model;

import java.sql.Date;


public class usuario {
    int id_usuario;
    String contrasenia;
    String persona;
    int id_persona;
    String nickname;
    String estado;
    String bloqueo;
    Date fecha;
    String tipo_ocupacion;

    public usuario() {
    }

    public int getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

    public String getPersona() {
        return persona;
    }

    public void setPersona(String persona) {
        this.persona = persona;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getBloqueo() {
        return bloqueo;
    }

    public void setBloqueo(String bloqueo) {
        this.bloqueo = bloqueo;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getTipo_ocupacion() {
        return tipo_ocupacion;
    }

    public void setTipo_ocupacion(String tipo_ocupacion) {
        this.tipo_ocupacion = tipo_ocupacion;
    }

    public int getId_persona() {
        return id_persona;
    }

    public void setId_persona(int id_persona) {
        this.id_persona = id_persona;
    }
  

 }
