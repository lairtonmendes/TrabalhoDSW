/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.estacio.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class UsuarioDAO {
  private Connection connection;

    public UsuarioDAO() throws ClassNotFoundException {
        this.connection = new ConnectionFactory().getConnection();
    }
    
    public boolean login(String usuario, String senha){
    String sql = "select * from usuarios where login = ? and senha = ?;";
      
    try {
      PreparedStatement stmt = connection.prepareStatement(sql);
      stmt.setString(1, usuario);
      stmt.setString(2, senha);
      
      ResultSet res = stmt.executeQuery();
      
      if(res.next()){
	return true;
      }
      
    } catch (SQLException ex) {
      Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
    }
      
      
      return false;
    }

}
