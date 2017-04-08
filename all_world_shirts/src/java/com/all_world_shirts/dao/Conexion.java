/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.all_world_shirts.dao;
import com.all_wolrd_shirts.util.PropertiesUtil;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author Home
 */
public class Conexion {
    private Connection conn;
    private final String driver;
    private final String url;
    private final String user;
    private final String password;
    public Conexion(
    ){
        this.driver = PropertiesUtil.getPropiedad("db.driver");
        this.url = PropertiesUtil.getPropiedad("db.url");
        this.user = PropertiesUtil.getPropiedad("db.user");
        this.password = PropertiesUtil.getPropiedad("db.password");
        
    }
    public Connection getConexion() throws SQLException {
        try{
            Class.forName(this.driver);
            conn = DriverManager.getConnection(this.url,this.user,this.password);
        }catch(ClassNotFoundException ex){
            System.out.println("Error: "  + ex.getMessage());
        }
        return conn;
    }
    public void desconectar() throws SQLException{
        if(conn != null){
            conn.close();
        }
    }
}
