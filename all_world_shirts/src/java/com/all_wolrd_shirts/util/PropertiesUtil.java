/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.all_wolrd_shirts.util;
import java.util.ResourceBundle;
/**
 *
 * @author Home
 */
public class PropertiesUtil {
    public static String getPropiedad(String clave){
        ResourceBundle rb = ResourceBundle.getBundle("com.all_world_shirts.dao.conf-db-properties");
              //Devolvemos cada parametro
              return rb.getString(clave);
    }
}
