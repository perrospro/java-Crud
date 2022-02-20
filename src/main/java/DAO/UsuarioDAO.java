package DAO;

import DB.ConnectionDB;
import Interfaces.CRUD;
import Model.usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO implements CRUD {

    ConnectionDB db = new ConnectionDB();
    Connection cn;
    PreparedStatement ps;
    ResultSet rs = null;
    usuario us = new usuario();

    @Override
    public List listar() {
        ArrayList<usuario> list = new ArrayList<>();
        String sql = "select id_usuario, nickname, estado,us.fecha_login, tipo_ocupacion, concat(ps.nombre,' ',ps.apellido)  as persona from usuario us \n"
                + "inner join persona ps on ps.id_persona =  us.id_persona order by id_usuario asc ";
        try {
            cn = db.setConnection();
            ps = cn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                usuario usr = new usuario();
                usr.setId_usuario(Integer.parseInt(rs.getString("id_usuario")));
                usr.setNickname(rs.getString("nickname"));
                usr.setTipo_ocupacion(rs.getString("tipo_ocupacion"));
                usr.setPersona(rs.getString("persona"));
                usr.setEstado(rs.getString("estado"));
                usr.setFecha(rs.getDate("fecha_login"));
                list.add(usr);
            }
        } catch (Exception e) {
        }

        return list;
    }

    @Override
    public usuario list(int id) {
        String sql = "SELECT id_usuario, nickname, contrasenia, estado, tipo_ocupacion, id_persona from usuario  where id_usuario = " + id + " order  by 1 asc";
        try {
            cn = db.setConnection();
            ps = cn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                us.setId_usuario(rs.getInt("id_usuario"));
                us.setNickname(rs.getString("nickname"));
                us.setTipo_ocupacion(rs.getString("tipo_ocupacion"));
                us.setPersona(rs.getString("persona"));
                us.setEstado(rs.getString("estado"));
                us.setContrasenia(rs.getString("contrasenia"));
            }
        } catch (Exception e) {
        }

        return us;
    }

    @Override
    public boolean add(usuario us) {
        String sql = "INSERT INTO usuario(nickname, contrasenia, fecha_login, tipo_ocupacion, id_persona, estado, bloqueo) \n"
                + "VALUES ('" + us.getNickname() + "', '" + us.getContrasenia() + "', current_date, '" + us.getTipo_ocupacion() + "', " + us.getId_persona() + ", 'activo', '1')";
        try {
            cn = db.setConnection();
            ps = cn.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(usuario us) {
        String sql = "UPDATE usuario SET nickname='" + us.getNickname() + "', contrasenia='" + us.getContrasenia() + "', tipo_ocupacion='" + us.getTipo_ocupacion() + "', id_persona='" + us.getId_persona() + "', estado='" + us.getEstado() + "' "
                + " WHERE id_usuario = " + us.getId_usuario();
        try {
            cn = db.setConnection();
            ps = cn.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;

    }

    @Override
    public boolean delete(int id) {
        String sql =" DELETE FROM usuario WHERE id_usuario = " + id ;
        try {
            cn= db.setConnection();
            cn = db.setConnection();
            ps = cn.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

}
