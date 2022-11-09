<%@page import="java.util.ArrayList"%>
<%@page import="com.emergente.modelo.Producto"%>
<%
    ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("listapro");
    

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <fieldset>
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
    <body bgcolor="#FF5733">
    <center> <h1>Listado de Productos</h1> </center>
        
        <a href="MainController?op=nuevo" color="white"> <h3>Nuevo</h3></a>
        
        <table border="1"  bordercolor="black" cellspacing="0">
            
            <tr>
                <th height="50" width="150"  bgcolor="#FFA07A">Id</th>
                <th height="50" width="150"  bgcolor="#2980B9">Descripción</th>
                <th height="50" width="150"  bgcolor="#CD5C5C">Cantidad</th>
                <th height="50" width="150"  bgcolor="#2980B9">Precio</th>
                 <th height="50" width="150"  bgcolor="#900C3F">Categoria</th>
                <th height="50" width="150"  bgcolor="#2980B9"></th>
                <th height="50" width="150"  bgcolor="#2980B9"></th>
            </tr>
            <%
                if (lista != null) {
                        
                    for (Producto item : lista) {
                            
                        
                %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion() %></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                 <td><%= item.getCategoria() %></td>
                <td><a href="MainController?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="MainController?op=eliminar&id=<%= item.getId() %>" onclick="return confirm('Esta seguro de Eliminar?')">Eliminar</a></td>
            </tr>
            
            <%
                }
             }
                %>
        </table>
    </body>
</html>
