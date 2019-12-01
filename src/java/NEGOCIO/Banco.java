/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package NEGOCIO;

import DAO.ClienteJpaController;
import DAO.Conexion;
import DAO.CuentaJpaController;
import DAO.TipoJpaController;
import DTO.Cliente;
import DTO.Cuenta;
import DTO.Tipo;
import com.sun.istack.internal.logging.Logger;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
    CuentaJpaController cuentaDAO = new CuentaJpaController(con.getBd());
    List<Cuenta> cuentas = cuentaDAO.findCuentaEntities();
    TipoJpaController tipoDAO = new TipoJpaController(con.getBd());
    List<Tipo> tipos = tipoDAO.findTipoEntities();

    public Banco() {
    }

    public boolean insertarCliente(Integer cedula, String nombre, String fechanacimiento, String dircorrespondencia, int telefono, String email) throws ParseException {
        Cliente c = new Cliente();
        c.setCedula(cedula);
        c.setNombre(nombre);
        c.setFechanacimiento(crearFecha(fechanacimiento));
        c.setDircorrespondencia(dircorrespondencia);
        c.setTelefono(telefono);
        c.setEmail(email);
        try {
            clienteDAO.create(c);
            return true;
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return false;
    }

    public boolean insertarCuenta(Integer nroCuenta, Integer cedula, int tipo) {
        Cliente x = new Cliente();
        x.setCedula(cedula);
        x = buscarCliente(x);
        if (x == null) {
            return false;
        }
        Tipo t = new Tipo();
        t.setId(tipo);
        t = buscarTipo(t);
        if (t == null) {
            return false;
        }
        Cuenta cta = new Cuenta();
        cta.setNroCuenta(nroCuenta);
        cta.setCedula(x);
        cta.setTipo(t);
        cta.setFechacreacion(currentDate());
        try {
            cuentaDAO.create(cta);
            return true;
        } catch (Exception e) {
            System.err.println(e.getMessage());            
        }

        return false;
    }
    
    public Date currentDate(){
        DateTimeFormatter day = DateTimeFormatter.ofPattern("dd");
        DateTimeFormatter month = DateTimeFormatter.ofPattern("MM");  
        DateTimeFormatter year = DateTimeFormatter.ofPattern("yyyy");
        LocalDateTime now = LocalDateTime.now();  
        int dia= Integer.parseInt(day.format(now));
        int mes= Integer.parseInt(month.format(now));
        int anio= Integer.parseInt(year.format(now));        
        return new Date(anio-1900,mes-1,dia);
    }

    private Date crearFecha(String fecha) throws ParseException {
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd");
        Date date = formatter.parse(fecha);
        return date;
    }

    private Tipo buscarTipo(Tipo x) {
        for (Tipo t : this.tipos) {
            if (t.equals(x)) {
                return t;
            }
        }
        return null;
    }

    private Cliente buscarCliente(Cliente x) {
        for (Cliente y : this.clientes) {
            if (y.equals(x)) {
                return y;
            }
        }
        return null;
    }

    public ClienteJpaController getClienteDAO() {
        return clienteDAO;
    }

    public void setClienteDAO(ClienteJpaController clienteDAO) {
        this.clienteDAO = clienteDAO;
    }

    public List<Cliente> getClientes() {
        return clientes;
    }

    public void setClientes(List<Cliente> clientes) {
        this.clientes = clientes;
    }

}
