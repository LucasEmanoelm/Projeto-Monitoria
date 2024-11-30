<%-- 
    Document   : Avaliação
    Created on : 27/11/2024
    Author     : Realizado por Grupo FFMIL -
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Pesquisa"%>
<%@page import="model.dao.PesquisaDAO"%>

<%@page import="java.util.*"%>
<%@page import="java.text.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
    </head>
    <body>
        <h1>Pesquisa</h1>
        <%
        //Entrada/Receber
        int id = Integer.parseInt( request.getParameter("id") );
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        int r1 = Integer.parseInt( request.getParameter("r1") );
        int r2 = Integer.parseInt( request.getParameter("r2") );
        int r3 = Integer.parseInt( request.getParameter("r3") );
        int r4 = Integer.parseInt( request.getParameter("r4") ); 
        String dt_atual = request.getParameter("dt_atual");  
        String dt_update = request.getParameter("dt_update");

        // Instância e atrib de valor
        Pesquisa pesq = new Pesquisa();
        pesq.setId(id);
        pesq.setNome(nome);
        pesq.setEmail(email);
        pesq.setQ1(r1);
        pesq.setQ2(r2);
        pesq.setQ3(r3);        
        pesq.setQ4(r4);
        pesq.setDt_pesq(dt_atual); 
        pesq.setDt_update(dt_update); 
        
        //Insert
        PesquisaDAO pesqDAO = new PesquisaDAO();
        if(pesqDAO.altPesq(pesq)){
            out.println("Registro Alterado com sucesso!");
        }else{
           out.println("Erro! Registro não Alterado!!!");
        }
        %>
    </body>
</html>
