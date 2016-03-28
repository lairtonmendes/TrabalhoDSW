/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.estacio.jdbc;

import br.estacio.domain.Pais;

/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class Teste {
    public static void main (String []args){
        Pais p = new Pais("EUA");
        PaisDAO dao = new PaisDAO();
        
        dao.adiciona(p);
       System.out.println(dao.getLista());
    }

}
