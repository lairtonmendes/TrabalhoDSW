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
    
    
    public Pais(int id, String nome){
        this.id = id;
        this.nome = nome;
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
