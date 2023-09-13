<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.clases.Producto"%>
<%@page import="com.emergentes.clases.Producto"%>
<%
    if(session.getAttribute("listapro")==null){
        ArrayList<Producto> list = new ArrayList<Producto>();
        session.setAttribute("listapro", list);
    }
    ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("listapro");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <table border="1" cellspacing="0">
            <tr>
                <th>
                    <h1>PRIMER PARCIAL TEM-742</h1>
                    <h2>Nombre: Carlos Daniel Mamani Corina</h2>
                    <h2>Carnet: 13920676</h2>
                </th>
            </tr>
        </table>
        <h1>Gestion de Productos</h1></center>
    <a href="MainServlet?op=nuevo" style="padding: 90px">Nuevo Producto</a><br>
        <center><table border="1" cellspacing="1">
            <tr>
                <th>ID</th>
                <th>DESCRIPCION</th>
                <th>CANTIDAD</th>
                <th>PRECIO</th>
                <th>CATEGORIA</th>
                <th colspan="2">ACCIONES</th>
        
            </tr>
            <%
                if(lista != null){
                    for(Producto item : lista){
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion() %></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                <td><%= item.getCategoria() %></td>
                <td><a href="MainServlet?op=editar&id=<%= item.getId()%>">Editar</a></td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%= item.getId()%>" onclick="return(confirm('Esta seguro de eliminar??'))">Eliminar</a>
                </td>
            </tr>
            <%
                    }
                }
            %>
        </table></center>
    </body>
</html>
