<%-- 
    Document   : consultaUsuario
    Created on : 16 de dez de 2020, 09:51:21
    Author     : entra21
--%>

<%@page import="java.sql.Date"%>

<%@page import="Modelos.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style/estilos.css">
        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 70%;
            }

            td, th {
                border: 1px solid #B0E0E6;
                text-align: center;
                padding: 7px;
            }

            tr:nth-child(even) {
                background-color: #B0E0E6;
            }
        </style>
    </head>
    <body>
        <header>
            <script src="scripts/cabecalho.js" ></script>
        </header>
         <section>
            <nav>
        <script src="scripts/menu.js" > </script>
         </nav>
             <article>
        <h1>Consulta cliente</h1>
         <hr />
       <%
           Usuario usuario = new Usuario();
           List<Usuario> usuarios = usuario.consultar();
           
       %>
        <table>
        <head>
        <th>Cpf</th>
        <th>Nome</th>
        <th>Número do cartão</th>
        <th>E-mail</th>
        <th>Telefone</th>
        
        <th>Excluir</th>
        <th>Editar</th>
        
         </head> 
         
             
       
             <% for(Usuario u: usuarios) {%>
             
                 <td><% out.write(u.getCpf());%></td>
                 <td><% out.write(u.getNome());%></td>
                <td><% out.write(String.valueOf(u.getDatanascimento()));%></td>
                 <td><% out.write(u.getEmail());%></td>
                 <td><% out.write(u.getFone());%></td>
                 
                 
              <td><%out.write("<a href=excluirusuario.jsp?cpfusuario="+u.getCpf()+">Excluir</a>");%></td>   
              <td><%out.write("<a href=editarusuario.jsp?cpfusuario="+u.getCpf()+">Editar</a>");%></td>   
             
             <%}%>
             
         
    </table>
             <footer>
            <script src="scripts/rodape.js"></script>
        </footer>   
    </body>
</html>
