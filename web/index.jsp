
<%@page import="java.util.List"%>
<%@page import="com.servicios.Productos"%>
<%@page import="Vista.ProductosSP"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" rel="stylesheet"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="js/funcion.js"></script>
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
                    <table id="example" class="table table-hover">
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
                                  <!--  <a href="Controlador?accion=actual&id=<%= p.getId()%>" class="btn btn-warning">Modificar</a>
                                    <a href="Controlador?accion=eliminar&id=<%= p.getId()%>" class="btn btn-warning">Quitar</a>-->
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
