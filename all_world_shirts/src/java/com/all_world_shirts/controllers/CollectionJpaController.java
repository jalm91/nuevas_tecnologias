/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.all_world_shirts.controllers;

import com.all_world_shirts.controllers.exceptions.NonexistentEntityException;
import com.all_world_shirtts.entities.Collection;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

/**
 *
 * @author Home
 */
public class CollectionJpaController implements Serializable {

    public CollectionJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Collection collection) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(collection);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Collection collection) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            collection = em.merge(collection);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Integer id = collection.getIdCollection();
                if (findCollection(id) == null) {
                    throw new NonexistentEntityException("The collection with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Integer id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Collection collection;
            try {
                collection = em.getReference(Collection.class, id);
                collection.getIdCollection();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The collection with id " + id + " no longer exists.", enfe);
            }
            em.remove(collection);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<Collection> findCollectionEntities() {
        return findCollectionEntities(true, -1, -1);
    }

    public List<Collection> findCollectionEntities(int maxResults, int firstResult) {
        return findCollectionEntities(false, maxResults, firstResult);
    }

    private List<Collection> findCollectionEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Collection.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public Collection findCollection(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Collection.class, id);
        } finally {
            em.close();
        }
    }

    public int getCollectionCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Collection> rt = cq.from(Collection.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
