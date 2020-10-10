
<%@page import="java.util.List"%>
<%@page import="com.servicios.Productos"%>
<%@page import="Vista.ProductosSP"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-4">
            <div class="card">
                <div class="card-header">
                    <a  href="Controlador?accion=agregar" class="btn btn-primary">Nuevo Producto</a>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>CATEGORIA</th>
                                <th>NOMBRE</th>
                                <th>PRECIO</th>
                                <th>MAYOREO</th>
                                <th>OFERTA</th>
                                <th>CANTIDAD</th>
                                <th>VER</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                            ProductosSP pr = new ProductosSP();
                            List<Productos> datos = pr.lista();
                            for(Productos p:datos){      
                            
                            %>
                            <tr>
                                <td><%= p.getId()%></td>
                                <td><%= p.getCategoria()%></td>
                                <td><%= p.getNombre()%></td>
                                <td><%= p.getPrecio()%></td>
                                <td><%= p.getMayoreo()%></td>
                                <td><%= p.getOferta()%></td>
                                <td><%= p.getCantidad()%></td>
                                
                                <td>
                                    <a href="Controlador?accion=actualizar&id=<%= p.getId()%>" class="btn btn-warning">Modificar</a>
                                    <a href="" class="btn btn-warning">Quitar</a>
                                </td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>
            </div>
            
        </div>
    </body>
</html>
