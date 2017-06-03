/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.all_world_shirts.dao;

import com.all_wolrd_shirts.dao.domain.Product;
import java.util.ArrayList;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Home
 */
public class ViewCollecionDaoTest {
    
    public ViewCollecionDaoTest() {
    }

    /**
     * Test of getProductsByCollection method, of class ViewCollecionDao.
     */
    @Test
    public void testGetProductsByCollection() {
        System.out.println("getProductsByCollection");
        ViewCollecionDao instance = new ViewCollecionDao();
        ArrayList<Product> expResult = null;
        ArrayList<Product> result = instance.getProductsByCollection();
        //assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
