package br.estacio.jdbc;

import java.sql.Connection;
import DOMAIN.Pais;
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


public class PaisDAO {

    private Connection connection;

    public PaisDAO() throws ClassNotFoundException {
        this.connection = new ConnectionFactory().getConnection();
    }

    public void adiciona(Pais p) {
        String sql = "INSERT INTO country (nome) values(?);";

        try {
            PreparedStatement stmt = connection.prepareStatement(sql);

            stmt.setString(1, p.getNome());
            stmt.execute();
            stmt.close();

        } catch (SQLException ex) {
            Logger.getLogger(PaisDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    // retorna uma lista
    public List<Pais> getLista() {
        List<Pais> paises = new ArrayList<Pais>();

        PreparedStatement stmt;
        try {
            stmt = this.connection.prepareStatement("SELECT * FROM country");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String nome = rs.getString("nome");

                Pais p = new Pais(id, nome);

                paises.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PaisDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return paises;
    }

    //Alterar
    public void altera(Pais p) {
        String sql = "UPDATE country set nome=? where id=?";
        PreparedStatement stmt;

        try {
            stmt = this.connection.prepareStatement(sql);
            stmt.setString(1, p.getNome());
            stmt.setInt(2, p.getId());
            stmt.execute();
            stmt.close();
        } catch (SQLException ex) {
            Logger.getLogger(PaisDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    //remove
    public void remove(Pais p) {
        try {
            PreparedStatement stmt = connection
                    .prepareStatement("delete from country where id=?");
            stmt.setInt(1, p.getId());
            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public void remove(int i) {
        try {
            PreparedStatement stmt = connection
                    .prepareStatement("delete from country where id=?");
            stmt.setInt(1, i);
            stmt.execute();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
