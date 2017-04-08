/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Home
 */
import java.util.ArrayList;
public class Menu {
    private ArrayList<ItemMenu> categories = new ArrayList<ItemMenu>();
    public Menu(){
        this.categories.add(new ItemMenu("index.jsp","home","home"));
        this.categories.add(new ItemMenu("","Nueva Temporada","Collection"));
        this.categories.add(new ItemMenu("","Coleccion Historica","Collection"));
        this.categories.add(new ItemMenu("us.jsp","All World shirts","All World shirts"));
        this.categories.add(new ItemMenu("contact.jsp","Contactanos","Contactanos"));    
       
        this.categories.add(new ItemMenu("collection.jsp?id_collection=0","Coleccion de invierno","Collection"));
        this.categories.add(new ItemMenu("","Coleccion de Otoño ","Collection"));
        
    }

    public ArrayList<ItemMenu> getCategories() {
        return categories;
    }

    public void setCategories(ArrayList<ItemMenu> categories) {
        this.categories = categories;
    }
    
           
}
