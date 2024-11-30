/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.dao;

import model.Avaliacao;
import java.sql.*;
import util.ConectaDB;
import java.util.List;
import java.util.ArrayList;

/**
 *
 * @author alunocmc
 */
public class AvaliacaoDAO {
    // Atrib.
    
    //Método
    public boolean insAval(Avaliacao p_aval) throws ClassNotFoundException{
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
                        //INSERT INTO avaliacao(matricula, nome, apresentou, identificou, sondagem, comunicacao, resolveu, dt_aval) VALUES('55', 'Justos Teste', 5, 5, 4, 2, 2, '2024/10/31');         
            String sql = "INSERT INTO avaliacao(matricula, nome, apresentou, identificou, sondagem, comunicacao, resolveu, dt_aval) VALUES ('" + p_aval.getMatricula()+ "'," +
                                                                                                                                           "'" + p_aval.getNome()+ "'," +
                                                                                                                                               + p_aval.getApresentou()+ ", " +
                                                                                                                                               + p_aval.getIdentificou()+ ", " +
                                                                                                                                               + p_aval.getSondagem()+ ", "
                                                                                                                                               + p_aval.getComunicacao()+ ", "
                                                                                                                                               + p_aval.getResolveu()+ ", '"
                                                                                                                                               + p_aval.getDt_aval()+  "')";
            stmt.executeUpdate(sql); //GO - Executar - Insert / Delete / Update
            return true;
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return false;
        }
    }   
    
    public Avaliacao consAvalId(Avaliacao p_aval) throws ClassNotFoundException{
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
                        //SELECT * FROM pesquisa where pkid = 5;
            String sql = "SELECT * FROM pesquisa where pkid = " + p_aval.getId();
            ResultSet rs = stmt.executeQuery(sql);
                        
            int n_reg = 0;
            while (rs.next()) {                
                p_aval.setId(Integer.parseInt( rs.getString("pkid")));
                p_aval.setMatricula(rs.getString("matricula"));
                p_aval.setNome(rs.getString("nome"));
                p_aval.setApresentou(Integer.parseInt( rs.getString("apresentou") ));
                p_aval.setIdentificou(Integer.parseInt( rs.getString("identificou") ));                
                p_aval.setSondagem(Integer.parseInt( rs.getString("sondagem") ));
                p_aval.setComunicacao(Integer.parseInt( rs.getString("comunicacao") ));
                p_aval.setResolveu(Integer.parseInt( rs.getString("resolveu") ));
                p_aval.setDt_aval( rs.getString("dt_aval"));
                p_aval.setDt_update(rs.getString("dt_update"));
                n_reg++;
            }
            conexao.close();
            
            if (n_reg==0){
                return null;
            }else{
                return p_aval;               
            }
        }catch(SQLException ex){
            System.out.println("Exception: " + ex);
            return null;
        } 
    } 
    
    public List consAvalLista() throws ClassNotFoundException{
        
        List lista = new ArrayList();
        
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
                        //SELECT * FROM avaliacao
            String sql = "SELECT * FROM avaliacao";
            ResultSet rs = stmt.executeQuery(sql);
                        
            int n_reg = 0;
            while (rs.next()) {
                Avaliacao avaliacao = new Avaliacao();
                avaliacao.setId(Integer.parseInt( rs.getString("pkid")));
                avaliacao.setMatricula(rs.getString("matricula"));
                avaliacao.setNome(rs.getString("nome"));
                avaliacao.setApresentou(Integer.parseInt( rs.getString("apresentou") ));
                avaliacao.setIdentificou(Integer.parseInt( rs.getString("identificou") ));                
                avaliacao.setSondagem(Integer.parseInt( rs.getString("sondagem") ));
                avaliacao.setComunicacao(Integer.parseInt( rs.getString("comunicacao") ));
                avaliacao.setResolveu(Integer.parseInt( rs.getString("resolveu") ));
                avaliacao.setDt_aval( rs.getString("dt_aval"));
                avaliacao.setDt_update(rs.getString("dt_update"));
                lista.add(avaliacao);
                n_reg++;
            }
            conexao.close();
            
            if (n_reg==0){
                return null;
            }else{
                return lista;               
            }
        }catch(SQLException ex){
            System.out.println("Exception: " + ex);
            return null;
        } 
    }  
    
    public boolean exAvalId(Avaliacao p_aval) throws ClassNotFoundException{
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
                        //DELETE FROM avaliacao WHERE pkid=6;
            String sql = "DELETE FROM avaliacao WHERE pkid=" + p_aval.getId();
            stmt.executeUpdate(sql); //GO - Executar - Insert / Delete / Update
            return true;
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return false;
        }
    }  
    
    public boolean altAval(Avaliacao p_aval) throws ClassNotFoundException{
        Connection conexao = null;
        try{
            conexao = ConectaDB.conectar();
            Statement stmt = conexao.createStatement();
                        //UPDATE avaliacao SET nome='Talita', email='talita@umc.br', Q1=3, Q2=3, Q3=3, Q4=3, dt_pesq='2024-11-14' WHERE pkid=3         
            String sql = "UPDATE avaliacao SET matricula='" + p_aval.getMatricula()+ "'," + 
                                                    "nome='" + p_aval.getNome()+ "'," +
                                                    "apresentou=" + p_aval.getApresentou()+ ", " +
                                                    "identificou=" + p_aval.getIdentificou()+ ", " +
                                                    "sondagem=" + p_aval.getSondagem()+ ", " +
                                                    "comunicacao=" + p_aval.getComunicacao()+ ", " +
                                                    "resolveu=" + p_aval.getResolveu()+ ", " +
                                                    "dt_update='" + p_aval.getDt_update()+  "' WHERE pkid=" + p_aval.getId();
            stmt.executeUpdate(sql); //GO - Executar - Insert / Delete / Update
            return true;
        }catch(SQLException ex){
            System.out.println("Erro:" + ex);
            return false;
        }
    }   
     
    
   
}