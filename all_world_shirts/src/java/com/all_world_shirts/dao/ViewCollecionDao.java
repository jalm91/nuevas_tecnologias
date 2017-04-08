/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.all_world_shirts.dao;

/**
 *
 * @author Home
 */
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
public class ViewCollecionDao extends Conexion{
    public ArrayList<com.all_wolrd_shirts.dao.domain.Product>  getProductsByCollection(Integer idCollection)
    {
        
        ArrayList<com.all_wolrd_shirts.dao.domain.Product> Products = new ArrayList<com.all_wolrd_shirts.dao.domain.Product>();
        try{
            String sql = "SELECT `id_product`, `id_collection`, `name_product`, `price`, `img_default` FROM `producto` WHERE `id_collection` = ?";
            PreparedStatement ps = this.getConexion().prepareStatement(sql);
            ps.setInt(1, idCollection);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                Products.add(new com.all_wolrd_shirts.dao.domain.Product (Integer.parseInt(rs.getString(1)),Integer.parseInt(rs.getString(2)),rs.getString(3),Integer.parseInt(rs.getString(4)),rs.getString(5)));
                
            }
            rs.close();
            this.desconectar();
             System.out.println(Products); 
        }
        catch(SQLException e){
        }
        return Products;
    }
    /*
    public ArrayList<com.all_wolrd_shirts.dao.domain.Contact>  getUsers()
    {
        
        ArrayList<com.all_wolrd_shirts.dao.domain.Contact> contacts = new ArrayList<com.all_wolrd_shirts.dao.domain.Contact>();
        try{
            String sql = "SELECT `id`, `first_name`, `last_name`, `telephone` FROM `contact`";
            PreparedStatement ps = this.getConexion().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
                //contacts.add(new Contact(1,'545','545',454));
                contacts.add(new com.all_wolrd_shirts.dao.domain.Contact(Integer.parseInt(rs.getString(1)),rs.getString(2),rs.getString(3),Integer.parseInt(rs.getString(4))));
            }
            rs.close();
            System.out.println(contacts);
            this.desconectar();
            
              
        }
        catch(SQLException e){
        }
        return contacts;
    }*/
    
}
