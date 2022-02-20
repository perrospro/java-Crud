/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Model.usuario;
import java.util.List;

/**
 *
 * @author Georgie
 */
public interface CRUD {
    public List listar();
    public usuario list(int id);
    public boolean add(usuario us);
    public boolean edit(usuario us);
    public boolean delete(int id);
}
