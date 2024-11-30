/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author alunocmc
 */
public class Avaliacao {
    //Atrib
    private int id;
    private String matricula;
    private String nome;
    private int apresentou;
    private int identificou;
    private int sondagem;
    private int comunicacao;
    private int resolveu;
    private String dt_aval;
    private String dt_update;
    
    // Setts

    public void setId(int id) {
        this.id = id;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setApresentou(int apresentou) {
        this.apresentou = apresentou;
    }

    public void setIdentificou(int identificou) {
        this.identificou = identificou;
    }

    public void setSondagem(int sondagem) {
        this.sondagem = sondagem;
    }

    public void setComunicacao(int comunicacao) {
        this.comunicacao = comunicacao;
    }

    public void setResolveu(int resolveu) {
        this.resolveu = resolveu;
    }

    public void setDt_aval(String dt_aval) {
        this.dt_aval = dt_aval;
    }

    public void setDt_update(String dt_update) {
        this.dt_update = dt_update;
    }
    // Getts
    public int getId() {
        return id;
    }

    public String getMatricula() {
        return matricula;
    }

    public String getNome() {
        return nome;
    }

    public double getApresentou() {
        return apresentou;
    }

    public double getIdentificou() {
        return identificou;
    }

    public double getSondagem() {
        return sondagem;
    }

    public double getComunicacao() {
        return comunicacao;
    }

    public double getResolveu() {
        return resolveu;
    }

    public String getDt_aval() {
        return dt_aval;
    }

    public String getDt_update() {
        return dt_update;
    }
    
}
    
    
    
    
