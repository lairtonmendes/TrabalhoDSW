/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.estacio.jdbc;

import br.estacio.domain.Modalidade;
import br.estacio.domain.Pais;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class ModalidadeDAO {
    private Connection connection;

    public ModalidadeDAO() throws ClassNotFoundException {
        this.connection = new ConnectionFactory().getConnection();
    }

    public void adiciona(Modalidade m) {
        String sql = "INSERT INTO modalidades (nome, medalha_ouro, medalha_prata, medalha_bronze) values(?,?,?,?);";

        try {
            PreparedStatement stmt = connection.prepareStatement(sql);

            stmt.setString(1, m.getNome());
            stmt.setInt(2, m.getOuro());
            stmt.setInt(3, m.getPrata());
            stmt.setInt(4, m.getBronze());
            stmt.execute();
            stmt.close();

        } catch (SQLException ex) {
            Logger.getLogger(PaisDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // retorna uma lista
    public List<Modalidade> getLista() {
        List<Modalidade> modalidades = new ArrayList<Modalidade>();

        PreparedStatement stmt;
        try {
            stmt = this.connection.prepareStatement("SELECT * FROM modalidades");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String nome = rs.getString("nome");
                int ouro = rs.getInt("medalha_ouro");
                int prata = rs.getInt("medalha_prata");
                int bronze = rs.getInt("medalha_bronze");

                Modalidade m = new Modalidade(id, nome, ouro, prata, bronze);

                modalidades.add(m);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PaisDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return modalidades;
    }

    //Alterar
    public void altera(Modalidade m) {
        String sql = "UPDATE modalidades set nome=?, medalha_ouro=?, medalha_prata=?, medalha_bronze=? where id=?";
        PreparedStatement stmt;

        try {
            stmt = this.connection.prepareStatement(sql);
            stmt.setString(1, m.getNome());
            stmt.setInt(2, m.getOuro());
            stmt.setInt(3, m.getPrata());
            stmt.setInt(4, m.getBronze());
            stmt.setInt(5, m.getId());
            
            stmt.execute();
            stmt.close();
        } catch (SQLException ex) {
            Logger.getLogger(PaisDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    //remove
    public void remove(Modalidade m) {
        try {
            PreparedStatement stmt = connection
                    .prepareStatement("delete from modalidades where id=?");
            stmt.setInt(1, m.getId());
            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public void remove(int i) {
        try {
            PreparedStatement stmt = connection
                    .prepareStatement("delete from modalidades where id=?");
            stmt.setInt(1, i);
            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
