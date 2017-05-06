/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.all_world_shirtts.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Home
 */
@Entity
@Table(name = "collection")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Collection.findAll", query = "SELECT c FROM Collection c")
    , @NamedQuery(name = "Collection.findByIdCollection", query = "SELECT c FROM Collection c WHERE c.idCollection = :idCollection")
    , @NamedQuery(name = "Collection.findByCollectionName", query = "SELECT c FROM Collection c WHERE c.collectionName = :collectionName")
    , @NamedQuery(name = "Collection.findByEnabled", query = "SELECT c FROM Collection c WHERE c.enabled = :enabled")
    , @NamedQuery(name = "Collection.findByDescription", query = "SELECT c FROM Collection c WHERE c.description = :description")})
public class Collection implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_collection")
    private Integer idCollection;
    @Column(name = "collection_name")
    private String collectionName;
    @Basic(optional = false)
    @Column(name = "enabled")
    private boolean enabled;
    @Basic(optional = false)
    @Column(name = "description")
    private String description;

    public Collection() {
    }

    public Collection(Integer idCollection) {
        this.idCollection = idCollection;
    }

    public Collection(Integer idCollection, boolean enabled, String description) {
        this.idCollection = idCollection;
        this.enabled = enabled;
        this.description = description;
    }

    public Integer getIdCollection() {
        return idCollection;
    }

    public void setIdCollection(Integer idCollection) {
        this.idCollection = idCollection;
    }

    public String getCollectionName() {
        return collectionName;
    }

    public void setCollectionName(String collectionName) {
        this.collectionName = collectionName;
    }

    public boolean getEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idCollection != null ? idCollection.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Collection)) {
            return false;
        }
        Collection other = (Collection) object;
        if ((this.idCollection == null && other.idCollection != null) || (this.idCollection != null && !this.idCollection.equals(other.idCollection))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.all_world_shirtts.entities.Collection[ idCollection=" + idCollection + " ]";
    }
    
}
