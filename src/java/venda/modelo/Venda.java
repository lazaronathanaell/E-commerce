/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package venda.modelo;
import java.security.Timestamp;
import usuario.modelo.Usuario;
/**
 *
 * @author lazar
 */
public class Venda {
    private int id;
    private Timestamp data_hora;
    private int usuario_id;  

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Timestamp getData_hora() {
        return data_hora;
    }

    public void setData_hora(Timestamp data_hora) {
        this.data_hora = data_hora;
    }

    public int getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(int usuario_id) {
        this.usuario_id = usuario_id;
    }
}
