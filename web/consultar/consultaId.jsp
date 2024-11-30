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
        <h3>Consultar Avaliacao - (Identificação)</h3>
        <%
        //Entrada/Receber
        int id = Integer.parseInt( request.getParameter("id") );

        // Instância e atrib de valor
        Avaliacao aval = new Avaliacao();
        aval.setId(id);
       
        //Insert
        AvaliacaoDAO avalDAO = new AvaliacaoDAO();
        if(avalDAO.consAvalId(aval) != null){
            //out.println("Registro encontrado!");
            out.println("<b>Identificação: </b>" + aval.getId() + "<br>");
            out.println("<b>Matrícula: </b>" + aval.getMatricula()+ "<br>");
            out.println("<b>Nome: </b>" + aval.getNome()+ "<br>");  
            out.println("<b>Resp. 1: </b>" + aval.getApresentou()+ "<br>");            
            out.println("<b>Resp. 2: </b>" + aval.getIdentificou()+ "<br>");            
            out.println("<b>Resp. 3: </b>" + aval.getSondagem()+ "<br>");            
            out.println("<b>Resp. 4: </b>" + aval.getComunicacao()+ "<br>");
            out.println("<b>Resp. 5: </b>" + aval.getResolveu()+ "<br>");             
            out.println("<b>Data: </b>" + aval.getDt_aval()+ "<br>");     
            out.println("<b>Data Atualização: </b>" + aval.getDt_update()+ "<br>");   
        }else{
           out.println("Avaliação não encontrada!!!");
        }
        %>
    </body>
</html>
