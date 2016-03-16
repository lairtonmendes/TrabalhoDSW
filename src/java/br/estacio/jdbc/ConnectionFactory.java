/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.estacio.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class ConnectionFactory {

    public Connection getConnection() throws ClassNotFoundException {
        Class.forName("org.postgresql.Driver");
        try {
            return DriverManager.getConnection(
                    "jdbc:postgresql://localhost/TrabalhoDSW", "postgres", "123456");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
