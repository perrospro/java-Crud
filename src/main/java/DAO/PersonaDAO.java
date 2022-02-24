package DAO;

import DB.ConnectionDB;
import Model.Persona;
import Model.UsuarioModel;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PersonaDAO {

    String sql = "";
    ResultSet rs = null;
    ConnectionDB con = new ConnectionDB();

    public List<Persona> listPersona() throws SQLException, Exception {
        List<Persona> listarPersonas = new ArrayList<>();

        try {
            sql = "SELECT id_persona, CONCAT(nombre, ' ', apellido) as nombre FROM persona";
            rs = con.executeQuery(sql);
            while (rs.next()) {
                int id = rs.getInt("id_persona");
                String nombre = rs.getString("nombre");
                Persona per = new Persona(id, nombre);
                listarPersonas.add(per);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw e;
        }

        return listarPersonas;
    }
}
