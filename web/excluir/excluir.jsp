<%-- 
    Document   : Avaliação
    Created on : 27/11/2024
    Author     : Realizado por Grupo FFMIL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Avaliacao"%>
<%@page import="model.dao.AvaliacaoDAO"%>

<%@page import="java.util.*"%>
<%@page import="java.text.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Avaliacão - Excluir (ID)</h3>
        <%
        //Entrada/Receber
        int id = Integer.parseInt( request.getParameter("id") );

        // Instância e atrib de valor
        Avaliacao aval = new Avaliacao();
        aval.setId(id);
       
        //Insert
        AvaliacaoDAO avalDAO = new AvaliacaoDAO();
        if(avalDAO.exAvalId(aval) ){
            out.println("Registro excluido com sucesso!");        
        }else{
           out.println("Registro não excluído!!!");
        }
        %>
    </body>
</html>
