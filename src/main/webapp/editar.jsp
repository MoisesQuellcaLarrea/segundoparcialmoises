<%@page import="com.emergente.modelo.Producto"%>
<%
    Producto item = (Producto)request.getAttribute("miProducto");
    %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <tr>
                <td >
                                <span>
                    <font color="ff0080">CARRITO DE COMPRAS <br>
                    <font color="0000ff">Nombre: Moises Qellca larrea<br>
                   <font color="#ffd700"> Carnet: 6135300 L.</span>
               
            </tr>
    </fieldset>
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="">
        <h1><%= (item.getId()==0)?"Nuevo Producto":"Editar Producto "%></h1>
        
        <form action ="MainController" method="post">
            <input type="hidden" name="id" value="<%= item.getId() %>">
            
            <table  border="1"  bordercolor="" cellspacing="0">
                <tr>
                    <td>Descripción</td>
                    <td><input type="text" name="descripcion" value="<%=  item.getDescripcion() %>"></td>
                </tr>
                <tr>
                    <td>Cantidad</td>
                    <td><input type="text" name="cantidad" value="<%=  item.getCantidad() %>"></td>
                </tr>
                
                <tr>
                    <td>Precio</td>
                    <td><input type="text" name="precio" value="<%= item.getPrecio() %>">
                    </td>
                </tr>
                <tr>
                    <td>Categoria</td>
                    <td><select name="categoria" value="<%= item.getCategoria() %>"/>
                          <option>Bebidas</option>
                         <option>Refrescos</option>
                           <option>Productos de cigarrillo</option>
                            <option>Galletas</option><!-- comment -->
                          <option>Dulces</option><!-- comment -->
                           <option>Comidas</option>
                           <!-- comment -->
                          
                    </select> 
                    </td>  
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
