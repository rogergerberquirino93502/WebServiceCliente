<%-- 
    Document   : actualizar
    Created on : 09-oct-2020, 17:41:10
    Author     : Roger D. Quirino
--%>

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
                    <h5>Actualizar Producto</h5>
                </div>
                <%
                int id=Integer.parseInt((String)request.getAttribute("idpro"));
                ProductosSP psp = new ProductosSP();
                Productos p = psp.listaid(id);
                %>
                <div class="card-body">
                    <form action="Controlador">
                        <label>Id</label>
                        <input type="text" name="idp" readonly="" class="form-control" value="<%= p.getId()%>">
                        <label>Categoria</label>
                        <input type="text" name="cat" class="form-control" value="<%= p.getCategoria()%>">
                        <label>Nombre Producto</label>
                        <input type="text" name="nom" class="form-control" value="<%= p.getNombre()%>">
                        <label>Precio Venta</label>
                        <input type="text" name="pventa" class="form-control" value="<%= p.getPrecio()%>">
                        <label>Precio Mayoreo</label>
                        <input type="text" name="pmayoreo" class="form-control" value="<%= p.getMayoreo()%>">
                        <label>Precio oferta</label>
                        <input type="text" name="poferta" class="form-control" value="<%= p.getOferta()%>">
                        <label>Cantidad Productos</label>
                        <input type="text" name="cproducto" class="form-control" value="<%= p.getCantidad()%>">
                        <input type="submit" name="accion" value="Actualizar">
                        <a href="Controlador?accion=index">Anterior</a>
                    </form>
                </div>
            </div>
            
        </div>
    </body>
</html>
