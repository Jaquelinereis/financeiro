<%-- 
    Document   : excluirUsuario
    Created on : 16 de dez de 2020, 10:40:20
    Author     : entra21
--%>

<%@page import="Modelos.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         
        <hr/>
         <%
             String idusuario = request.getParameter("idusuario");

             Usuario c = new Usuario();
             if (idusuario != null) {
                 c = c.consultar(Integer.parseInt(idusuario));

                 if(c.excluir()) {
                     out.write("Usuário excluído com sucesso");
                 } else {
                     out.write("Erro ao excluir usuario");
                 }

             }

         %>
    </body>
</html>
