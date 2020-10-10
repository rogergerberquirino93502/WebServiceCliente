/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Vista;

import com.servicios.Productos;

/**
 *
 * @author Roger D. Quirino
 */
public class ProductosSP {
    public ProductosSP(){
    
    }
    public java.util.List<com.servicios.Productos> lista() {
        com.servicios.ConsultasWS_Service service = new com.servicios.ConsultasWS_Service();
        com.servicios.ConsultasWS port = service.getConsultasWSPort();
        return port.lista();
    }

    public String agregar(java.lang.String categoria, java.lang.String nombre, java.lang.String precio, java.lang.String mayoreo, java.lang.String oferta, java.lang.String cantidad) {
        com.servicios.ConsultasWS_Service service = new com.servicios.ConsultasWS_Service();
        com.servicios.ConsultasWS port = service.getConsultasWSPort();
        return port.agregar(categoria, nombre, precio, mayoreo, oferta, cantidad);
    }

    public Productos listaid(int id) {
        com.servicios.ConsultasWS_Service service = new com.servicios.ConsultasWS_Service();
        com.servicios.ConsultasWS port = service.getConsultasWSPort();
        return port.listaid(id);
    }

    public String actualizar(int id, java.lang.String categoria, java.lang.String nombre, java.lang.String precio, java.lang.String mayoreo, java.lang.String oferta, java.lang.String cantidad) {
        com.servicios.ConsultasWS_Service service = new com.servicios.ConsultasWS_Service();
        com.servicios.ConsultasWS port = service.getConsultasWSPort();
        return port.actualizar(id, categoria, nombre, precio, mayoreo, oferta, cantidad);
    }
    
    
    
}
