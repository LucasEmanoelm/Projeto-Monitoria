<%-- 
    Document   : Avaliação
    Created on : 27/11/2024
    Author     : Realizado por Grupo FFMIL -
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
        <title>Avaliacao - Alteração </title>
       <!-- <link href="../style/styles.css" rel="stylesheet" type="text/css"/> -->
    </head>
    <body>
        <h3>Alterar Avaliação</h3>
        <%
        //Entrada/Receber
        int id = Integer.parseInt( request.getParameter("id") );

        // Instância e atrib de valor
        Avaliacao aval = new Avaliacao();
        aval.setId(id);
       
        //Insert
        AvaliacaoDAO avalDAO = new AvaliacaoDAO();
        if(avalDAO.consAvalId(aval) != null){
            //out.println("Avaliação encontrado!")
        %>  
            
        <form method="post" action="updateAval.jsp">
            ID: <input type="text" name="id" value="<%=aval.getId()%>" readonly="true"> <p>            
            Matricula: <input type="text" name="matricula" value="<%=aval.getMatricula()%>" minlength="3" maxlength="20"> <p>            
            Nome: <input type="text" name="nome" value="<%=aval.getNome()%>" minlength="3" maxlength="20"> <p>                     
            1. Apresentou-se corretamente? (0 a 10) 
            <input type="text" name="r1" value="<%=aval.getApresentou()%>"><p>                    
            2. Identificou corretamente o cliente? (0 a 10) 
            <input type="text" name="r2" value="<%=aval.getIdentificou()%>"><p>                                 
            3. Fez a sondagem corretamente? (0 a 10) 
            <input type="text" name="r3" value="<%=aval.getSondagem()%>"><p>                              
            4. Manteve o controle da comunicação? (0 a 10) 
            <input type="text" name="r4" value="<%=aval.getComunicacao()%>"><p>
            5. Resolveu o problema do cliente? (0 a 10) 
            <input type="text" name="r5" value="<%=aval.getResolveu()%>"><p> 
            Escolha a data: <input type="date" name="dt_update" value="<%=aval.getDt_update()%>">                
            <input type="submit" value="Realizar Alteração">
        </form>        
        <%       
        }else{
           out.println("Avaliação não encontrado!!!");
        }
        %>
    </body>
</html>

