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
                    <h5>Agregar Producto</h5>
                </div>
                <div class="card-body">
                    <form action="Controlador">
                        <label>Categoria</label>
                        <input type="text" name="cat" class="form-control">
                        <label>Nombre Producto</label>
                        <input type="text" name="nom" class="form-control">
                        <label>Precio Venta</label>
                        <input type="text" name="pventa" class="form-control">
                        <label>Precio Mayoreo</label>
                        <input type="text" name="pmayoreo" class="form-control">
                        <label>Precio oferta</label>
                        <input type="text" name="poferta" class="form-control">
                        <label>Cantidad Productos</label>
                        <input type="text" name="cproducto" class="form-control">
                        <input type="submit" name="accion" value="Guardar">
                        <a href="Controlador?accion=index">Anterior</a>
                    </form>
                </div>
            </div>
            
        </div>
    </body>
</html>
