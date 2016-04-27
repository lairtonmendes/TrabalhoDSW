package br.estacio.domain;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author lairton
 */
public class Pais {
    private int id;
    private String nome;
    private int qtdOuro;
    private int qtdPrata;
    private int qtdBronze;
    
    
    
    public Pais(int id, String nome){
        this.id = id;
        this.nome = nome;
    }
    public Pais(int id, String nome,int qtdOuro, int qtdPrata, int qtdBronze ){
        this.id = id;
        this.nome = nome;
        this.qtdOuro = qtdOuro;
        this.qtdPrata = qtdPrata;
        this.qtdBronze = qtdBronze;
    }

    public int getQtdOuro() {
        return qtdOuro;
    }

    public void setQtdOuro(int qtdOuro) {
        this.qtdOuro = qtdOuro;
    }

    public int getQtdPrata() {
        return qtdPrata;
    }

    public void setQtdPrata(int qtdPrata) {
        this.qtdPrata = qtdPrata;
    }

    public int getQtdBronze() {
        return qtdBronze;
    }

    public void setQtdBronze(int qtdBronze) {
        this.qtdBronze = qtdBronze;
    }
    public Pais(String nome){
        this.nome = nome;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    public String toString(){
        return "Id: "+this.id+" Nome: "+this.nome;
    }
    
    
    
}
