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
        <h1>Avaliação - Monitoring Solutions</h1>
        <%
        //Entrada/Receber
        String matricula = request.getParameter("matricula");
        String nome = request.getParameter("nome");
        int r1 = Integer.parseInt( request.getParameter("r1") );
        int r2 = Integer.parseInt( request.getParameter("r2") );
        int r3 = Integer.parseInt( request.getParameter("r3") );
        int r4 = Integer.parseInt( request.getParameter("r4") ); 
        int r5 = Integer.parseInt( request.getParameter("r5") ); 

        // Instância e atrib de valor
        Avaliacao aval = new Avaliacao();
        aval.setMatricula(matricula);
        aval.setNome(nome);
        aval.setApresentou(r1);
        aval.setIdentificou(r2);
        aval.setSondagem(r3);        
        aval.setComunicacao(r4);
        aval.setResolveu(r5);
        aval.setDt_aval(new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(new Date()));
        
        //Insert
        AvaliacaoDAO avalDAO = new AvaliacaoDAO();
        if(avalDAO.insAval(aval)){
            out.println("Avaliação inserida com sucesso!");
        }else{
           out.println("Avaliação não inserido, Erro!!!");
        }
        %>
    </body>
</html>

