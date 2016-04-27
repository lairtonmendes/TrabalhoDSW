package br.estacio.jdbc;

import java.sql.Connection;
import br.estacio.domain.Pais;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;



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
        }finally{
            
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
        } finally{
            
        }

        return paises;
    }
    
    public List<Pais> quadroDeMedalha() {
        List<Pais> paises = new ArrayList<Pais>();

        PreparedStatement stmt;
        try {
            stmt = this.connection.prepareStatement("select c.id, c.nome, COALESCE(mo.count,0) as ouro, COALESCE(mp.count,0) as prata, COALESCE(mb.count,0) as bronze from country c \n" +
"	LEFT JOIN (select medalha_ouro, count(medalha_ouro) from modalidades group by medalha_ouro) mo ON mo.medalha_ouro = c.id \n" +
"	LEFT JOIN (select medalha_prata, count(medalha_prata) from modalidades group by medalha_prata) mp ON mp.medalha_prata = c.id \n" +
"	LEFT JOIN (select medalha_bronze, count(medalha_bronze) from modalidades group by medalha_bronze) mb ON mb.medalha_bronze = c.id\n" +
"		order by ouro desc, prata desc, bronze desc");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String nome = rs.getString("nome");
                int qtdOuro = rs.getInt("ouro");
                int qtdPrata = rs.getInt("prata");
                int qtdBronze = rs.getInt("bronze");
                System.out.println(qtdOuro +" aqui");

                Pais p = new Pais(id, nome, qtdOuro, qtdPrata, qtdBronze);

                paises.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(PaisDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            
        }

        return paises;
    }

    //Buscar por id
    public Pais bucaPorId(int chave) {

        Pais p = null;
        PreparedStatement stmt;
        try {
            stmt = this.connection.prepareStatement("SELECT * FROM country WHERE id = ?");
            stmt.setInt(1, chave);
            ResultSet rs = stmt.executeQuery();
            
            while (rs.next()) {
                int id = rs.getInt("id");
                String nome = rs.getString("nome");

                p = new Pais(id, nome);

            }
        } catch (SQLException ex) {
            Logger.getLogger(PaisDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            
        }

        return p;
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
            PreparedStatement stmt;
            
            stmt = connection
                    .prepareStatement("delete from country where id=?");
            stmt.setInt(1, i);
            stmt.execute();
            
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
