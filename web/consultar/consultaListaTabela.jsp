<%-- 
    Document   : Avaliação
    Created on : 28/11/2024
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
        <link href="tabela.css" rel="stylesheet" type="text/css"/>
        <title>Consulta (Tabela)</title>
    </head>
    <body>
        <h3>Tabela de Avaliações</h3>
        <%              
        //Consulta
        AvaliacaoDAO avalDAO = new AvaliacaoDAO();
         
        List<Avaliacao> lista = new ArrayList<>();
        lista = avalDAO.consAvalLista();

        int n_reg = 0 ;
        out.println("<br> <b>Avaliacao de Monitoria - Registros</b>");
            
        %>      
        
        <!<!-- Cabeçalho -->
        <table border="1">
                <tr>
                    <th>#</th>
                    <th>Id.</th>
                    <th>Matricula</th>
                    <th>Nome</th>
                    <th>Nota1</th>
                    <th>Nota2</th>
                    <th>Nota3</th>
                    <th>Nota4</th>
                    <th>Nota5</th>
                    <th>Data</th>
                    <th>Data Atualização</th>
                </tr>                     
        <%
        for( int i = 0; i <= lista.size()-1; i++){            
        %>            
            <tr>
                    <td><%=i+1%></td>
                    <td><%=lista.get(i).getId()%></td>
                    <td><%=lista.get(i).getMatricula()%></td>
                    <td><%=lista.get(i).getNome()%></td>
                    <td><%=lista.get(i).getApresentou()%></td>
                    <td><%=lista.get(i).getIdentificou()%></td>
                    <td><%=lista.get(i).getSondagem()%></td>
                    <td><%=lista.get(i).getComunicacao()%></td>
                    <td><%=lista.get(i).getResolveu()%></td>
                    <td><%=lista.get(i).getDt_aval()%></td>
                    <td><%=lista.get(i).getDt_update()%></td>
            </tr>
        <%
            n_reg++;                           
        }
        %>
        </table>
        <%
            out.println("<br><br> <b>Registros: </b>" + n_reg + "<br>");       
        %>

    </body>
</html>
