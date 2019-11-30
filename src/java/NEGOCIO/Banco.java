/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package NEGOCIO;

import DAO.ClienteJpaController;
import DAO.Conexion;
import DTO.Cliente;
import com.sun.istack.internal.logging.Logger;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 *
 * @author stive
 */
public class Banco {

    Conexion con = Conexion.getConexion();
    ClienteJpaController clienteDAO = new ClienteJpaController(con.getBd());
    List<Cliente> clientes = clienteDAO.findClienteEntities();

    public Banco() {
    }
    
    public boolean insertarCliente(Integer cedula, String nombre, String fechanacimiento, String dircorrespondencia, int telefono, String email) throws ParseException{
        Cliente c = new Cliente();
        c.setCedula(cedula);
        c.setNombre(nombre);
        c.setFechanacimiento(crearFecha(fechanacimiento));
        c.setDircorrespondencia(dircorrespondencia);
        c.setTelefono(telefono);
        c.setEmail(email);
        try{
            clienteDAO.create(c);
            return true;
        }catch(Exception e){
            System.err.println(e.getMessage());
        }
        return false;
    }

    //debo arreglar este metodo
    private Date crearFecha(String fecha) throws ParseException{
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
        Date date = formatter.parse(fecha);
        return date;
    }
}
