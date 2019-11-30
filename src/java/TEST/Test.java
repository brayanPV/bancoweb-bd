/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TEST;

import DAO.ClienteJpaController;
import DAO.Conexion;
import DTO.Cliente;
import java.util.List;

/**
 *
 * @author stive
 */
public class Test {

    public static void main(String[] args) {
        Conexion con = Conexion.getConexion();
        ClienteJpaController clienteDAO = new ClienteJpaController(con.getBd());
        List<Cliente> clientes = clienteDAO.findClienteEntities();
        for(Cliente c: clientes){
            System.out.println("El cliente es " + c);
        }
    }

}
