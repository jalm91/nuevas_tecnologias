/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import com.all_world_shirts.controllers.CollectionJpaController;
import com.all_world_shirtts.entities.Collection;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author Home
 */
public class Collections {
    private Collection collections;
    static EntityManagerFactory emf = Persistence.createEntityManagerFactory("all_world_shirtsPU");
    static CollectionJpaController collectionController = new CollectionJpaController(emf);
    public Collections(){
        this.collections = collectionController.findCollection(1);
    }
    public Collection getCollections() {
        return collections;
    }

    /*public void setCollections(Collection collections) {
        this.collections = collections;
    } */   
}
